import 'package:flutter/material.dart';
import 'package:text_sns/constant/colors.dart';

class Themes {
  static ThemeData lightTheme() => ThemeData.light().copyWith(
      primaryColor: kPrimaryColorLightTheme,
      scaffoldBackgroundColor: kContentColorLightTheme,
      appBarTheme: const AppBarTheme(
        backgroundColor: kPrimaryColorLightTheme,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
      ));

  static ThemeData darkTheme() => ThemeData.dark().copyWith(
      primaryColor: kPrimaryColorDarkTheme,
      scaffoldBackgroundColor: kContentColorDarkTheme.withOpacity(0.8),
      appBarTheme: const AppBarTheme(
        backgroundColor: kPrimaryColorDarkTheme,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
      ));
}
