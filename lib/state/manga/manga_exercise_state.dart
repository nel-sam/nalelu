class MangaExerciseState {
  final List<String> correctAnswers;
  String userInput = '';

  MangaExerciseState({
    required this.correctAnswers,
  });

  clear() {
    return this.userInput = '';
  }

  bool getIsCorrect() {
    return this.correctAnswers.contains(this.userInput);
  }
}
