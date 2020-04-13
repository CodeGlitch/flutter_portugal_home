import 'package:flutter/material.dart';

import 'colors.dart';

class TextStyles {
  static TextStyle bodyText1({Color color = FlutterPTColors.black}) =>
      TextStyle(
        fontSize: 18.0,
        color: color,
      );
  static TextStyle bodyText2({Color color = FlutterPTColors.black}) =>
      TextStyle(
        fontSize: 16.0,
        color: color,
      );
  static TextStyle headline1({Color color = FlutterPTColors.black}) =>
      TextStyle(
        fontSize: 40.0,
        color: color,
      );
  static TextStyle headline2({Color color = FlutterPTColors.black}) =>
      TextStyle(
        fontSize: 36.0,
        color: color,
      );
  static TextStyle headline3({Color color = FlutterPTColors.black}) =>
      TextStyle(
        fontSize: 32.0,
        color: color,
      );
  static TextStyle headline4({Color color = FlutterPTColors.black}) =>
      TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 28.0,
        color: color,
      );
  static TextStyle headline5({Color color = FlutterPTColors.black}) =>
      TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24.0,
        color: color,
      );
  static TextStyle headline6({Color color = FlutterPTColors.black}) =>
      TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
        color: color,
      );
}
