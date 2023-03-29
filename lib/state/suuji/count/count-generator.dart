import 'package:flutter/material.dart';
import 'package:nareru/constants.dart';
import 'package:nareru/hd-helpers.dart';
import 'package:nareru/state/suuji/count/count-exercise-state.dart';
import 'package:nrs_flutter_lib/nrs_flutter_lib.dart';

class CountGenerator {
  static createExercise(int index) {
    var countType = Nrs.getRandomNumber(max: 2);

    if (countType == 0) {
      var sinoNumb = HD.getRandomSinoNumber(min: 1);
      var random = Nrs.getRandomNumber(min: 0, max: 3);

      switch (random) {
        case 0:
          return CountExerciseState(
            isSino: true,
            icon: Icons.calendar_month_outlined,
            label: HD.t('months'),
            count: sinoNumb.digit,
            correctAnswer: sinoNumb.alternate,
            counter: '월',
          );

        case 1:
          return CountExerciseState(
            isSino: true,
            icon: Icons.calendar_today_outlined,
            label: HD.t('days'),
            count: sinoNumb.digit,
            correctAnswer: sinoNumb.alternate,
            counter: '일',
          );

        case 2:
          return CountExerciseState(
            isSino: true,
            icon: Icons.wb_twighlight,
            label: HD.t('years'),
            count: sinoNumb.digit,
            correctAnswer: sinoNumb.alternate,
            counter: '년',
          );
      }
    }

    var hanNumb = HD.getRandomNativeNumber(min: 1);
    var random = Nrs.getRandomNumber(min: 0, max: 7);

    switch (random) {
      case 0:
        return CountExerciseState(
          isSino: false,
          icon: Icons.person,
          label: HD.t('people'),
          count: hanNumb.digit,
          correctAnswer: hanNumb.alternate,
          counter: '명',
        );

      case 1:
        return CountExerciseState(
          isSino: false,
          icon: Icons.pets,
          label: HD.t('animals'),
          count: hanNumb.digit,
          correctAnswer: hanNumb.alternate,
          counter: '마리',
        );

      case 2:
        return CountExerciseState(
          isSino: false,
          icon: Icons.wine_bar,
          label: HD.t('bottles'),
          count: hanNumb.digit,
          correctAnswer: hanNumb.alternate,
          counter: '병',
        );

      case 3:
        return CountExerciseState(
          isSino: false,
          icon: Icons.bike_scooter,
          label: HD.t('things'),
          count: hanNumb.digit,
          correctAnswer: hanNumb.alternate,
          counter: '개',
        );

      case 4:
        return CountExerciseState(
          isSino: false,
          icon: Icons.book_outlined,
          label: HD.t('books'),
          count: hanNumb.digit,
          correctAnswer: hanNumb.alternate,
          counter: '권',
        );

      case 5:
        return CountExerciseState(
          isSino: false,
          icon: Icons.local_pizza_outlined,
          label: HD.t('slices'),
          count: hanNumb.digit,
          correctAnswer: hanNumb.alternate,
          counter: '조각',
        );

      case 6:
        return CountExerciseState(
          isSino: false,
          icon: Icons.car_rental_outlined,
          label: HD.t('cars_machines'),
          count: hanNumb.digit,
          correctAnswer: hanNumb.alternate,
          counter: '대',
        );
    }
  }

  static int getMaxIndex() {
    return COUNT_EXERCISE_COUNT;
  }
}
