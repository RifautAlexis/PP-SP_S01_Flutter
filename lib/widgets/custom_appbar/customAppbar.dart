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

    // return Row(
    //   children: [
    //     Expanded(
    //       child: NavigationToolbar(
    //         middleSpacing: 10.0,
    //         leading: Navigator.canPop(context)
    //             ? BackButton(
    //                 onPressed: () => Get.back(),
    //               )
    //             : Container(
    //                 width: 0,
    //                 height: 0,
    //               ),
    //         middle: Text("LOL"), // centralItem,
    //         trailing: Padding(
    //           padding: EdgeInsets.only(right: 10),
    //           child: Row(
    //             mainAxisSize: MainAxisSize.min,
    //             children: [...actions!],
    //           ),
    //         ),
    //       ),
    //     ),
    //   ],
    // );
  }
}
