import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:pp_sp_s01_flutter/screens/search/search_controller.dart';
import 'package:pp_sp_s01_flutter/theme/theme.dart';
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            Image.network(
              video.thumbnails.highResUrl,
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 10.0, 10.0),
              padding: EdgeInsets.symmetric(vertical: 1.0, horizontal: 1.0),
              color: Colors.black,
              child: Text(
                searchController.formatDuration(video.duration!),
                style: const TextStyle(
                  fontSize: 10.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                video.title,
                style: Get.textTheme.titleSearchedElement,
              ),
              SizedBox(height: 5.0),
              Text(
                "${video.author}  -  ${video.engagement.viewCount.toString()} views - ${DateFormat('dd-MM-yyyy').format(video.uploadDate!).toString()}",
                style: Get.textTheme.subtitleSearchedElement,
              )
            ],
          ),
        ),
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
