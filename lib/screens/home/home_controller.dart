import 'package:get/get.dart';
import 'package:pp_sp_s01_flutter/mocks/music_overview_mock.dart';
import 'package:pp_sp_s01_flutter/models/music_overview.dart';

class HomeController extends GetxController {
  var musicOverviews = <MusicOverview>[].obs;

  @override
  void onInit() {
    getContentForOverview();
    super.onInit();
  }

  getContentForOverview() {
    musicOverviews.assignAll(musicOverviewsMock);
  }
}
