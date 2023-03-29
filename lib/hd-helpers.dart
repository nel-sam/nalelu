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
        written += 'ひゃく${sinoNumberBank[hundredsPlace - 1].written}';
      else
        written += 'ひゃく';
    }

    if (tensPlace > 0) {
      if (tensPlace > 1)
        written += 'じゅう${sinoNumberBank[tensPlace - 1].written}';
      else
        written += 'じゅう';
    }

    if (onesPlace > 0) {
      written += sinoNumberBank[onesPlace - 1].written;
    }

    return HanNumber(digit: digit, written: written);
  }

  static HanNumber getRandomSaiNumber({int min = 1, int max = 99}) {
    return HD.getSaiNumber(Nrs.getRandomNumber(
      min: min,
      max: max,
    ));
  }

  static HanNumber getSaiNumber(int digit) {
    if (digit <= 9) {
      return saiNumberBank[digit];
    }

    var written = '';
    var hundredsPlace = (digit / 100).floor();
    var hundredsValue = hundredsPlace * 100;
    var tensPlace = ((digit - hundredsValue) / 10).floor();
    var tensValue = tensPlace * 10;
    var onesPlace = digit - hundredsValue - tensValue;

    if (tensPlace > 1) {
      if (tensPlace == 2 && onesPlace == 0)
        written += 'はたち';
      else if (onesPlace == 0)
        written += '${sinoNumberBank[tensPlace].written}じゅっさい';
      else
        written += '${sinoNumberBank[tensPlace].written}じゅう';
    } else if (onesPlace == 0)
      written += 'じゅっさい';
    else
      written += 'じゅう';

    if (onesPlace > 0) {
      written += '${saiNumberBank[onesPlace].written}';
    } else
      written += '${saiNumberBank[onesPlace].written}';

    return HanNumber(digit: digit, written: written);
  }

  static String t(String key, {List<String> inserts = const []}) {
    return key.i18n(inserts);
  }
}