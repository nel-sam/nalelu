import 'package:nalelu/furi_text.dart';
import 'package:nalelu/services/furigana_service.dart';

/// One answered question, serialized as an item of the `Results` array
/// sent to `POST /api/results`.
class CoachAnswer {
  final String question;
  final String correctAnswer;
  final String givenAnswer;

  const CoachAnswer({
    required this.question,
    required this.correctAnswer,
    required this.givenAnswer,
  });

  bool get isCorrect => givenAnswer == correctAnswer;

  Map<String, dynamic> toJson() => {
        'Question': question,
        'CorrectAnswer': correctAnswer,
        'GivenAnswer': givenAnswer,
      };
}

/// Response body of `POST /api/results`.
class CoachFeedback {
  final List<FuriText> feedback;

  const CoachFeedback({required this.feedback});

  factory CoachFeedback.fromJson(Map<String, dynamic> json) {
    final feedback = json['feedback'];
    if (feedback is! String) {
      throw FormatException(
          'Expected "feedback" to be a string, got: $feedback');
    }

    final asFuriTexts = FuriganaService.formattedStringToFuriTexts(feedback);
    return CoachFeedback(feedback: asFuriTexts);
  }
}
