import 'package:flutter/material.dart';
import 'package:nareru/constants.dart';
import 'package:nareru/na_helpers.dart';
import 'package:nareru/state/suuji/count/count_exercise_state.dart';
import 'package:nrs_flutter_lib/nrs_flutter_lib.dart';

class CountGenerator {
  static createExercise(int index) {
    var random = Nrs.getRandomNumber(min: 0, max: 12);

    switch (random) {
      case 0:
        final numOfMonths = Nrs.getRandomNumber(min: 1, max: 11);
        return CountExerciseState(
          isSino: true,
          icon: Icons.calendar_month_outlined,
          label: NA.t('months'),
          count: numOfMonths,
          correctAnswers: getNumberOfMonthsAnswerList(numOfMonths),
          counter: 'ヶ月',
        );

      case 1:
        final numOfDays = Nrs.getRandomNumber(min: 1, max: 16);
        return CountExerciseState(
          isSino: true,
          icon: Icons.calendar_today_outlined,
          label: NA.t('days'),
          count: numOfDays,
          correctAnswers: getNumberOfDaysAnswerList(numOfDays),
          counter: '日',
        );

      case 2:
        final numbOfYears = NA.getRandomSinoNumber(min: 1, max: 16);
        return CountExerciseState(
          isSino: true,
          icon: Icons.wb_twighlight,
          label: NA.t('years'),
          count: numbOfYears.digit,
          correctAnswers: [
            numbOfYears.written + 'ねん',
            numbOfYears.written + '年',
            numbOfYears.kanji + 'ねん',
            numbOfYears.kanji + '年',
          ],
          counter: '年',
        );

      case 3:
        final numbofSmallAnimals = Nrs.getRandomNumber(min: 1, max: 16);
        return CountExerciseState(
          isSino: true,
          icon: Icons.pets,
          label: NA.t('small_animals'),
          count: numbofSmallAnimals,
          correctAnswers: getNumberOfSmallAnimalsAnswerList(numbofSmallAnimals),
          counter: '匹',
        );

      case 4:
        final numbofBigAnimals = Nrs.getRandomNumber(min: 1, max: 16);
        return CountExerciseState(
          isSino: true,
          icon: Icons.pets,
          label: NA.t('big_animals'),
          count: numbofBigAnimals,
          correctAnswers: getNumberOfBigAnimalsAnswerList(numbofBigAnimals),
          counter: '頭',
        );

      case 5:
        final numbofFishes = NA.getRandomSinoNumber(min: 1, max: 16);

        return CountExerciseState(
          isSino: true,
          icon: Icons.water,
          label: NA.t('fishes'),
          count: numbofFishes.digit,
          correctAnswers: [
            numbofFishes.written + 'び',
            numbofFishes.written + '尾',
            numbofFishes.kanji + 'び',
            numbofFishes.kanji + '尾'
          ],
          counter: '尾',
        );

      case 6:
        final numbofFishesRabbits = Nrs.getRandomNumber(min: 1, max: 16);

        return CountExerciseState(
          isSino: true,
          icon: Icons.pets,
          label: NA.t('birds_rabbits'),
          count: numbofFishesRabbits,
          correctAnswers:
              getNumberOfBirdsRabbitsAnswerList(numbofFishesRabbits),
          counter: '羽',
        );

      case 7:
        final numbofPeople = Nrs.getRandomNumber(min: 1, max: 16);

        return CountExerciseState(
          isSino: true,
          icon: Icons.person,
          label: NA.t('people'),
          count: numbofPeople,
          correctAnswers: getNumberOfPeopleAnswerList(numbofPeople),
          counter: '人',
        );

      case 8:
        final numbofThings = Nrs.getRandomNumber(min: 1, max: 16);

        return CountExerciseState(
          isSino: true,
          icon: Icons.bike_scooter,
          label: NA.t('things'),
          count: numbofThings,
          correctAnswers: getNumberOfThingsAnswerList(numbofThings),
          counter: '本',
        );

      case 9:
        final numbofBooks = Nrs.getRandomNumber(min: 1, max: 16);

        return CountExerciseState(
          isSino: true,
          icon: Icons.book_outlined,
          label: NA.t('things'),
          count: numbofBooks,
          correctAnswers: getNumberOfBooksAnswerList(numbofBooks),
          counter: '冊',
        );

      case 10:
        final numbofSlices = Nrs.getRandomNumber(min: 1, max: 16);

        return CountExerciseState(
          isSino: true,
          icon: Icons.local_pizza_outlined,
          label: NA.t('slices'),
          count: numbofSlices,
          correctAnswers: getNumberOfSlicesAnswerList(numbofSlices),
          counter: '切れ',
        );

      case 11:
        final numbofMachinesFurniture = Nrs.getRandomNumber(min: 1, max: 16);

        return CountExerciseState(
          isSino: true,
          icon: Icons.car_rental_outlined,
          label: NA.t('machines_furniture'),
          count: numbofMachinesFurniture,
          correctAnswers:
              getNumberOfMachineFurnitureAnswerList(numbofMachinesFurniture),
          counter: '台',
        );
    }
  }

