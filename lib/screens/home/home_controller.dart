import 'package:get/get.dart';
import 'package:pp_sp_s01_flutter/mocks/overview_music_mock.dart';
import 'package:pp_sp_s01_flutter/models/overview_music.dart';

class HomeController extends GetxController {
  
  var overviewsMusic = <OverviewMusic>[].obs;

  @override
  void onInit() {
    getContentForOverview();
    super.onInit();
  }

  getContentForOverview() {
    overviewsMusic.assignAll(overviewsMusicMock);
  }

}