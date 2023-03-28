import 'package:flutter/material.dart';
import 'package:nareru/constants.dart';
import 'package:localization/localization.dart';


class HD {
  static Color getAppBarColor(BuildContext context) {
    return isDarkTheme(context) ? const Color(0xFF212121) : Colors.white;
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

  static bool isDarkTheme(BuildContext context) {
    return MediaQuery.of(context).platformBrightness == Brightness.dark;
  }

  static String t(String key, {List<String> inserts = const []}) {
    return key.i18n(inserts);
  }
}
