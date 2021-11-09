import 'package:flutter/material.dart';
import 'package:nareru/state/models/count-exercise-state.dart';
import 'package:nareru/state/models/suuji-exercise-state.dart';
import 'package:nareru/state/models/age-exercise-state.dart';

class SuujiExerciseNotifier with ChangeNotifier {
  late SuujiExerciseState suujiExerciseState;

  SuujiExerciseNotifier() {
    List<CountExerciseState> countExerciseState = [
      CountExerciseState(
          icon: Icons.person, count: 3, correctAnswer: 'さんにん', counter: '人'),
    ];

    List<AgeExerciseState> ageExerciseState = [
      AgeExerciseState(age: 37, correctAnswer: 'さんじゅうななさい', counter: '歳')
    ];

    suujiExerciseState = SuujiExerciseState(
      countExercises: countExerciseState,
      ageExercises: ageExerciseState,
    );
  }

  onUserCountSet(CountExerciseState state, String userInput) {
    state.userInput = userInput;
    notifyListeners();
  }

  onAgeSet(AgeExerciseState state, String userInput) {
    state.userInput = userInput;
    notifyListeners();
  }
}
