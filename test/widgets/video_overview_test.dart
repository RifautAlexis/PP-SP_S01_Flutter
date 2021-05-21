import 'dart:collection';

import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:network_image_mock/network_image_mock.dart';
import 'package:pp_sp_s01_flutter/widgets/video_overview/video_overview.dart';
import 'package:pp_sp_s01_flutter/widgets/video_overview/video_overview_controller.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();

  final id = VideoId('dQw4w9WgXcQ');
  const title = 'Title 01';
  const author = 'Author 01';
  final channelId = ChannelId('UCuAXFkgsw1L7xaCfnd5JJOw');
  final uploadDate = DateTime.now();
  final publishDate = DateTime.now();
  const description = 'Description 01';
  const duration = Duration();
  const engagement = Engagement(11, 5, 1);
  final keywords = UnmodifiableListView<String>(['keyword01', 'keyword02']);
  const thumbnails = ThumbnailSet('dQw4w9WgXcQ');

  final subTitle =
      '$author  -  ${engagement.viewCount.toString()} views - ${DateFormat('dd-MM-yyyy').format(uploadDate).toString()}';

  late Video video;

  setUp(() {
    video = Video(id, title, author, channelId, uploadDate, publishDate,
        description, duration, thumbnails, keywords, engagement, false);
  });

  testWidgets("Should display video's informations",
      (WidgetTester tester) async {
    Get.put(VideoOverviewController());

    await mockNetworkImagesFor(() async => await tester.pumpWidget(
          GetMaterialApp(home: VideoOverviewWidget(video)),
        ));

    final expectedTitle = find.text(title);
    final expectedSubtitle = find.text(subTitle);

    expect(expectedTitle, findsOneWidget);
    expect(expectedSubtitle, findsOneWidget);
  });
}
