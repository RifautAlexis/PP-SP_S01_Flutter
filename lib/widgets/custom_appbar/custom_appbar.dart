import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBarWidget extends StatelessWidget {
  final Widget? centralItem;
  final List<Widget>? actions;

  const CustomAppBarWidget({this.centralItem, this.actions}) : super();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Navigator.canPop(context)
          ? BackButton(
              onPressed: () => Get.back(),
            )
          : Container(
              width: 0,
              height: 0,
            ),
      title: centralItem,
      actions: actions,
    );
  }
}
