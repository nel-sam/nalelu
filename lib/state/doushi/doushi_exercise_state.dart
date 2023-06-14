import 'dart:collection';

import 'package:nalelu/lang_data/doushi.dart';

class DoushiExerciseState {
  HashMap<int, String> userInput = new HashMap<int, String>();
  Doushi doushi;

  DoushiExerciseState({required this.doushi});

  getUserInput(int index) {
    return userInput[index] ?? '';
  }

  updateUserInput(int index, String newValue) {
    userInput[index] = newValue;
  }

  clear() {
    userInput.clear();
  }
}
