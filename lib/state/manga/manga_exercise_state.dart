import 'dart:collection';

import 'package:nalelu/state/manga/models.dart';

class MangaExerciseState {
  Map<PhrasePart, String> userInput = new HashMap<PhrasePart, String>();
  MangaExerciseModel mangaExerciseModel;

  MangaExerciseState({required this.mangaExerciseModel});

  clear() {
    userInput.clear();
  }

  // void fillArray(Phr index) {
  //   if (userInput.length == 0) {
  //     userInput.add('');
  //   }

  //   while (userInput.length <= index) {
  //     userInput.add('');
  //   }
  // }

  List<String> getCorrectAnswers(PhrasePart? phrasePart) {
    List<String> correctAnswers = [];
    phrasePart!.furiTexts.map((e) => {correctAnswers.add(e.text), correctAnswers.add(e.furigana),});

    return correctAnswers;
  }

  String getUserInput(PhrasePart? phrasePart) {
    // fillArray(indexOf(phrasePart.furiTexts));
    return this.userInput[phrasePart] ?? '';
  }

  bool isCorrect(PhrasePart? phrasePart) {
    // TODO: Implement this
    return false;
  }

  updateUserInput(PhrasePart? phrasePart, String newValue) {
    userInput.update(phrasePart!, (value) => newValue);
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
