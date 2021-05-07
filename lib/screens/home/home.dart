import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:pp_sp_s01_flutter/widgets/backbone/backbone.dart';
import 'package:pp_sp_s01_flutter/widgets/content_row/content_row.dart';

import 'home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );

    return BackboneWidget(
      body: ContentRowWidget(
        title: "Created for you !",
        overviewsMusic: controller.overviewsMusic,
      ),
    );
  }
}
