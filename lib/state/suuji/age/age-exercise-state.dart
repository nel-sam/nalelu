class AgeExerciseState {
  final int age;
  final String correctAnswer;
  String userInput = '';

  AgeExerciseState({
    required this.age,
    required this.correctAnswer,
  });

  bool getIsCorrect() {
    return userInput == correctAnswer;
  }

  clear() {
    return this.userInput = '';
  }
}
