import 'dart:collection';

import 'package:nalelu/state/manga/models.dart';

class MangaExerciseState {
  Map<String, String> userInput = new HashMap<String, String>();
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

    return this.userInput[_getInputKey(phrasePart)] ?? '';
  }

  bool isPhraseCorrect(Phrase phrase) {
    return phrase.phraseParts.every((element) => isPhrasePartCorrect(element));
  }

  bool isPhrasePartCorrect(PhrasePart? phrasePart) {
    if (phrasePart == null) return false;

    final correctAnswers = getCorrectAnswers(phrasePart);
    final currentInput = getUserInput(phrasePart);
    final isCorrect = correctAnswers.contains(currentInput);
    return isCorrect;
  }

  updateUserInput(PhrasePart? phrasePart, String newValue) {
    if (phrasePart == null) return;
    userInput[_getInputKey(phrasePart)] = newValue;
  }

  String _getInputKey(PhrasePart phrasePart) {
    return phrasePart.furiTexts.join();
  }
}
