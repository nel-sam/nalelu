class CoachQuestion {
  final String question;
  final List<String> testedAbilities;
  final int correctAnswerIndex;
  final List<String> choices;

  const CoachQuestion({
    required this.question,
    required this.testedAbilities,
    required this.correctAnswerIndex,
    required this.choices,
  });

  factory CoachQuestion.fromJson(Map<String, dynamic> json) {
    List<String> stringList(String key) {
      final value = json[key];
      if (value is! List) {
        throw FormatException('Expected "$key" to be a list, got: $value');
      }
      return List<String>.from(value);
    }

    return CoachQuestion(
      question: json['question'] as String,
      testedAbilities: stringList('tested-abilities'),
      correctAnswerIndex: json['correct-answer-index'] as int,
      choices: stringList('choices'),
    );
  }

  String get correctAnswer => choices[correctAnswerIndex];
}
