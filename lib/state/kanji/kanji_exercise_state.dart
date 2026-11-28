import 'dart:collection';

import 'package:nalelu/widgets/kanji.dart';

class KanjiExerciseState {
  HashMap<String, String> userInput = HashMap<String, String>();
  Kanji kanji;

  KanjiExerciseState({required this.kanji});

  void clear() {
    userInput.clear();
  }

  String getUserInput(String key) {
    return userInput[key] ?? '';
  }

  void updateUserInput(String key, String newValue) {
    userInput[key] = newValue;
  }
}
