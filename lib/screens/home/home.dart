import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:pp_sp_s01_flutter/widgets/content_row/content_row.dart';

import 'home_controller.dart';

class HomeWidget extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );

    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(40.0),
          child: AppBar(
            backgroundColor: Colors.transparent,
            actions: [
              IconButton(
                iconSize: 20.0,
                splashRadius: 20.0,
                icon: Icon(Icons.settings),
                onPressed: () => print("I'm pressed"),
              )
            ],
          ),
        ),
        body: ContentRowWidget(
            title: "Created for you !",
            overviewsMusic: controller.overviewsMusic),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.greenAccent,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.storage),
              label: "Library",
            ),
          ],
        ),
      ),
    );
  }
}
