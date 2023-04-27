import 'package:nalelu/lang_data/manga_word.dart';

class MangaExerciseState {
  List<String> userInput = [];
  MangaWord mangaWord;

  MangaExerciseState({required this.mangaWord});

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