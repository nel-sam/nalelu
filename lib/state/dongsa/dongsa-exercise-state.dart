import 'package:nareru/lang_data/dongsa.dart';

class DongsaExerciseState {
  List<String> userInput = [];
  Dongsa dongsa;

  DongsaExerciseState({required this.dongsa});

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
