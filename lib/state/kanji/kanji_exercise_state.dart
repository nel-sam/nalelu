import 'dart:collection';

import 'package:nalelu/widgets/kanji.dart';

class KanjiExerciseState {
  HashMap<String, String> userInput = new HashMap<String, String>();
  Kanji kanji;

  KanjiExerciseState({required this.kanji});

  clear() {
    userInput.clear();
  }

  getUserInput(String key) {
    return userInput[key] ?? '';
  }

  updateUserInput(String key, String newValue) {
    userInput[key] = newValue;
  }
}
