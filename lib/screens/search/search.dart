import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:pp_sp_s01_flutter/widgets/backbone/backbone.dart';
import 'package:pp_sp_s01_flutter/widgets/custom_appbar/customAppbar.dart';
import 'package:pp_sp_s01_flutter/widgets/search_appbar/search_appbar.dart';
import 'package:pp_sp_s01_flutter/widgets/search_appbar/search_appbar_controller.dart';
import 'package:pp_sp_s01_flutter/widgets/video_overview/video_overview.dart';

class SearchScreen extends StatelessWidget {
  final searchAppbarController = Get.put(SearchAppbarController());

  SearchScreen() : super();

  @override
  Widget build(BuildContext context) {
    return BackboneWidget(
      appbar: _buildAppbar(),
      body: Obx(
        () => ListView.builder(
          itemCount: searchAppbarController.searchResults.value.length,
          itemBuilder: (context, index) => VideoOverviewWidget(
              searchAppbarController.searchResults.value[index]),
        ),
      ),
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
