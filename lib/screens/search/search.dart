import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:pp_sp_s01_flutter/screens/search/search_controller.dart';
import 'package:pp_sp_s01_flutter/widgets/backbone/backbone.dart';
import 'package:pp_sp_s01_flutter/widgets/custom_appbar/customAppbar.dart';
import 'package:pp_sp_s01_flutter/widgets/search_appbar/search_appbar.dart';
import 'package:pp_sp_s01_flutter/widgets/search_appbar/search_appbar_controller.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';
import 'package:intl/intl.dart';

class SearchScreen extends StatelessWidget {
  final searchController = Get.put(SearchController());
  final searchAppbarController = Get.put(SearchAppbarController());

  SearchScreen() : super();

  @override
  Widget build(BuildContext context) {
    return BackboneWidget(
      appbar: _buildAppbar(),
      body: Obx(
        () => ListView.builder(
          itemCount: searchAppbarController.searchResults.value.length,
          itemBuilder: (context, index) => _buildSearchResult(
              searchAppbarController.searchResults.value[index]),
        ),
      ),
    );
  }

  Widget _buildSearchResult(Video video) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Image.network(
                video.thumbnails.lowResUrl,
                width: double.infinity,
                fit: BoxFit.fitWidth,
              ),
            ),
          ],
        ),
        Text(video.title),
        Row(children: [
          Text(video.author),
          Text(" - "),
          Text("${video.engagement.viewCount.toString()} views"),
          Text(" - "),
          Text(DateFormat('dd-MM-yyyy').format(video.uploadDate!).toString()),
        ],)
      ],
    );
  }

  CustomAppBarWidget _buildAppbar() {
    return CustomAppBarWidget(
      centralItem: SearchAppbarWidget(),
      actions: [
        IconButton(
          iconSize: 20.0,
          splashRadius: 20.0,
          icon: const Icon(Icons.settings),
          onPressed: () => debugPrint("I'm pressed"),
        )
      ],
    );
  }
}
