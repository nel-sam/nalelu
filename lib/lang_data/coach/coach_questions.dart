import 'dart:core';
import 'dart:convert';
import 'package:nalelu/furi_text.dart';
import 'package:nalelu/services/furigana_service.dart';

class CoachQuestion {
  final List<FuriText> questionParts;
  final int correctAnswerIndex;
  final List<List<FuriText>> choices;
  final List<String> testedAbilities;

  CoachQuestion({
    required this.questionParts,
    required this.correctAnswerIndex,
    required this.choices,
    required this.testedAbilities,
  });
}

List<CoachQuestion>? _cachedQuestions;

// Lazy parser pattern
Future<List<CoachQuestion>> getCoachQuestionBank(String questionDataJson) async {
  if (_cachedQuestions != null) return _cachedQuestions!;

  final jsonData = jsonDecode(questionDataJson) as List<dynamic>;

  _cachedQuestions = jsonData.map((item) {
    final question = item['question'] as String;
    final choices = (item['choices'] as List<dynamic>).cast<String>();
    final testedAbilities =
        (item['tested-abilities'] as List<dynamic>).cast<String>();
    final correctAnswerIndex = item['correct-answer-index'] as int;

    return CoachQuestion(
      questionParts: FuriganaService.formattedStringToFuriTexts(question),
      correctAnswerIndex: correctAnswerIndex,
      choices: choices
          .map((c) => FuriganaService.formattedStringToFuriTexts(c))
          .toList(),
      testedAbilities: testedAbilities,
    );
  }).toList();

  return _cachedQuestions!;
}
