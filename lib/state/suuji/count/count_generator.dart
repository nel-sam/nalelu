import 'package:flutter/material.dart';
import 'package:nalelu/constants.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/state/suuji/count/count_exercise_state.dart';
import 'package:nrs_flutter_lib/nrs_flutter_lib.dart';

class CountGenerator {
  static createExercise(int index) {
    var random = Nrs.getRandomNumber(min: 0, max: 12);

    switch (random) {
      case 0:
        final count = Nrs.getRandomNumber(min: 1, max: 11);
        return CountExerciseState(
          isSino: true,
          icon: Icons.calendar_month_outlined,
          label: NA.t('months'),
          count: count,
          correctAnswers: getNumberOfMonthsAnswerList(count),
          counter: 'ヶ月',
        );

      case 1:
        final count = Nrs.getRandomNumber(min: 1, max: 16);
        return CountExerciseState(
          isSino: true,
          icon: Icons.calendar_today_outlined,
          label: NA.t('days'),
          count: count,
          correctAnswers: getNumberOfDaysAnswerList(count),
          counter: '日',
        );

      case 2:
        final count = NA.getRandomSinoNumber(min: 1, max: 16);
        return CountExerciseState(
          isSino: true,
          icon: Icons.wb_twighlight,
          label: NA.t('years'),
          count: count.digit,
          correctAnswers: [
            count.written + 'ねん',
            count.kanji + '年',
            count.written + '年',
            count.kanji + 'ねん',
          ],
          counter: '年',
        );

      case 3:
        final count = Nrs.getRandomNumber(min: 1, max: 16);
        return CountExerciseState(
          isSino: true,
          icon: Icons.pets,
          label: NA.t('small_animals'),
          count: count,
          correctAnswers: getNumberOfSmallAnimalsAnswerList(count),
          counter: '匹',
        );

      case 4:
        final count = Nrs.getRandomNumber(min: 1, max: 16);
        return CountExerciseState(
          isSino: true,
          icon: Icons.pets,
          label: NA.t('big_animals'),
          count: count,
          correctAnswers: getNumberOfBigAnimalsAnswerList(count),
          counter: '頭',
        );

      case 5:
        final count = NA.getRandomSinoNumber(min: 1, max: 16);

        return CountExerciseState(
          isSino: true,
          icon: Icons.water,
          label: NA.t('fishes'),
          count: count.digit,
          correctAnswers: [
            count.written + 'び',
            count.kanji + '尾',
            count.written + '尾',
            count.kanji + 'び',
          ],
          counter: '尾',
        );

      case 6:
        final count = Nrs.getRandomNumber(min: 1, max: 16);

        return CountExerciseState(
          isSino: true,
          icon: Icons.pets,
          label: NA.t('birds_rabbits'),
          count: count,
          correctAnswers: getNumberOfBirdsRabbitsAnswerList(count),
          counter: '羽',
        );

      case 7:
        final count = Nrs.getRandomNumber(min: 1, max: 16);

        return CountExerciseState(
          isSino: true,
          icon: Icons.person,
          label: NA.t('people'),
          count: count,
          correctAnswers: getNumberOfPeopleAnswerList(count),
          counter: '人',
        );

      case 8:
        final count = Nrs.getRandomNumber(min: 1, max: 16);

        return CountExerciseState(
          isSino: true,
          icon: Icons.edit,
          label: NA.t('long_things'),
          count: count,
          correctAnswers: getNumberOfLongThingsAnswerList(count),
          counter: '本',
        );

      case 9:
        final count = Nrs.getRandomNumber(min: 1, max: 16);

        return CountExerciseState(
          isSino: true,
          icon: Icons.book_outlined,
          label: NA.t('books'),
          count: count,
          correctAnswers: getNumberOfBooksAnswerList(count),
          counter: '冊',
        );

      case 10:
        final count = Nrs.getRandomNumber(min: 1, max: 16);

        return CountExerciseState(
          isSino: true,
          icon: Icons.local_pizza_outlined,
          label: NA.t('slices'),
          count: count,
          correctAnswers: getNumberOfSlicesAnswerList(count),
          counter: '枚',
        );

      case 11:
        final count = Nrs.getRandomNumber(min: 1, max: 16);

        return CountExerciseState(
          isSino: true,
          icon: Icons.car_rental_outlined,
          label: NA.t('machines_furniture'),
          count: count,
          correctAnswers: getNumberOfMachineFurnitureAnswerList(count),
          counter: '台',
        );

      case 12:
        final count = Nrs.getRandomNumber(min: 1, max: 9);

        return CountExerciseState(
          isSino: false,
          icon: Icons.bike_scooter,
          label: NA.t('general_things'),
          count: count,
          correctAnswers: getNumberOfGeneralThinsAnswerList(count),
          counter: '',
        );
    }
  }

