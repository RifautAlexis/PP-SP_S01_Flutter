import 'package:flutter_test/flutter_test.dart';
import 'package:get/instance_manager.dart';
import 'package:pp_sp_s01_flutter/widgets/video_overview/video_overview_controller.dart';

void main() {
  late VideoOverviewController videoOverviewController;

  setUp(() {
    videoOverviewController =
        Get.put<VideoOverviewController>(VideoOverviewController());
  });

  group('formatDuration', () {
    test('should return a String in hh:mm:ss', () {
      const duration = Duration(
          hours: 1,
          minutes: 34,
          seconds: 25,
          milliseconds: 44,
          microseconds: 12);
      final durationFormated = videoOverviewController.formatDuration(duration);

      expect(durationFormated, equals('01:34:25'));
    });

    test('should "00:00:00" when param is an empty Duration', () {
      const duration = Duration();

      final durationFormated = videoOverviewController.formatDuration(duration);

      expect(durationFormated, equals('00:00:00'));
    });

    test('should return "NaN" when param is a null', () {
      final durationFormated = videoOverviewController.formatDuration(null);

      expect(durationFormated, equals('NaN'));
    });
  });
}
