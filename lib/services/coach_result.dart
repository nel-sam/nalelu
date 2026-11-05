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
  final String feedback;

  const CoachFeedback({required this.feedback});

  factory CoachFeedback.fromJson(Map<String, dynamic> json) {
    final feedback = json['feedback'];
    if (feedback is! String) {
      throw FormatException(
          'Expected "feedback" to be a string, got: $feedback');
    }
    return CoachFeedback(feedback: feedback);
  }
}
