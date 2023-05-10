import 'package:nalelu/lang_data/kanji.dart';

class KanjiExerciseState {
  List<String> userInput = [];
  Kanji kanji;

  KanjiExerciseState({required this.kanji});

  clear() {
    userInput.clear();
  }

  void fillArray(int index) {
    if (userInput.length == 0) {
      userInput.add('');
    }

    while (userInput.length <= index) {
      userInput.add('');
    }
  }

  getUserInput(int index) {
    fillArray(index);
    return userInput[index];
  }

  updateUserInput(int index, String newValue) {
    fillArray(index);
    userInput[index] = newValue;
  }
}
