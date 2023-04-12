import 'package:flutter/material.dart';
import 'package:nareru/constants.dart';
import 'package:nareru/na_helpers.dart';
import 'package:nareru/state/suuji/count/count_exercise_state.dart';
import 'package:nrs_flutter_lib/nrs_flutter_lib.dart';

class CountGenerator {
  static createExercise(int index) {
    var random =
        Nrs.getRandomNumber(min: 0, max: 2); //9); TODO: set to case count

    switch (random) {
      case 0:
        final numOfMonths = Nrs.getRandomNumber(min: 0, max: 10);
        return CountExerciseState(
          isSino: true,
          icon: Icons.calendar_month_outlined,
          label: NA.t('months'),
          count: numOfMonths,
          correctAnswers: getNumberOfMonthsAnswerList(numOfMonths),
          counter: 'ヶ月',
        );

      case 1:
        final numOfDays = Nrs.getRandomNumber(min: 0, max: 15);
        return CountExerciseState(
          isSino: true,
          icon: Icons.calendar_today_outlined,
          label: NA.t('days'),
          count: numOfDays,
          correctAnswers: getNumberOfDaysAnswerList(numOfDays),
          counter: '日',
        );

      case 2:
        final numbOfYears = NA.getRandomSinoNumber(min: 0, max: 100);
        return CountExerciseState(
          isSino: true,
          icon: Icons.wb_twighlight,
          label: NA.t('years'),
          count: numbOfYears.digit,
          correctAnswers: [
            numbOfYears.written + '年',
            numbOfYears.written + 'ねん',
            numbOfYears.alternate + '年',
            numbOfYears.alternate + 'ねん'
          ],
          counter: '年',
        );

      // case 3:
      //   return CountExerciseState(
      //     isSino: false,
      //     icon: Icons.pets,
      //     label: NA.t('animals'),
      //     count: sinoNumb.digit,
      //     correctAnswer: sinoNumb.alternate,
      //     counter: '匹', // TODO: Add furigana
      //   );

      // case 4:
      //   return CountExerciseState(
      //     isSino: false,
      //     icon: Icons.person,
      //     label: NA.t('people'),
      //     count: numb.digit,
      //     correctAnswer: numb.alternate,
      //     counter: '人',
      //   );

      // case 5:
      //   return CountExerciseState(
      //     isSino: false,
      //     icon: Icons.wine_bar,
      //     label: NA.t('bottles'),
      //     count: numb.digit,
      //     correctAnswer: numb.alternate,
      //     counter: '',
      //   );

      // case 6:
      //   return CountExerciseState(
      //     isSino: false,
      //     icon: Icons.bike_scooter,
      //     label: NA.t('things'),
      //     count: numb.digit,
      //     correctAnswer: numb.alternate,
      //     counter: '',
      //   );

      // case 7:
      //   return CountExerciseState(
      //     isSino: false,
      //     icon: Icons.book_outlined,
      //     label: NA.t('books'),
      //     count: numb.digit,
      //     correctAnswer: numb.alternate,
      //     counter: '',
      //   );

      // case 8:
      //   return CountExerciseState(
      //     isSino: false,
      //     icon: Icons.local_pizza_outlined,
      //     label: NA.t('slices'),
      //     count: numb.digit,
      //     correctAnswer: numb.alternate,
      //     counter: '',
      //   );

      // case 9:
      //   return CountExerciseState(
      //     isSino: false,
      //     icon: Icons.car_rental_outlined,
      //     label: NA.t('cars_machines'),
      //     count: numb.digit,
      //     correctAnswer: numb.alternate,
      //     counter: '',
      //   );
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
}
