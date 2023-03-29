import 'package:flutter/material.dart';
import 'package:nareru/lang_data/numbers.dart';
import 'package:localization/localization.dart';
import 'package:nrs_flutter_lib/constants.dart';
import 'package:nrs_flutter_lib/nrs_flutter_lib.dart';

class HD {
  static TextStyle fontStyleBold(BuildContext context,
      {double fontSize = FONT_SIZE}) {
    return Nrs.getTextStyle(context: context, fontSize: fontSize, isBold: true);
  }

  static TextStyle fontStyleItalic(BuildContext context,
      {double fontSize = FONT_SIZE}) {
    return Nrs.getTextStyle(
        context: context, fontSize: fontSize, isItalic: true);
  }

  static fontStyleNormal(BuildContext context, {double fontSize = FONT_SIZE}) {
    return Nrs.getTextStyle(context: context, fontSize: fontSize);
  }

  static HanNumber getRandomNativeNumber({int min = 0, int max = 99}) {
    return nativeNumberBank[Nrs.getRandomNumber(
      min: min,
      max: max,
    )];
  }

  static HanNumber getRandomSinoNumber({int min = 0, int max = 99}) {
    return HD.getSinoNumber(Nrs.getRandomNumber(
      min: min,
      max: max,
    ));
  }

  static HanNumber getSinoNumber(int digit) {
    if (digit <= 9) {
      return sinoNumberBank[digit];
    }

    var written = '';
    var hundredsPlace = (digit / 100).floor();
    var hundredsValue = hundredsPlace * 100;
    var tensPlace = ((digit - hundredsValue) / 10).floor();
    var tensValue = tensPlace * 10;
    var onesPlace = digit - hundredsValue - tensValue;

    if (hundredsPlace > 0) {
      if (hundredsPlace > 1)
        written += '${sinoNumberBank[hundredsPlace].written}백';
      else
        written += '백';
    }

    if (tensPlace > 0) {
      if (tensPlace > 1)
        written += '${sinoNumberBank[tensPlace].written}십';
      else
        written += '십';
    }

    if (onesPlace > 0) {
      written += sinoNumberBank[onesPlace].written;
    }

    return HanNumber(digit: digit, written: written);
  }

  static String t(String key, {List<String> inserts = const []}) {
    return key.i18n(inserts);
  }
}
