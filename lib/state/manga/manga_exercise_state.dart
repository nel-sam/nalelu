import 'dart:collection';

import 'package:nalelu/state/manga/models.dart';

class MangaExerciseState {
  Map<PhrasePart, String> userInput = new HashMap<PhrasePart, String>();
  MangaExerciseModel mangaExerciseModel;

  MangaExerciseState({required this.mangaExerciseModel});

  clear() {
    userInput.clear();
  }

  List<String> getCorrectAnswers(PhrasePart? phrasePart) {
    if (phrasePart == null) return [''];
    List<String> correctAnswers = [];
    String text = '';
    String furignana = '';

    for (int i = 0; i < phrasePart.furiTexts.length; i++) {
      text += phrasePart.furiTexts[i].text;
      furignana += phrasePart.furiTexts[i].furigana;
    }

    correctAnswers.add(text);
    correctAnswers.add(furignana);

    return correctAnswers;
  }

  String getUserInput(PhrasePart? phrasePart) {
    if (phrasePart == null) return '';

    return this.userInput[phrasePart] ?? '';
  }

  List<bool> isCorrect(PhrasePart? phrasePart) {
    if (phrasePart == null) return [false];
    List<bool> areCorrects = [];
    
    for (int i = 0; i < phrasePart.furiTexts.length; i++) {
      areCorrects
          .add(getCorrectAnswers(phrasePart)[i] == this.userInput[phrasePart]);
    }
    return areCorrects;
  }

  updateUserInput(PhrasePart? phrasePart, String newValue) {
    if (phrasePart == null) return;
    userInput[phrasePart] = newValue;
  }
}
