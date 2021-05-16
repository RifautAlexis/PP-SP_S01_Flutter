import 'package:get/get.dart';

class BackboneController extends GetxController {
  var currentScreenIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();

    ever(currentScreenIndex, (_) => navigateTo());
  }

  setScreenIndex(int newIndex) {
    if (newIndex >= 0 && newIndex <= 1) {
      currentScreenIndex.value = newIndex;
    }
  }

  navigateTo() {
    if (currentScreenIndex.value == 0) {
      Get.toNamed("/");
    } else if (currentScreenIndex.value == 1) {
      Get.toNamed("/search");
    }
  }
}
