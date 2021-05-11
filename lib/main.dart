import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pp_sp_s01_flutter/routes.dart';
import 'package:pp_sp_s01_flutter/theme/theme.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'PP-SP_S01',
      theme: CustomTheme.darkTheme, // ThemeData.dark(),
      initialRoute: '/',
      getPages: routes,
    );
  }
}