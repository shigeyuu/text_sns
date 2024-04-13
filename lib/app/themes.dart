import 'package:flutter/material.dart';

class Themes {
  static ThemeData lightTheme() => ThemeData.light().copyWith(
          appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
      ));

  static ThemeData darkTheme() => ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(
        backgroundColor: Colors.black,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
      ));
}
