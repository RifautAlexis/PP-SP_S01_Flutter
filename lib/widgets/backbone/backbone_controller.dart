import 'package:get/get.dart';

class BackboneController extends GetxController {
  var currentScreenIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();

    ever(currentScreenIndex, (_) => navigateTo());
  }

  setScreenIndex(int newIndex) {
    currentScreenIndex.value = newIndex;
  }

  navigateTo() {
    if (currentScreenIndex.value == 0) {
      Get.toNamed("/");
    } else if (currentScreenIndex.value == 1) {
      Get.toNamed("/search");
    }
  }
}
