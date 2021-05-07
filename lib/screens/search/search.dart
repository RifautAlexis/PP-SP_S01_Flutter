import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:pp_sp_s01_flutter/screens/search/search_controller.dart';
import 'package:pp_sp_s01_flutter/widgets/backbone/backbone.dart';

class SearchScreen extends GetView<SearchController> {
  const SearchScreen() : super();

  @override
  Widget build(BuildContext context) {
    return BackboneWidget(
      body: Text("Welcome on Search screen !"),
    );
  }
}