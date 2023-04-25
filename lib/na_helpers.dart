import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:nalelu/lang_data/manga_words.dart';
import 'package:nalelu/lang_data/numbers.dart';
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

  static NareNumber getHourNumber(int digit) {
    var written = '';
    var kanji = '';
    var hundredsPlace = (digit / 100).floor();
    var hundredsValue = hundredsPlace * 100;
    var tensPlace = ((digit - hundredsValue) / 10).floor();
    var tensValue = tensPlace * 10;
    var onesPlace = digit - hundredsValue - tensValue;

    if (tensPlace > 0) {
      if (tensPlace > 1) {
        written += '${sinoNumberBank[tensPlace].written}じゅう';
        kanji += '${sinoNumberBank[tensPlace].kanji}十';
      } else {
        written += 'じゅう';
        kanji += '十';
      }
      if (onesPlace == 0) {
        written += 'じ';
        kanji += '時';
      }
    }

    if (onesPlace > 0) {
      if (onesPlace == 4) {
        written += 'よじ';
        kanji += '四時';
      } else if (onesPlace == 7) {
        written += 'しちじ';
        kanji += '七時';
      } else if (onesPlace == 9) {
        written += 'くじ';
        kanji += '九時';
      } else {
        written += '${sinoNumberBank[onesPlace].written}じ';
        kanji += '${sinoNumberBank[onesPlace].kanji}時';
      }
    } else if (onesPlace == 0 && tensPlace == 0) {
      written += '${sinoNumberBank[onesPlace].written}じ';
      kanji += '${sinoNumberBank[onesPlace].kanji}時';
    }

    return NareNumber(digit: digit, written: written, kanji: kanji);
  }

  static NareNumber getMinuteNumber(int digit) {
    var written = '';
    var kanji = '';
    var hundredsPlace = (digit / 100).floor();
    var hundredsValue = hundredsPlace * 100;
    var tensPlace = ((digit - hundredsValue) / 10).floor();
    var tensValue = tensPlace * 10;
    var onesPlace = digit - hundredsValue - tensValue;

    if (tensPlace > 1) {
      if (onesPlace == 0) {
        written += '${sinoNumberBank[tensPlace].written}じゅうぷん';
        kanji += '${sinoNumberBank[tensPlace].kanji}十分';
      } else {
        written += '${sinoNumberBank[tensPlace].written}じゅう';
        kanji += '${sinoNumberBank[tensPlace].kanji}十';
      }
    } else if (tensPlace != 0 && onesPlace != 0) {
      written += 'じゅう';
      kanji += '十';
    } else if (onesPlace == 0) {
      written += 'じゅうぷん';
      kanji += '十分';
    }
    if (onesPlace > 0) {
      written += '${minuteNumberBank[onesPlace].written}';
      kanji += '${minuteNumberBank[onesPlace].kanji}';
    } else if (tensPlace == 0 && tensPlace == 0) {
      written += '${minuteNumberBank[onesPlace].written}';
      kanji += '${minuteNumberBank[onesPlace].kanji}';
    }

    return NareNumber(digit: digit, written: written, kanji: kanji);
  }

  static NareNumber getRandomHourNumber({int min = 1, int max = 99}) {
    return NA.getHourNumber(Nrs.getRandomNumber(
      min: min,
      max: max,
    ));
  }

  static NareNumber getRandomMinuteNumber({int min = 0, int max = 99}) {
    return NA.getMinuteNumber(Nrs.getRandomNumber(
      min: min,
      max: max,
    ));
  }

  static NareNumber getRandomNativeNumber({int min = 0, int max = 99}) {
    return nativeNumberBank[Nrs.getRandomNumber(
      min: min,
      max: max,
    )];
  }

  static NareNumber getRandomSaiNumber({int min = 1, int max = 99}) {
    return NA.getSaiNumber(Nrs.getRandomNumber(
      min: min,
      max: max,
    ));
  }

  static NareNumber getRandomSecondNumber({int min = 0, int max = 99}) {
    return NA.getSecondNumber(Nrs.getRandomNumber(
      min: min,
      max: max,
    ));
  }

  static NareNumber getRandomSinoNumber({int min = 0, int max = 99}) {
    return NA.getSinoNumber(Nrs.getRandomNumber(
      min: min,
      max: max,
    ));
  }

  static NareNumber getSaiNumber(int digit) {
    if (digit <= 9) {
      return saiNumberBank[digit];
    }

    var written = '';
    var kanji = '';
    var hundredsPlace = (digit / 100).floor();
    var hundredsValue = hundredsPlace * 100;
    var tensPlace = ((digit - hundredsValue) / 10).floor();
    var tensValue = tensPlace * 10;
    var onesPlace = digit - hundredsValue - tensValue;

    if (tensPlace > 1) {
      if (tensPlace == 2 && onesPlace == 0) {
        written += 'はたち';
        kanji += '二十歳';
      } else if (onesPlace == 0) {
        written += '${sinoNumberBank[tensPlace].written}じゅっさい';
        kanji += '${sinoNumberBank[tensPlace].kanji}十歳';
      } else {
        written += '${sinoNumberBank[tensPlace].written}じゅう';
        kanji += '${sinoNumberBank[tensPlace].kanji}十';
      }
    } else if (onesPlace == 0) {
      written += 'じゅっさい';
      kanji += '十歳';
    } else {
      written += 'じゅう';
      kanji += '十';
    }

    if (onesPlace > 0) {
      written += '${saiNumberBank[onesPlace].written}';
      kanji += '${saiNumberBank[onesPlace].kanji}';
    } else {
      written += '${saiNumberBank[onesPlace].written}';
      kanji += '${saiNumberBank[onesPlace].kanji}';
    }

    return NareNumber(digit: digit, written: written, kanji: kanji);
  }

  static NareNumber getSecondNumber(int digit) {
    var written = '';
    var kanji = '';
    var hundredsPlace = (digit / 100).floor();
    var hundredsValue = hundredsPlace * 100;
    var tensPlace = ((digit - hundredsValue) / 10).floor();
    var tensValue = tensPlace * 10;
    var onesPlace = digit - hundredsValue - tensValue;

    if (tensPlace > 1) {
      if (onesPlace == 0) {
        written += '${sinoNumberBank[tensPlace].written}じゅうびょう';
        kanji += '${sinoNumberBank[tensPlace].kanji}十秒';
      } else {
        written += '${sinoNumberBank[tensPlace].written}じゅう';
        kanji += '${sinoNumberBank[tensPlace].kanji}十';
      }
    } else if (tensPlace != 0 && onesPlace != 0) {
      written += 'じゅう';
      kanji += '十';
    } else if (onesPlace == 0) {
      written += 'じゅうびょう';
      kanji += '十秒';
    }

    if (onesPlace > 0) {
      written += '${sinoNumberBank[onesPlace].written}びょう';
      kanji += '${sinoNumberBank[onesPlace].kanji}秒';
    } else if (tensPlace == 0 && tensPlace == 0) {
      written += '${sinoNumberBank[onesPlace].written}びょう';
      kanji += '${sinoNumberBank[onesPlace].kanji}秒';
    }

    return NareNumber(digit: digit, written: written, kanji: kanji);
  }

  static NareNumber getSinoNumber(int digit) {
    if (digit <= 9) {
      return sinoNumberBank[digit];
    }

    var written = '';
    var kanji = '';
    var hundredsPlace = (digit / 100).floor();
    var hundredsValue = hundredsPlace * 100;
    var tensPlace = ((digit - hundredsValue) / 10).floor();
    var tensValue = tensPlace * 10;
    var onesPlace = digit - hundredsValue - tensValue;

    if (hundredsPlace > 0) {
      if (hundredsPlace > 1) {
        if (hundredsPlace == 3) {
          written += '${sinoNumberBank[hundredsPlace].written}びゃく';
          kanji += '${sinoNumberBank[hundredsPlace].kanji}百';
        } else if (hundredsPlace == 6) {
          written += 'ろっぴゃく';
          kanji += '六百';
        } else if (hundredsPlace == 8) {
          written += 'はっぴゃく';
          kanji += '八百';
        } else {
          written += '${sinoNumberBank[hundredsPlace].written}ひゃく';
          kanji += '${sinoNumberBank[hundredsPlace].kanji}百';
        }
      } else {
        written += 'ひゃく';
        kanji += '百';
      }
    }

    if (tensPlace > 0) {
      if (tensPlace > 1) {
        written += '${sinoNumberBank[tensPlace].written}じゅう';
        kanji += '${sinoNumberBank[tensPlace].kanji}十';
      } else {
        written += 'じゅう';
        kanji += '十';
      }
    }

    if (onesPlace > 0) {
      written += sinoNumberBank[onesPlace].written;
      kanji += sinoNumberBank[onesPlace].kanji;
    }

    return NareNumber(digit: digit, written: written, kanji: kanji);
  }

  static MangaWord getExercise1Words(int wordIndex) {
    return exercise1[wordIndex];
  }

  static String t(String key, {List<String> inserts = const []}) {
    return key.i18n(inserts);
  }
}