  static int getMaxIndex() {
    return COUNT_EXERCISE_COUNT;
  }

  static List<String> getNumberOfDaysAnswerList(int numOfDays) {
    List<String> answerList = [];

    if (numOfDays == 1) {
      answerList.add('ついたち');
      answerList.add('一日');
    } else if (numOfDays == 2) {
      answerList.add('ふつか');
      answerList.add('二日');
    } else if (numOfDays == 3) {
      answerList.add('みっか');
      answerList.add('三日');
    } else if (numOfDays == 4) {
      answerList.add('よっか');
      answerList.add('四日');
    } else if (numOfDays == 5) {
      answerList.add('いつか');
      answerList.add('五日');
    } else if (numOfDays == 6) {
      answerList.add('むいか');
      answerList.add('六日');
    } else if (numOfDays == 7) {
      answerList.add('なのか');
      answerList.add('七日');
    } else if (numOfDays == 8) {
      answerList.add('ようか');
      answerList.add('八日');
    } else if (numOfDays == 9) {
      answerList.add('ここのか');
      answerList.add('九日');
    } else if (numOfDays == 10) {
      answerList.add('とおか');
      answerList.add('十日');
    } else if (numOfDays == 11) {
      answerList.add('じゅういちにち');
      answerList.add('十一日');
    } else if (numOfDays == 12) {
      answerList.add('じゅうににち');
      answerList.add('十二日');
    } else if (numOfDays == 13) {
      answerList.add('じゅうさんにち');
      answerList.add('十三日');
    } else if (numOfDays == 14) {
      answerList.add('じゅうよんにち');
      answerList.add('十四日');
    } else if (numOfDays == 15) {
      answerList.add('じゅうごにち');
      answerList.add('十五日');
    }

    return answerList;
  }

  static List<String> getNumberOfMonthsAnswerList(int numOfMonths) {
    List<String> answerList = [];

    if (numOfMonths == 1) {
      answerList.add('いっかげつ');
      answerList.add('一ヶ月');
    } else if (numOfMonths == 2) {
      answerList.add('にかげつ');
      answerList.add('二ヶ月');
    } else if (numOfMonths == 3) {
      answerList.add('さんかげつ');
      answerList.add('三ヶ月');
    } else if (numOfMonths == 4) {
      answerList.add('よんかげつ');
      answerList.add('四ヶ月');
    } else if (numOfMonths == 5) {
      answerList.add('ごかげつ');
      answerList.add('五ヶ月');
    } else if (numOfMonths == 6) {
      answerList.add('ろっかげつ');
      answerList.add('六ヶ月');
    } else if (numOfMonths == 7) {
      answerList.add('ななかげつ');
      answerList.add('七ヶ月');
    } else if (numOfMonths == 8) {
      answerList.add('はちかげつ');
      answerList.add('八ヶ月');
    } else if (numOfMonths == 9) {
      answerList.add('きゅうかげつ');
      answerList.add('九ヶ月');
    } else if (numOfMonths == 10) {
      answerList.add('じゅうかげつ');
      answerList.add('十ヶ月');
    }

    return answerList;
  }

