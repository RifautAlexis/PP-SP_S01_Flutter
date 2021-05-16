import 'package:get/get.dart';
import 'package:pp_sp_s01_flutter/widgets/backbone/backbone_controller.dart';
import 'home_controller.dart';

class HomeBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<BackboneController>(() => BackboneController());
  }
}