  static int getMaxIndex() {
    return COUNT_EXERCISE_COUNT;
  }

  static List<String> getNumberOfBigAnimalsAnswerList(int count) {
    List<String> answerList = [];

    if (count == 1) {
      answerList.add('いっとう');
      answerList.add('一頭');
    } else if (count == 2) {
      answerList.add('にとう');
      answerList.add('二頭');
    } else if (count == 3) {
      answerList.add('さんとう');
      answerList.add('三頭');
    } else if (count == 4) {
      answerList.add('よんとう');
      answerList.add('四頭');
    } else if (count == 5) {
      answerList.add('ごとう');
      answerList.add('五頭');
    } else if (count == 6) {
      answerList.add('ろくとう');
      answerList.add('六頭');
    } else if (count == 7) {
      answerList.add('ななとう');
      // answerList.add('しちとう');
      answerList.add('七頭');
    } else if (count == 8) {
      answerList.add('はちとう');
      // answerList.add('はっとう');
      answerList.add('八頭');
    } else if (count == 9) {
      answerList.add('きゅうとう');
      answerList.add('九頭');
    } else if (count == 10) {
      answerList.add('じゅっとう');
      // answerList.add('じっとう');
      answerList.add('十頭');
    } else if (count == 11) {
      answerList.add('じゅういっとう');
      answerList.add('十一頭');
    } else if (count == 12) {
      answerList.add('じゅうにとう');
      answerList.add('十二頭');
    } else if (count == 13) {
      answerList.add('じゅうさんとう');
      answerList.add('十三頭');
    } else if (count == 14) {
      answerList.add('じゅうよんとう');
      answerList.add('十四頭');
    } else if (count == 15) {
      answerList.add('じゅうごとう');
      answerList.add('十五頭');
    }
    return answerList;
  }

  static List<String> getNumberOfBirdsRabbitsAnswerList(int count) {
    List<String> answerList = [];

    if (count == 1) {
      answerList.add('いちわ');
      answerList.add('一羽');
    } else if (count == 2) {
      answerList.add('にわ');
      answerList.add('二羽');
    } else if (count == 3) {
      answerList.add('さんわ');
      // answerList.add('さんば');
      answerList.add('三羽');
    } else if (count == 4) {
      answerList.add('よんわ');
      // answerList.add('よんば ');
      answerList.add('よわ');
      answerList.add('四羽');
    } else if (count == 5) {
      answerList.add('ごわ');
      answerList.add('五羽');
    } else if (count == 6) {
      answerList.add('ろくわ');
      // answerList.add('ろっぱ');
      answerList.add('六羽');
    } else if (count == 7) {
      answerList.add('ななわ');
      // answerList.add('しちわ');
      answerList.add('七羽');
    } else if (count == 8) {
      answerList.add('はちわ');
      // answerList.add('はっぱ');
      answerList.add('八羽');
    } else if (count == 9) {
      answerList.add('きゅうわ');
      answerList.add('九羽');
    } else if (count == 10) {
      answerList.add('じゅうわ');
      // answerList.add('じゅっぱ');
      // answerList.add('じっぱ');
      answerList.add('十羽');
    } else if (count == 11) {
      answerList.add('じゅういちわ');
      answerList.add('十一羽');
    } else if (count == 12) {
      answerList.add('じゅうにわ');
      answerList.add('十二羽');
    } else if (count == 13) {
      answerList.add('じゅうさんわ');
      answerList.add('十三羽');
    } else if (count == 14) {
      answerList.add('じゅうよんわ');
      answerList.add('十四羽');
    } else if (count == 15) {
      answerList.add('じゅうごわ');
      answerList.add('十五羽');
    }
    return answerList;
  }

