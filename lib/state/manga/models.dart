import 'package:nalelu/furi_text.dart';

class MangaExerciseModel {
  final String imageUrl;
  final List<Phrase> phrases;

  MangaExerciseModel({required this.imageUrl, required this.phrases});
}

class Phrase {
  final String translation;
  final List<PhrasePart> phraseParts;
  final double top;
  final double left;

  Phrase(
      {required this.translation,
      required this.phraseParts,
      required this.top,
      required this.left});
}

class PhrasePart {
  final bool isAnswerable;
  final List<FuriText> furiTexts;

  PhrasePart({
    this.isAnswerable = false,
    required this.furiTexts,
  });
}
