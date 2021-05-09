import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:pp_sp_s01_flutter/widgets/backbone/backbone_controller.dart';
import 'package:pp_sp_s01_flutter/widgets/custom_appbar/customAppbar.dart';

class BackboneWidget extends GetView<BackboneController> {
  final Widget body;
  final CustomAppBarWidget? appbar;

  const BackboneWidget({required this.body, this.appbar}) : super();

  @override
  Widget build(BuildContext context) {

    // SystemChrome.setSystemUIOverlayStyle(
    //   SystemUiOverlayStyle(
    //     statusBarColor: Colors.transparent,
    //   ),
    // );

    final PreferredSize? appbar = this.appbar != null
        ? PreferredSize(
            preferredSize: const Size.fromHeight(40.0),
            child: this.appbar!,
          )
        : null;

    return SafeArea(
      child: Scaffold(
        appBar: appbar,
        body: body,
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            currentIndex: controller.currentScreenIndex.value,
            onTap: (int index) => controller.setScreenIndex(index),
            backgroundColor: Colors.greenAccent,
            items: [
              const BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "Search",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