  static List<String> getNumberOfBooksAnswerList(int count) {
    List<String> answerList = [];

    if (count == 1) {
      answerList.add('いっさつ');
      answerList.add('一冊');
    } else if (count == 2) {
      answerList.add('にさつ');
      answerList.add('二冊');
    } else if (count == 3) {
      answerList.add('さんさつ');
      answerList.add('三冊');
    } else if (count == 4) {
      answerList.add('よんさつ');
      answerList.add('四冊');
    } else if (count == 5) {
      answerList.add('ごさつ');
      answerList.add('五冊');
    } else if (count == 6) {
      answerList.add('ろくさつ');
      answerList.add('六冊');
    } else if (count == 7) {
      answerList.add('ななさつ');
      // answerList.add('しちさつ');
      answerList.add('七冊');
    } else if (count == 8) {
      answerList.add('はちさつ');
      // answerList.add('はっさつ');
      answerList.add('八冊');
    } else if (count == 9) {
      answerList.add('きゅうさつ');
      answerList.add('九冊');
    } else if (count == 10) {
      answerList.add('じゅっさつ');
      // answerList.add('じっさつ');
      answerList.add('十冊');
    } else if (count == 11) {
      answerList.add('じゅういっさつ');
      answerList.add('十一冊');
    } else if (count == 12) {
      answerList.add('じゅうにさつ');
      answerList.add('十二冊');
    } else if (count == 13) {
      answerList.add('じゅうさんほん');
      answerList.add('十三冊');
    } else if (count == 14) {
      answerList.add('じゅうよんさつ');
      answerList.add('十四冊');
    } else if (count == 15) {
      answerList.add('じゅうごさつ');
      answerList.add('十五冊');
    }
    return answerList;
  }

  static List<String> getNumberOfDaysAnswerList(int count) {
    List<String> answerList = [];

    if (count == 1) {
      answerList.add('ついたち');
      answerList.add('一日');
    } else if (count == 2) {
      answerList.add('ふつか');
      answerList.add('二日');
    } else if (count == 3) {
      answerList.add('みっか');
      answerList.add('三日');
    } else if (count == 4) {
      answerList.add('よっか');
      answerList.add('四日');
    } else if (count == 5) {
      answerList.add('いつか');
      answerList.add('五日');
    } else if (count == 6) {
      answerList.add('むいか');
      answerList.add('六日');
    } else if (count == 7) {
      answerList.add('なのか');
      answerList.add('七日');
    } else if (count == 8) {
      answerList.add('ようか');
      answerList.add('八日');
    } else if (count == 9) {
      answerList.add('ここのか');
      answerList.add('九日');
    } else if (count == 10) {
      answerList.add('とおか');
      answerList.add('十日');
    } else if (count == 11) {
      answerList.add('じゅういちにち');
      answerList.add('十一日');
    } else if (count == 12) {
      answerList.add('じゅうににち');
      answerList.add('十二日');
    } else if (count == 13) {
      answerList.add('じゅうさんにち');
      answerList.add('十三日');
    } else if (count == 14) {
      answerList.add('じゅうよんにち');
      answerList.add('十四日');
    } else if (count == 15) {
      answerList.add('じゅうごにち');
      answerList.add('十五日');
    }

    return answerList;
  }

  static List<String> getNumberOfGeneralThinsAnswerList(int count) {
    switch (count) {
      case 1:
        return ['ひとつ', '一つ'];
      case 2:
        return ['ふたつ', '二つ'];
      case 3:
        return ['みつ', '三つ'];
      case 4:
        return ['よっつ', '四つ'];
      case 5:
        return ['いつつ', '五つ'];
      case 6:
        return ['むっつ', '六つ'];
      case 7:
        return ['ななつ', '七つ'];
      case 8:
        return ['やっつ', '八つ'];
      case 9:
        return ['ここのつ', '九つ'];
      default:
        return [];
    }
  }

