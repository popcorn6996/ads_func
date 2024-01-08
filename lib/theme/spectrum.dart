import 'package:flutter/material.dart';

class Spectrum {
  //Colors
  static const whiteColor = Colors.white;
  static const blackColor = Colors.black;
  static const greyColor = Colors.grey;
  static final greyColor2 = Colors.grey[300];
  static const blueColor = Colors.blue;
  static const blackColor2 = Colors.white;

  //Dark Theme
  static final darkMode = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Spectrum.blackColor,
    colorScheme: ColorScheme.fromSeed(seedColor: Spectrum.blackColor),
    useMaterial3: true,
  );

  //Light Theme
  static final lightMode = ThemeData.light().copyWith(
    colorScheme: ColorScheme.fromSeed(seedColor: Spectrum.whiteColor),
    useMaterial3: true,
  );
}
