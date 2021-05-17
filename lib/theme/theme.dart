import 'package:flutter/material.dart';

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

extension CustomTextStyles on TextTheme {
  TextStyle get titleSearchedElement {
    return TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    );
  }

  TextStyle get subtitleSearchedElement {
    return TextStyle(
      fontSize: 10.0,
      fontWeight: FontWeight.normal,
      color: Colors.grey[500],
    );
  }
}
