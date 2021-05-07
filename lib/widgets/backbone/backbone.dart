import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:pp_sp_s01_flutter/widgets/backbone/backbone_controller.dart';

class BackboneWidget extends GetView<BackboneController> {
  final Widget body;

  const BackboneWidget({required this.body}) : super();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(40.0),
          child: AppBar(
            backgroundColor: Colors.transparent,
            actions: [
              IconButton(
                iconSize: 20.0,
                splashRadius: 20.0,
                icon: const Icon(Icons.settings),
                onPressed: () => debugPrint("I'm pressed"),
              )
            ],
          ),
        ),
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
