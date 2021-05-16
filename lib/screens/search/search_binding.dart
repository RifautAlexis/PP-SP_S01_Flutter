import 'package:get/get.dart';
import 'package:pp_sp_s01_flutter/widgets/backbone/backbone_controller.dart';
import 'package:pp_sp_s01_flutter/widgets/search_appbar/search_appbar_controller.dart';
import 'package:pp_sp_s01_flutter/widgets/video_overview/video_overview_controller.dart';

class SearchBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BackboneController>(() => BackboneController());
    Get.lazyPut<SearchAppbarController>(() => SearchAppbarController());
    Get.lazyPut<VideoOverviewController>(() => VideoOverviewController());
  }
}
