class AgeExerciseState {
  final int age;
  final List<String> correctAnswer;
  String userInput = '';

  AgeExerciseState({
    required this.age,
    required this.correctAnswer,
  });

  bool getIsCorrect() {
    return userInput == correctAnswer[0] || userInput == correctAnswer[1];
  }

  clear() {
    return this.userInput = '';
  }
}
