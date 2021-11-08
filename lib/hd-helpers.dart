import 'package:flutter/material.dart';
import 'package:nareru/constants.dart';

class HD {
  static bool isDarkTheme(BuildContext context) {
    return MediaQuery.of(context).platformBrightness == Brightness.dark;
  }

  static Color getAppBarColor(BuildContext context) {
    return isDarkTheme(context) ? const Color(0xFF212121) : Colors.white;
  }

  static TextTheme getAppBarTextTheme(BuildContext context) {
    return isDarkTheme(context)
        ? APP_BAR_TEXTTHEME_DARK
        : APP_BAR_TEXTTHEME_LIGHT;
  }

  static IconThemeData getAppBarIconTheme(BuildContext context) {
    return isDarkTheme(context)
        ? APP_BAR_ICONTHEME_DARK
        : APP_BAR_ICONTHEME_LIGHT;
  }

  static OutlineInputBorder getTextFieldBorder(
      String correct, String userInput) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: correct == userInput ? CORRECT_COLOR : WRONG_COLOR,
      ),
    );
  }
}
