import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:pp_sp_s01_flutter/widgets/search_appbar/search_appbar_controller.dart';

class SearchAppbarWidget extends GetView<SearchAppbarController> {
  const SearchAppbarWidget() : super();

  @override
  Widget build(BuildContext context) {
    return TextField(
      key: Key('SearchBarTextField'),
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: 'Search...',
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        border: InputBorder.none,
      ),
      onChanged: (value) => controller.setSearchedValue(value),
    );
  }
}
