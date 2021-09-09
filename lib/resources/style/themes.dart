import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';
import 'text_styles.dart';

class Themes {
  static Color colorPrimary = FlutterPTColors.black;
  static Color colorText = FlutterPTColors.black;

  static TextTheme defaultTextTheme(context) {
    return TextTheme(
      bodyText1: TextStyles.bodyText1(
        color: colorText,
      ),
      bodyText2: TextStyles.bodyText2(
        color: colorText,
      ),
      headline1: TextStyles.headline1(
        color: colorPrimary,
      ),
      headline4: TextStyles.headline4(
        color: colorPrimary,
      ),
      headline5: TextStyles.headline5(
        color: colorPrimary,
      ),
      headline6: TextStyles.headline6(
        color: colorPrimary,
      ),
    );
  }

  static ThemeData defaultAppTheme(context) {
    return ThemeData(
      primaryColor: colorPrimary,
      //accentColor: colorPrimary,
      textTheme: GoogleFonts.robotoTextTheme(
        Theme.of(context).textTheme,
      ),
      unselectedWidgetColor: colorPrimary,
      scaffoldBackgroundColor: FlutterPTColors.white,
    );
  }
}
