import 'package:flutter/material.dart';
import 'package:nareru/lang_data/numbers.dart';
import 'package:localization/localization.dart';
import 'package:nrs_flutter_lib/constants.dart';
import 'package:nrs_flutter_lib/nrs_flutter_lib.dart';

class NA {
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

  static NareNumber getRandomNativeNumber({int min = 0, int max = 99}) {
    return nativeNumberBank[Nrs.getRandomNumber(
      min: min,
      max: max,
    )];
  }

  static NareNumber getRandomSinoNumber({int min = 0, int max = 99}) {
    return NA.getSinoNumber(Nrs.getRandomNumber(
      min: min,
      max: max,
    ));
  }

  static NareNumber getSinoNumber(int digit) {
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
      if (hundredsPlace > 1) {
        if (hundredsPlace == 3)
          written += '${sinoNumberBank[hundredsPlace].written}びゃく';
        else if (hundredsPlace == 6)
          written += 'ろっぴゃく';
        else if (hundredsPlace == 8)
          written += 'はっぴゃく';
        else
          written += '${sinoNumberBank[hundredsPlace].written}ひゃく';
      } else
        written += 'ひゃく';
    }

    if (tensPlace > 0) {
      if (tensPlace > 1)
        written += '${sinoNumberBank[tensPlace].written}じゅう';
      else
        written += 'じゅう';
    }

    if (onesPlace > 0) {
      written += sinoNumberBank[onesPlace].written;
    }

    return NareNumber(digit: digit, written: written);
  }

  static NareNumber getRandomSaiNumber({int min = 1, int max = 99}) {
    return NA.getSaiNumber(Nrs.getRandomNumber(
      min: min,
      max: max,
    ));
  }

  static NareNumber getSaiNumber(int digit) {
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

    return NareNumber(digit: digit, written: written);
  }

  static NareNumber getRandomHourNumber({int min = 1, int max = 99}) {
    return NA.getHourNumber(Nrs.getRandomNumber(
      min: min,
      max: max,
    ));
  }

  static NareNumber getHourNumber(int digit) {
    var written = '';
    var hundredsPlace = (digit / 100).floor();
    var hundredsValue = hundredsPlace * 100;
    var tensPlace = ((digit - hundredsValue) / 10).floor();
    var tensValue = tensPlace * 10;
    var onesPlace = digit - hundredsValue - tensValue;

    if (tensPlace > 0) {
      written += 'じゅう';
      if (onesPlace == 0) written += 'じ';
    }

    if (onesPlace > 0) {
      if (onesPlace == 4)
        written += 'よじ';
      else if (onesPlace == 7)
        written += 'しちじ';
      else
        written += '${sinoNumberBank[onesPlace].written}じ';
    } else if (onesPlace == 0 && tensPlace == 0)
      written += '${sinoNumberBank[onesPlace].written}じ';

    return NareNumber(digit: digit, written: written);
  }

  static NareNumber getRandomMinuteNumber({int min = 0, int max = 99}) {
    return NA.getMinuteNumber(Nrs.getRandomNumber(
      min: min,
      max: max,
    ));
  }

  static NareNumber getMinuteNumber(int digit) {
    var written = '';
    var hundredsPlace = (digit / 100).floor();
    var hundredsValue = hundredsPlace * 100;
    var tensPlace = ((digit - hundredsValue) / 10).floor();
    var tensValue = tensPlace * 10;
    var onesPlace = digit - hundredsValue - tensValue;

    if (tensPlace > 1) {
      if (onesPlace == 0)
        written += '${sinoNumberBank[tensPlace].written}じゅうぷん';
      else
        written += '${sinoNumberBank[tensPlace].written}じゅう';
    } else if (tensPlace != 0 && onesPlace != 0)
      written += 'じゅう';
    else if (onesPlace == 0) written += 'じゅうぷん';

    if (onesPlace > 0) {
      written += '${minuteNumberBank[onesPlace].written}';
    } else if (tensPlace == 0 && tensPlace == 0)
      written += '${minuteNumberBank[onesPlace].written}';

    return NareNumber(digit: digit, written: written);
  }

  static NareNumber getRandomSecondNumber({int min = 0, int max = 99}) {
    return NA.getSecondNumber(Nrs.getRandomNumber(
      min: min,
      max: max,
    ));
  }

  static NareNumber getSecondNumber(int digit) {
    var written = '';
    var hundredsPlace = (digit / 100).floor();
    var hundredsValue = hundredsPlace * 100;
    var tensPlace = ((digit - hundredsValue) / 10).floor();
    var tensValue = tensPlace * 10;
    var onesPlace = digit - hundredsValue - tensValue;

    if (tensPlace > 1) {
      if (onesPlace == 0)
        written += '${sinoNumberBank[tensPlace].written}じゅうびょう';
      else
        written += '${sinoNumberBank[tensPlace].written}じゅう';
    } else if (tensPlace != 0 && onesPlace != 0)
      written += 'じゅう';
    else if (onesPlace == 0) written += 'じゅうびょう';

    if (onesPlace > 0) {
      written += '${sinoNumberBank[onesPlace].written}びょう';
    } else if (tensPlace == 0 && tensPlace == 0)
      written += '${sinoNumberBank[onesPlace].written}びょう';

    return NareNumber(digit: digit, written: written);
  }

  static String t(String key, {List<String> inserts = const []}) {
    return key.i18n(inserts);
  }
}