  static List<String> getNumberOfLongThingsAnswerList(int count) {
    List<String> answerList = [];

    if (count == 1) {
      answerList.add('いっぽん');
      answerList.add('一本');
    } else if (count == 2) {
      answerList.add('にほん');
      answerList.add('二本');
    } else if (count == 3) {
      answerList.add('さんぼん');
      answerList.add('三本');
    } else if (count == 4) {
      answerList.add('よんほん');
      answerList.add('四本');
    } else if (count == 5) {
      answerList.add('ごにん');
      answerList.add('五本');
    } else if (count == 6) {
      answerList.add('ろっぽん');
      answerList.add('六本');
    } else if (count == 7) {
      answerList.add('ななほん');
      // answerList.add('しちほん');
      answerList.add('七本');
    } else if (count == 8) {
      answerList.add('はちほん');
      // answerList.add('はっぽん');
      answerList.add('八本');
    } else if (count == 9) {
      answerList.add('きゅうほん');
      answerList.add('九本');
    } else if (count == 10) {
      answerList.add('じゅっぽん');
      // answerList.add('じっぽん');
      answerList.add('十本');
    } else if (count == 11) {
      answerList.add('じゅういっぽん');
      answerList.add('十一本');
    } else if (count == 12) {
      answerList.add('じゅうにほん');
      answerList.add('十二本');
    } else if (count == 13) {
      answerList.add('じゅうさんほん');
      answerList.add('十三本');
    } else if (count == 14) {
      answerList.add('じゅうよんほん');
      answerList.add('十四本');
    } else if (count == 15) {
      answerList.add('じゅうごほん');
      answerList.add('十五本');
    }
    return answerList;
  }

  static List<String> getNumberOfMachineFurnitureAnswerList(int count) {
    List<String> answerList = [];

    if (count == 1) {
      answerList.add('いちだい');
      answerList.add('一台');
    } else if (count == 2) {
      answerList.add('にだい');
      answerList.add('二台');
    } else if (count == 3) {
      answerList.add('さんだい');
      answerList.add('三台');
    } else if (count == 4) {
      answerList.add('よんだい');
      answerList.add('四台');
    } else if (count == 5) {
      answerList.add('ごだい');
      answerList.add('五台');
    } else if (count == 6) {
      answerList.add('ろくだい');
      answerList.add('六台');
    } else if (count == 7) {
      answerList.add('ななだい');
      // answerList.add('しちだい');
      answerList.add('七台');
    } else if (count == 8) {
      answerList.add('はちだい');
      answerList.add('八台');
    } else if (count == 9) {
      answerList.add('きゅうだい');
      answerList.add('九台');
    } else if (count == 10) {
      answerList.add('じゅうだい');
      answerList.add('十台');
    } else if (count == 11) {
      answerList.add('じゅういちだい');
      answerList.add('十一台');
    } else if (count == 12) {
      answerList.add('じゅうにだい');
      answerList.add('十二台');
    } else if (count == 13) {
      answerList.add('じゅうさんだい');
      answerList.add('十三台');
    } else if (count == 14) {
      answerList.add('じゅうよんだい');
      answerList.add('十四台');
    } else if (count == 15) {
      answerList.add('じゅうごだい');
      answerList.add('十五台');
    }
    return answerList;
  }

  static List<String> getNumberOfMonthsAnswerList(int count) {
    List<String> answerList = [];

    if (count == 1) {
      answerList.add('いっかげつ');
      answerList.add('一ヶ月');
    } else if (count == 2) {
      answerList.add('にかげつ');
      answerList.add('二ヶ月');
    } else if (count == 3) {
      answerList.add('さんかげつ');
      answerList.add('三ヶ月');
    } else if (count == 4) {
      answerList.add('よんかげつ');
      answerList.add('四ヶ月');
    } else if (count == 5) {
      answerList.add('ごかげつ');
      answerList.add('五ヶ月');
    } else if (count == 6) {
      answerList.add('ろっかげつ');
      answerList.add('六ヶ月');
    } else if (count == 7) {
      answerList.add('ななかげつ');
      answerList.add('七ヶ月');
    } else if (count == 8) {
      answerList.add('はちかげつ');
      answerList.add('八ヶ月');
    } else if (count == 9) {
      answerList.add('きゅうかげつ');
      answerList.add('九ヶ月');
    } else if (count == 10) {
      answerList.add('じゅうかげつ');
      answerList.add('十ヶ月');
    }

    return answerList;
  }

