class AgeExerciseState {
  final int age;
  final List<String> correctAnswers;
  String userInput = '';

  AgeExerciseState({
    required this.age,
    required this.correctAnswers,
  });

  clear() {
    return this.userInput = '';
  }

  bool getIsCorrect() {
    return this.correctAnswers.contains(this.userInput);
  }
   void updateAge(String newVal) {
    this.userInput = newVal;
  }
}
