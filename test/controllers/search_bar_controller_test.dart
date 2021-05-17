import 'package:flutter_test/flutter_test.dart';
import 'package:get/instance_manager.dart';
import 'package:pp_sp_s01_flutter/widgets/search_appbar/search_appbar_controller.dart';

void main() {
  late SearchAppbarController searchAppbarController;

  setUp(() {
    searchAppbarController =
        Get.put<SearchAppbarController>(SearchAppbarController());
  });

  group('setSearchedValue', () {
    test('should assign the param to the property "searchedValue"', () {
      const param = "I'am a test";
      searchAppbarController.setSearchedValue(param);

      expect(searchAppbarController.searchedValue.value, equals(param));
    });
  });
}