  static List<String> getNumberOfPeopleAnswerList(int count) {
    List<String> answerList = [];

    if (count == 1) {
      answerList.add('ひとり');
      answerList.add('一人');
    } else if (count == 2) {
      answerList.add('ふたり');
      answerList.add('二人');
    } else if (count == 3) {
      answerList.add('さんにん');
      answerList.add('三人');
    } else if (count == 4) {
      answerList.add('よにん');
      answerList.add('四人');
    } else if (count == 5) {
      answerList.add('ごにん');
      answerList.add('五人');
    } else if (count == 6) {
      answerList.add('ろくにん');
      answerList.add('六人');
    } else if (count == 7) {
      answerList.add('ななにん');
      // answerList.add('しちにん');
      answerList.add('七人');
    } else if (count == 8) {
      answerList.add('はちにん');
      answerList.add('八人');
    } else if (count == 9) {
      answerList.add('くにん');
      // answerList.add('きゅうにん');
      answerList.add('九人');
    } else if (count == 10) {
      answerList.add('じゅうにん');
      answerList.add('十人');
    } else if (count == 11) {
      answerList.add('じゅういちにん');
      answerList.add('十一人');
    } else if (count == 12) {
      answerList.add('じゅうににん');
      answerList.add('十二人');
    } else if (count == 13) {
      answerList.add('じゅうさんにん');
      answerList.add('十三人');
    } else if (count == 14) {
      answerList.add('じゅうよにん');
      answerList.add('十四人');
    } else if (count == 15) {
      answerList.add('じゅうごにん');
      answerList.add('十五人');
    }
    return answerList;
  }

  static List<String> getNumberOfSlicesAnswerList(int count) {
    List<String> answerList = [];

    if (count == 1) {
      answerList.add('いちまい');
      answerList.add('一枚');
    } else if (count == 2) {
      answerList.add('にまい');
      answerList.add('二一枚');
    } else if (count == 3) {
      answerList.add('さんまい');
      answerList.add('三枚');
    } else if (count == 4) {
      answerList.add('よんまい');
      answerList.add('四枚');
    } else if (count == 5) {
      answerList.add('ごまい');
      answerList.add('五枚');
    } else if (count == 6) {
      answerList.add('ろくまい');
      answerList.add('六枚');
    } else if (count == 7) {
      answerList.add('ななまい');
      answerList.add('七枚');
    } else if (count == 8) {
      answerList.add('はちまい');
      answerList.add('八枚');
    } else if (count == 9) {
      answerList.add('きゅうまい');
      answerList.add('九枚');
    } else if (count == 10) {
      answerList.add('じゅうまい');
      answerList.add('十枚');
    } else if (count == 11) {
      answerList.add('じゅういちまい');
      answerList.add('十一枚');
    } else if (count == 12) {
      answerList.add('じゅうにまい');
      answerList.add('十二枚');
    } else if (count == 13) {
      answerList.add('じゅうさんまい');
      answerList.add('十三枚');
    } else if (count == 14) {
      answerList.add('じゅうよんまい');
      answerList.add('十四枚');
    } else if (count == 15) {
      answerList.add('じゅうごまい');
      answerList.add('十五枚');
    }
    return answerList;
  }

  static List<String> getNumberOfSmallAnimalsAnswerList(int count) {
    List<String> answerList = [];

    if (count == 1) {
      answerList.add('いっぴき');
      answerList.add('一匹');
    } else if (count == 2) {
      answerList.add('にひき');
      answerList.add('二匹');
    } else if (count == 3) {
      answerList.add('さんびき');
      answerList.add('三匹');
    } else if (count == 4) {
      answerList.add('よんひき');
      answerList.add('四匹');
    } else if (count == 5) {
      answerList.add('ごひき');
      answerList.add('五匹');
    } else if (count == 6) {
      answerList.add('ろっぴき');
      answerList.add('六匹');
    } else if (count == 7) {
      answerList.add('ななひき');
      // answerList.add('しちひき');
      answerList.add('七匹');
    } else if (count == 8) {
      answerList.add('はちひき');
      // answerList.add('はっぴき');
      answerList.add('八匹');
    } else if (count == 9) {
      answerList.add('きゅうひき');
      answerList.add('九匹');
    } else if (count == 10) {
      answerList.add('じゅっぴき');
      // answerList.add('じっぴき');
      answerList.add('十匹');
    } else if (count == 11) {
      answerList.add('じゅういっぴき');
      answerList.add('十一匹');
    } else if (count == 12) {
      answerList.add('じゅうにひき');
      answerList.add('十二匹');
    } else if (count == 13) {
      answerList.add('じゅうさんびき');
      answerList.add('十三匹');
    } else if (count == 14) {
      answerList.add('じゅうよんひき');
      answerList.add('十四匹');
    } else if (count == 15) {
      answerList.add('じゅうごひき');
      answerList.add('十五匹');
    }
    return answerList;
  }
}
