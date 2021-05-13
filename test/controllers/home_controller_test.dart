import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:pp_sp_s01_flutter/mocks/music_overview_mock.dart';
import 'package:pp_sp_s01_flutter/models/music_overview.dart';
import 'package:pp_sp_s01_flutter/screens/home/home_controller.dart';

void main() {
  HomeController homeController = Get.put<HomeController>(HomeController());

  setUp(() {
    homeController = Get.put<HomeController>(HomeController());
  });

  group('init value', () {
    test('overviewsMusic should be equal to musicOverviewsMock on init',
        () {
      homeController.onInit();
      expect(homeController.musicOverviews.value, musicOverviewsMock);
    });
  });
}
