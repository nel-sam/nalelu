class AgeExerciseState {
  final int age;
  final List<String> correctAnswer;
  String userInput = '';

  AgeExerciseState({
    required this.age,
    required this.correctAnswer,
  });

  clear() {
    return this.userInput = '';
  }

  bool getIsCorrect() {
    return this.correctAnswer.contains(this.userInput);
  }
}