  static List<String> getNumberOfSmallAnimalsAnswerList(int numOfAnimals) {
    List<String> answerList = [];

    if (numOfAnimals == 1) {
      answerList.add('いっぴき');
      answerList.add('一匹');
    } else if (numOfAnimals == 2) {
      answerList.add('にひき');
      answerList.add('二匹');
    } else if (numOfAnimals == 3) {
      answerList.add('さんびき');
      answerList.add('三匹');
    } else if (numOfAnimals == 4) {
      answerList.add('よんひき');
      answerList.add('四匹');
    } else if (numOfAnimals == 5) {
      answerList.add('ごひき');
      answerList.add('五匹');
    } else if (numOfAnimals == 6) {
      answerList.add('ろっぴき');
      answerList.add('六匹');
    } else if (numOfAnimals == 7) {
      answerList.add('ななひき');
      answerList.add('しちひき');
      answerList.add('七匹');
    } else if (numOfAnimals == 8) {
      answerList.add('はちひき');
      answerList.add('はっぴき');
      answerList.add('八匹');
    } else if (numOfAnimals == 9) {
      answerList.add('きゅうひき');
      answerList.add('九匹');
    } else if (numOfAnimals == 10) {
      answerList.add('じゅっぴき');
      answerList.add('じっぴき');
      answerList.add('十匹');
    } else if (numOfAnimals == 11) {
      answerList.add('じゅういっぴき');
      answerList.add('十一匹');
    } else if (numOfAnimals == 12) {
      answerList.add('じゅうにひき');
      answerList.add('十二匹');
    } else if (numOfAnimals == 13) {
      answerList.add('じゅうさんびき');
      answerList.add('十三匹');
    } else if (numOfAnimals == 14) {
      answerList.add('じゅうよんひき');
      answerList.add('十四匹');
    } else if (numOfAnimals == 15) {
      answerList.add('じゅうごひき');
      answerList.add('十五匹');
    }
    return answerList;
  }

  static List<String> getNumberOfBigAnimalsAnswerList(int numOfBigAnimals) {
    List<String> answerList = [];

    if (numOfBigAnimals == 1) {
      answerList.add('いっとう');
      answerList.add('一頭');
    } else if (numOfBigAnimals == 2) {
      answerList.add('にとう');
      answerList.add('二頭');
    } else if (numOfBigAnimals == 3) {
      answerList.add('さんとう');
      answerList.add('三頭');
    } else if (numOfBigAnimals == 4) {
      answerList.add('よんとう');
      answerList.add('四頭');
    } else if (numOfBigAnimals == 5) {
      answerList.add('ごとう');
      answerList.add('五頭');
    } else if (numOfBigAnimals == 6) {
      answerList.add('ろくとう');
      answerList.add('六頭');
    } else if (numOfBigAnimals == 7) {
      answerList.add('ななとう');
      answerList.add('しちとう');
      answerList.add('七頭');
    } else if (numOfBigAnimals == 8) {
      answerList.add('はちとう');
      answerList.add('はっとう');
      answerList.add('八頭');
    } else if (numOfBigAnimals == 9) {
      answerList.add('きゅうとう');
      answerList.add('九頭');
    } else if (numOfBigAnimals == 10) {
      answerList.add('じゅっとう');
      answerList.add('じっとう');
      answerList.add('十頭');
    } else if (numOfBigAnimals == 11) {
      answerList.add('じゅういっとう');
      answerList.add('十一頭');
    } else if (numOfBigAnimals == 12) {
      answerList.add('じゅうにとう');
      answerList.add('十二頭');
    } else if (numOfBigAnimals == 13) {
      answerList.add('じゅうさんとう');
      answerList.add('十三頭');
    } else if (numOfBigAnimals == 14) {
      answerList.add('じゅうよんとう');
      answerList.add('十四頭');
    } else if (numOfBigAnimals == 15) {
      answerList.add('じゅうごとう');
      answerList.add('十五頭');
    }
    return answerList;
  }

