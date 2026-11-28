import 'dart:collection';

import 'package:nalelu/lang_data/doushi.dart';

class DoushiExerciseState {
  HashMap<int, String> userInput = HashMap<int, String>();
  Doushi doushi;

  DoushiExerciseState({required this.doushi});

  String getUserInput(int index) {
    return userInput[index] ?? '';
  }

  void updateUserInput(int index, String newValue) {
    userInput[index] = newValue;
  }

  void clear() {
    userInput.clear();
  }
}
