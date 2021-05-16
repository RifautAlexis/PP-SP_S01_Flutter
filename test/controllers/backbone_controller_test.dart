import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:pp_sp_s01_flutter/widgets/backbone/backbone_controller.dart';

void main() {
  late BackboneController backboneController;

  setUp(() {
    backboneController = Get.put<BackboneController>(BackboneController());
  });

  setUpAll(() {
    Get.testMode = true;
  });

  // tearDown(() {
  //   Get.delete<BackboneController>();
  // });

  group('setScreenIndex', () {
    test('should assign the param to the property "currentScreenIndex"', () {
      int newIndex = 1;

      backboneController.setScreenIndex(newIndex);

      expect(backboneController.currentScreenIndex.value, equals(5));
    });

    test(
        'should not assign the param (< 0) to the property "currentScreenIndex"',
        () {
      int newIndex = -1;

      backboneController.setScreenIndex(newIndex);

      expect(
          backboneController.currentScreenIndex.value, isNot(equals(newIndex)));
    });

    test(
        'should not assign the param (> 1) to the property "currentScreenIndex"',
        () {
      int newIndex = 2;

      backboneController.setScreenIndex(newIndex);

      expect(
          backboneController.currentScreenIndex.value, isNot(equals(newIndex)));
    });
  });
}