  static List<String> getNumberOfBirdsRabbitsAnswerList(int numOfBirdsRabbits) {
    List<String> answerList = [];

    if (numOfBirdsRabbits == 1) {
      answerList.add('いちわ');
      answerList.add('一羽');
    } else if (numOfBirdsRabbits == 2) {
      answerList.add('にわ');
      answerList.add('二羽');
    } else if (numOfBirdsRabbits == 3) {
      answerList.add('さんわ');
      answerList.add('さんば');
      answerList.add('三羽');
    } else if (numOfBirdsRabbits == 4) {
      answerList.add('よんわ');
      answerList.add('よんば ');
      answerList.add('よわ');
      answerList.add('四羽');
    } else if (numOfBirdsRabbits == 5) {
      answerList.add('ごわ');
      answerList.add('五羽');
    } else if (numOfBirdsRabbits == 6) {
      answerList.add('ろくわ');
      answerList.add('ろっぱ');
      answerList.add('六羽');
    } else if (numOfBirdsRabbits == 7) {
      answerList.add('ななわ');
      answerList.add('しちわ');
      answerList.add('七羽');
    } else if (numOfBirdsRabbits == 8) {
      answerList.add('はちわ');
      answerList.add('はっぱ');
      answerList.add('八羽');
    } else if (numOfBirdsRabbits == 9) {
      answerList.add('きゅうわ');
      answerList.add('九羽');
    } else if (numOfBirdsRabbits == 10) {
      answerList.add('じゅうわ');
      answerList.add('じゅっぱ');
      answerList.add('じっぱ');
      answerList.add('十羽');
    } else if (numOfBirdsRabbits == 11) {
      answerList.add('じゅういちわ');
      answerList.add('十一羽');
    } else if (numOfBirdsRabbits == 12) {
      answerList.add('じゅうにわ');
      answerList.add('十二羽');
    } else if (numOfBirdsRabbits == 13) {
      answerList.add('じゅうさんわ');
      answerList.add('十三羽');
    } else if (numOfBirdsRabbits == 14) {
      answerList.add('じゅうよんわ');
      answerList.add('十四羽');
    } else if (numOfBirdsRabbits == 15) {
      answerList.add('じゅうごわ');
      answerList.add('十五羽');
    }
    return answerList;
  }

  static List<String> getNumberOfPeopleAnswerList(int numOfPeople) {
    List<String> answerList = [];

    if (numOfPeople == 1) {
      answerList.add('ひとり');
      answerList.add('一人');
    } else if (numOfPeople == 2) {
      answerList.add('ふたり');
      answerList.add('二人');
    } else if (numOfPeople == 3) {
      answerList.add('さんにん');
      answerList.add('三人');
    } else if (numOfPeople == 4) {
      answerList.add('よにん');
      answerList.add('四人');
    } else if (numOfPeople == 5) {
      answerList.add('ごにん');
      answerList.add('五人');
    } else if (numOfPeople == 6) {
      answerList.add('ろくにん');
      answerList.add('六人');
    } else if (numOfPeople == 7) {
      answerList.add('ななにん');
      answerList.add('しちにん');
      answerList.add('七人');
    } else if (numOfPeople == 8) {
      answerList.add('はちにん');
      answerList.add('八人');
    } else if (numOfPeople == 9) {
      answerList.add('くにん');
      answerList.add('きゅうにん');
      answerList.add('九人');
    } else if (numOfPeople == 10) {
      answerList.add('じゅうにん');
      answerList.add('十人');
    } else if (numOfPeople == 11) {
      answerList.add('じゅういちにん');
      answerList.add('十一人');
    } else if (numOfPeople == 12) {
      answerList.add('じゅうににん');
      answerList.add('十二人');
    } else if (numOfPeople == 13) {
      answerList.add('じゅうさんにん');
      answerList.add('十三人');
    } else if (numOfPeople == 14) {
      answerList.add('じゅうよにん');
      answerList.add('十四人');
    } else if (numOfPeople == 15) {
      answerList.add('じゅうごにん');
      answerList.add('十五人');
    }
    return answerList;
  }

