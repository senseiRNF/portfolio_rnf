import 'package:flutter/material.dart';

class StaticVariables {
  static String appName = "Portfolio RNF";

  static String imgAssetsPath = "assets/images/";

  static ColorScheme customColorScheme = const ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xff1F509A),
    onPrimary: Colors.white,
    secondary: Color(0xffE38E49),
    onSecondary: Colors.white,
    error: Colors.red,
    onError: Colors.white,
    surface: Colors.white,
    onSurface: Colors.black87,
  );
}