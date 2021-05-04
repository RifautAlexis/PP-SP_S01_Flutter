import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pp_sp_s01_flutter/routes.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'PP-SP_S01',
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      initialRoute: '/',
      getPages: routes,
    );
  }
}