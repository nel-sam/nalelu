import 'package:nalelu/state/manga/models.dart';

class MangaExerciseState {
  List<String> userInput = [];
  MangaExerciseModel mangaExerciseModel;

  MangaExerciseState({required this.mangaExerciseModel});

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

  isCorrect(int i) {
    // TODO: Implement this
  }

  updateUserInput(int index, String newValue) {
    fillArray(index);
    userInput[index] = newValue;
  }

  getCorrectAnswers(int i) {}
}

// class MangaExerciseState {
//   List<String> userInput = [];
//   late bool isCorrect;

//   MangaExerciseState();

//   getUserInput(int index) {
//     fillArray(index);
//     return userInput[index];
//   }

//   void fillArray(int index) {
//     if (userInput.length == 0) {
//       userInput.add('');
//     }

//     while (userInput.length <= index) {
//       userInput.add('');
//     }
//   }

//   updateUserInput(int index, String newValue) {
//     fillArray(index);
//     userInput[index] = newValue;
//   }

//   clear() {
//     userInput.clear();
//   }

// }