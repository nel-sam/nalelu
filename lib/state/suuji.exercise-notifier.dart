import 'package:flutter/material.dart';
import 'package:nareru/state/models/count-exercise-state.dart';
import 'package:nareru/state/models/suuji-exercise-state.dart';



class SuujiExerciseNotifier with ChangeNotifier {
  late SuujiExerciseState suujiExerciseState;

  SuujiExerciseNotifier() {
    List<CountExerciseState> countExerciseState = [
      CountExerciseState(
        icon: Icons.person,
        count: 3,
        correctAnswer: 'さん',
        counter: '人々の数'
      ),
    ];

    suujiExerciseState = SuujiExerciseState(
      countExercises: countExerciseState
    );
  }
  onUserCountSet(CountExerciseState state, String userInput) {
      state.userInput = userInput;
      notifyListeners();
  }
}