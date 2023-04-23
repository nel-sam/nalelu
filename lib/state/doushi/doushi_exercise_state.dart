import 'package:nalelu/lang_data/doushi.dart';

class DoushiExerciseState {
  List<String> userInput = [];
  Doushi doushi;

  DoushiExerciseState({required this.doushi});

  getUserInput(int index) {
    fillArray(index);
    return userInput[index];
  }

  void fillArray(int index) {
    if (userInput.length == 0) {
      userInput.add('');
    }

    while (userInput.length <= index) {
      userInput.add('');
    }
  }

  updateUserInput(int index, String newValue) {
    fillArray(index);
    userInput[index] = newValue;
  }

  clear() {
    userInput.clear();
  }
}
