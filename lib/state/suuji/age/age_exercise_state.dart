class AgeExerciseState {
  final int age;
  final List<String> correctAnswers;
  String userInput = '';

  AgeExerciseState({
    required this.age,
    required this.correctAnswers,
  });

  void clear() {
    userInput = '';
  }

  bool getIsCorrect() {
    return correctAnswers.contains(userInput);
  }

  void updateAge(String newVal) {
    userInput = newVal;
  }
}
