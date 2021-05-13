import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

class VideoOverviewController extends GetxController {

  @override
  void onInit() {
    super.onInit();
  }

  formatDuration(Duration duration) {
    return duration.toString().split('.').first.padLeft(8, "0");
  }
}