  static List<String> getNumberOfThingsAnswerList(int numOfThings) {
    List<String> answerList = [];

    if (numOfThings == 1) {
      answerList.add('いっぽん');
      answerList.add('一本');
    } else if (numOfThings == 2) {
      answerList.add('にほん');
      answerList.add('二本');
    } else if (numOfThings == 3) {
      answerList.add('さんぼん');
      answerList.add('三本');
    } else if (numOfThings == 4) {
      answerList.add('よんほん');
      answerList.add('四本');
    } else if (numOfThings == 5) {
      answerList.add('ごにん');
      answerList.add('五本');
    } else if (numOfThings == 6) {
      answerList.add('ろっぽん');
      answerList.add('六本');
    } else if (numOfThings == 7) {
      answerList.add('ななほん');
      answerList.add('しちほん');
      answerList.add('七本');
    } else if (numOfThings == 8) {
      answerList.add('はちほん');
      answerList.add('はっぽん');
      answerList.add('八本');
    } else if (numOfThings == 9) {
      answerList.add('きゅうほん');
      answerList.add('九本');
    } else if (numOfThings == 10) {
      answerList.add('じゅっぽん');
      answerList.add('じっぽん');
      answerList.add('十本');
    } else if (numOfThings == 11) {
      answerList.add('じゅういっぽん');
      answerList.add('十一本');
    } else if (numOfThings == 12) {
      answerList.add('じゅうにほん');
      answerList.add('十二本');
    } else if (numOfThings == 13) {
      answerList.add('じゅうさんほん');
      answerList.add('十三本');
    } else if (numOfThings == 14) {
      answerList.add('じゅうよんほん');
      answerList.add('十四本');
    } else if (numOfThings == 15) {
      answerList.add('じゅうごほん');
      answerList.add('十五本');
    }
    return answerList;
  }

  static List<String> getNumberOfBooksAnswerList(int numOfBooks) {
    List<String> answerList = [];

    if (numOfBooks == 1) {
      answerList.add('いっさつ');
      answerList.add('一冊');
    } else if (numOfBooks == 2) {
      answerList.add('にさつ');
      answerList.add('二冊');
    } else if (numOfBooks == 3) {
      answerList.add('さんさつ');
      answerList.add('三冊');
    } else if (numOfBooks == 4) {
      answerList.add('よんさつ');
      answerList.add('四冊');
    } else if (numOfBooks == 5) {
      answerList.add('ごさつ');
      answerList.add('五冊');
    } else if (numOfBooks == 6) {
      answerList.add('ろくさつ');
      answerList.add('六冊');
    } else if (numOfBooks == 7) {
      answerList.add('ななさつ');
      answerList.add('しちさつ');
      answerList.add('七冊');
    } else if (numOfBooks == 8) {
      answerList.add('はちさつ');
      answerList.add('はっさつ');
      answerList.add('八冊');
    } else if (numOfBooks == 9) {
      answerList.add('きゅうさつ');
      answerList.add('九冊');
    } else if (numOfBooks == 10) {
      answerList.add('じゅっさつ');
      answerList.add('じっさつ');
      answerList.add('十冊');
    } else if (numOfBooks == 11) {
      answerList.add('じゅういっさつ');
      answerList.add('十一冊');
    } else if (numOfBooks == 12) {
      answerList.add('じゅうにさつ');
      answerList.add('十二冊');
    } else if (numOfBooks == 13) {
      answerList.add('じゅうさんほん');
      answerList.add('十三冊');
    } else if (numOfBooks == 14) {
      answerList.add('じゅうよんさつ');
      answerList.add('十四冊');
    } else if (numOfBooks == 15) {
      answerList.add('じゅうごさつ');
      answerList.add('十五冊');
    }
    return answerList;
  }

