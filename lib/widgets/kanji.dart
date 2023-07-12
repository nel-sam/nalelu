import 'package:nalelu/furi_text.dart';
class Kanji {
  final String kanji;
  final String onYomi;
  final String kunYomi;
  final String translation;
  List<PhraseAnswer> phraseAnswers;

  Kanji({
    required this.translation,
    required this.kanji,
    required this.onYomi,
    required this.kunYomi,
    required this.phraseAnswers,
  });

  Map<String, dynamic> toJson() {
    return {
      'kanji': kanji,
      'onYomi': onYomi,
      'kunYomi': kunYomi,
      'translation': translation,
      'phraseAnswers': phraseAnswers.map((e) => e.toJson()).toList(),
    };
  }

  factory Kanji.fromJson(Map<String, dynamic> json) {
    List<dynamic> phraseAnswersJson = json['phraseAnswers'] ?? [];
    List<PhraseAnswer> phraseAnswers =
        phraseAnswersJson.map((e) => PhraseAnswer.fromJson(e)).toList();
    return Kanji(
      kanji: json['kanji'],
      onYomi: json['onYomi'],
      kunYomi: json['kunYomi'],
      translation: json['translation'],
      phraseAnswers: phraseAnswers,
    );
  }
}

class PhraseAnswer {
  final List<FuriText> phraseParts;
  final String answer;
  final String translation;

  PhraseAnswer({
    required this.phraseParts,
    required this.answer,
    required this.translation,
  });

  Map<String, dynamic> toJson() {
    return {
      'phraseParts': phraseParts.map((e) => e.toJson()).toList(),
      'answer': answer,
      'translation': translation,
    };
  }

    factory PhraseAnswer.fromJson(Map<String, dynamic> json) {
    List<dynamic> phrasePartsJson = json['phraseParts'] ?? [];
    List<FuriText> phraseParts = phrasePartsJson.map((e) => FuriText.fromJson(e)).toList();
    return PhraseAnswer(
      phraseParts: phraseParts,
      answer: json['answer'],
      translation: json['translation'],
    );
  }
}
