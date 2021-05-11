import 'package:flutter/material.dart';
import 'package:pp_sp_s01_flutter/theme/colors.dart';
import 'package:pp_sp_s01_flutter/theme/font.dart';

class CustomTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      // primarySwatch: CustomColors.primaryDark,
      // scaffoldBackgroundColor: CustomColors.backgroundColorDark,
      // fontFamily: CustomFont.fontFamily,
      // textTheme: ThemeData.dark().textTheme,
    );
  }
}