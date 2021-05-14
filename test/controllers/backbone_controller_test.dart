import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:pp_sp_s01_flutter/widgets/backbone/backbone_controller.dart';

void main() {
  late BackboneController backboneController;

  setUp(() {
    backboneController = Get.put<BackboneController>(BackboneController());
  });

  // tearDown(() {
  //   Get.delete<BackboneController>();
  // });

  group('setScreenIndex', () {
    test('should assign the param to the property "currentScreenIndex"', () {
      int newIndex = 2;

      backboneController.setScreenIndex(newIndex);

      expect(backboneController.currentScreenIndex.value, newIndex);
    });
  });

  // group('navigateTo', () {
  //   test('should navigate to route "/"', () async {
  //     Get.testMode = true;
  //     int newIndex = 0;

  //     backboneController.setScreenIndex(newIndex);
  //     await Future.delayed(Duration.zero);
  //     expect(Get.currentRoute, "/");
  //   });

  //   test('should navigate to route "/search"', () async {
  //     Get.testMode = true;
  //     int newIndex = 1;

  //     backboneController.setScreenIndex(newIndex);
  //     await Future.delayed(Duration.zero);

  //     expect(Get.currentRoute, "/search");
  //   });

  //   test('should not navigate and stay to route "/"', () async {
  //     Get.testMode = true;
  //     int newIndex = 3;

  //     backboneController.setScreenIndex(newIndex);
  //     await Future.delayed(Duration.zero);
  //     expect(Get.currentRoute, "/");
  //   });
  // });
}
