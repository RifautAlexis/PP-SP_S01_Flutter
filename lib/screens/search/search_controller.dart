import 'package:get/get.dart';

class SearchController extends GetxController {

  @override
  void onInit() {
    super.onInit();
  }

  formatDuration(Duration duration) {
    return duration.toString().split('.').first.padLeft(8, "0");
  }
}