  static List<String> getNumberOfSlicesAnswerList(int numOfSlices) {
    List<String> answerList = [];

    if (numOfSlices == 1) {
      answerList.add('ひときれ');
      answerList.add('一切れ');
    } else if (numOfSlices == 2) {
      answerList.add('ふたきれ');
      answerList.add('二切れ');
    } else if (numOfSlices == 3) {
      answerList.add('みきれ');
      answerList.add('三切れ');
    } else if (numOfSlices == 4) {
      answerList.add('よんきれ');
      answerList.add('よきれ');
      answerList.add('四切れ');
    } else if (numOfSlices == 5) {
      answerList.add('ごきれ');
      answerList.add('五切れ');
    } else if (numOfSlices == 6) {
      answerList.add('ろっきれ');
      answerList.add('六切れ');
    } else if (numOfSlices == 7) {
      answerList.add('ななきれ');
      answerList.add('七切れ');
    } else if (numOfSlices == 8) {
      answerList.add('はちきれ');
      answerList.add('はっきれ');
      answerList.add('八切れ');
    } else if (numOfSlices == 9) {
      answerList.add('きゅうきれ');
      answerList.add('九切れ');
    } else if (numOfSlices == 10) {
      answerList.add('じゅっきれ');
      answerList.add('じっきれ');
      answerList.add('十切れ');
    } else if (numOfSlices == 11) {
      answerList.add('じゅういっきれ');
      answerList.add('十一切れ');
    } else if (numOfSlices == 12) {
      answerList.add('じゅうにきれ');
      answerList.add('十二切れ');
    } else if (numOfSlices == 13) {
      answerList.add('じゅうさんきれ');
      answerList.add('十三切れ');
    } else if (numOfSlices == 14) {
      answerList.add('じゅうよんきれ');
      answerList.add('じゅうよきれ');
      answerList.add('十四切れ');
    } else if (numOfSlices == 15) {
      answerList.add('じゅうごきれ');
      answerList.add('十五切れ');
    }
    return answerList;
  }

  static List<String> getNumberOfMachineFurnitureAnswerList(
      int numOfMachineFurniture) {
    List<String> answerList = [];

    if (numOfMachineFurniture == 1) {
      answerList.add('いちだい');
      answerList.add('一台');
    } else if (numOfMachineFurniture == 2) {
      answerList.add('にだい');
      answerList.add('二台');
    } else if (numOfMachineFurniture == 3) {
      answerList.add('さんだい');
      answerList.add('三台');
    } else if (numOfMachineFurniture == 4) {
      answerList.add('よんだい');
      answerList.add('四台');
    } else if (numOfMachineFurniture == 5) {
      answerList.add('ごだい');
      answerList.add('五台');
    } else if (numOfMachineFurniture == 6) {
      answerList.add('ろくだい');
      answerList.add('六台');
    } else if (numOfMachineFurniture == 7) {
      answerList.add('ななだい');
      answerList.add('しちだい');
      answerList.add('七台');
    } else if (numOfMachineFurniture == 8) {
      answerList.add('はちだい');
      answerList.add('八台');
    } else if (numOfMachineFurniture == 9) {
      answerList.add('きゅうだい');
      answerList.add('九台');
    } else if (numOfMachineFurniture == 10) {
      answerList.add('じゅうだい');
      answerList.add('十台');
    } else if (numOfMachineFurniture == 11) {
      answerList.add('じゅういちだい');
      answerList.add('十一台');
    } else if (numOfMachineFurniture == 12) {
      answerList.add('じゅうにだい');
      answerList.add('十二台');
    } else if (numOfMachineFurniture == 13) {
      answerList.add('じゅうさんだい');
      answerList.add('十三台');
    } else if (numOfMachineFurniture == 14) {
      answerList.add('じゅうよんだい');
      answerList.add('十四台');
    } else if (numOfMachineFurniture == 15) {
      answerList.add('じゅうごだい');
      answerList.add('十五台');
    }
    return answerList;
  }
}
