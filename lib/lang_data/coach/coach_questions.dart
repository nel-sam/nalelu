import 'dart:core';
import 'dart:convert';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'package:nalelu/furi_text.dart';

const questionBlank = '___';
const unknownTranslationKey = 'unknown';

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
Future<List<CoachQuestion>> get coachQuestionBank async {
  if (_cachedQuestions != null) return _cachedQuestions!;

  final jsonString =
      await rootBundle.loadString('lib/lang_data/coach/question-data.json');
  final jsonData = jsonDecode(jsonString) as List<dynamic>;

  _cachedQuestions = jsonData.map((item) {
    final question = item['question'] as String;
    final choices = (item['choices'] as List<dynamic>).cast<String>();
    final testedAbilities =
        (item['tested-abilities'] as List<dynamic>).cast<String>();
    final correctAnswerIndex = item['correct-answer-index'] as int;

    return CoachQuestion(
      questionParts: _parseQuestionText(question),
      correctAnswerIndex: correctAnswerIndex,
      choices: choices.map((c) => _parseQuestionText(c)).toList(),
      testedAbilities: testedAbilities,
    );
  }).toList();

  return _cachedQuestions!;
}

List<FuriText> _parseQuestionText(String text) {
  // Parse text with (text:furigana) format, e.g. "(私:わたし)は (友達:ともだち)に"
  final parts = <FuriText>[];
  final regex = RegExp(r'\(([^:]+):([^\)]+)\)|([^\(]+)');

  for (final match in regex.allMatches(text)) {
    if (match.group(1) != null) {
      // Has furigana in (text:furigana) format
      parts.add(FuriText(text: match.group(1)!, furigana: match.group(2)!));
    } else if (match.group(3) != null) {
      // Plain text - may contain ___ blanks
      _splitPlainText(match.group(3)!, parts);
    }
  }

  return parts;
}

void _splitPlainText(String text, List<FuriText> parts) {
  final segments = text.split(questionBlank);
  for (int i = 0; i < segments.length; i++) {
    final trimmed = segments[i].trim();
    if (trimmed.isNotEmpty) {
      parts.add(FuriText(text: trimmed));
    }
    // Add blank after each segment except the last
    if (i < segments.length - 1) {
      parts.add(FuriText(text: questionBlank));
    }
  }
}
