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
    if (phrasePart == null || !phrasePart.isAnswerable) return [''];
    String kanjiText = '';
    String kanaText = '';

    kanjiText = phrasePart.furiTexts[0].text;
    kanaText = phrasePart.furiTexts[0].furigana;

    if (phrasePart.furiTexts.length > 1) {
      kanjiText += phrasePart.furiTexts[1].text;
      kanaText += phrasePart.furiTexts[1].text;
    }

    if (kanaText == '') {
      kanaText = kanjiText;
    }

    return [kanjiText, kanaText];
  }

  String getUserInput(PhrasePart? phrasePart) {
    if (phrasePart == null) return '';

    return this.userInput[_getInputKey(phrasePart)] ?? '';
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
