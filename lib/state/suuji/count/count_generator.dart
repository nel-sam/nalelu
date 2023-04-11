import 'package:flutter/material.dart';
import 'package:nareru/constants.dart';
import 'package:nareru/na_helpers.dart';
import 'package:nareru/state/suuji/count/count_exercise_state.dart';
import 'package:nrs_flutter_lib/nrs_flutter_lib.dart';

class CountGenerator {
  static createExercise(int index) {
    var countType = Nrs.getRandomNumber(max: 2);

    if (countType == 0) {
      var sinoNumb = NA.getRandomSinoNumber(min: 1);
      var random = Nrs.getRandomNumber(min: 0, max: 3);

      switch (random) {
        case 0:
          return CountExerciseState(
            isSino: true,
            icon: Icons.calendar_month_outlined,
            label: NA.t('months'),
            count: sinoNumb.digit,
            correctAnswer: sinoNumb.alternate,
            counter: 'っヶ月',
          );

        case 1:
          return CountExerciseState(
            isSino: true,
            icon: Icons.calendar_today_outlined,
            label: NA.t('days'),
            count: sinoNumb.digit,
            correctAnswer: sinoNumb.alternate,
            counter: '',
          );

        case 2:
          return CountExerciseState(
            isSino: true,
            icon: Icons.wb_twighlight,
            label: NA.t('years'),
            count: sinoNumb.digit,
            correctAnswer: sinoNumb.alternate,
            counter: '年',
          );
      }
    }

    var hanNumb = NA.getRandomNativeNumber(min: 1);
    var random = Nrs.getRandomNumber(min: 0, max: 7);

    switch (random) {
      case 0:
        return CountExerciseState(
          isSino: false,
          icon: Icons.person,
          label: NA.t('people'),
          count: hanNumb.digit,
          correctAnswer: hanNumb.alternate,
          counter: '人',
        );

      case 1:
        return CountExerciseState(
          isSino: false,
          icon: Icons.pets,
          label: NA.t('animals'),
          count: hanNumb.digit,
          correctAnswer: hanNumb.alternate,
          counter: '마리',
        );

      case 2:
        return CountExerciseState(
          isSino: false,
          icon: Icons.wine_bar,
          label: NA.t('bottles'),
          count: hanNumb.digit,
          correctAnswer: hanNumb.alternate,
          counter: '',
        );

      case 3:
        return CountExerciseState(
          isSino: false,
          icon: Icons.bike_scooter,
          label: NA.t('things'),
          count: hanNumb.digit,
          correctAnswer: hanNumb.alternate,
          counter: '',
        );

      case 4:
        return CountExerciseState(
          isSino: false,
          icon: Icons.book_outlined,
          label: NA.t('books'),
          count: hanNumb.digit,
          correctAnswer: hanNumb.alternate,
          counter: '',
        );

      case 5:
        return CountExerciseState(
          isSino: false,
          icon: Icons.local_pizza_outlined,
          label: NA.t('slices'),
          count: hanNumb.digit,
          correctAnswer: hanNumb.alternate,
          counter: '',
        );

      case 6:
        return CountExerciseState(
          isSino: false,
          icon: Icons.car_rental_outlined,
          label: NA.t('cars_machines'),
          count: hanNumb.digit,
          correctAnswer: hanNumb.alternate,
          counter: '',
        );
    }
  }

  static int getMaxIndex() {
    return COUNT_EXERCISE_COUNT;
  }
}
