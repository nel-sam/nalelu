class MangaExerciseState {
  final List<String> correctAnswers1;
  String userInput1 = '';
  final List<String> correctAnswers2;
  String userInput2 = '';
  final List<String> correctAnswers3;
  String userInput3 = '';

  MangaExerciseState({
    required this.correctAnswers1,
    required this.correctAnswers2,
    required this.correctAnswers3,
  });

  clear() {
    this.userInput1 = '';
    this.userInput2 = '';
    this.userInput3 = '';
  }

  bool getIsCorrect() {
    return this.correctAnswers1.contains(this.userInput1);
    //  &&
    //     this.correctAnswers2.contains(this.userInput2) &&
    //     this.correctAnswers3.contains(this.userInput3);
    // Still working on this.
  }

  updateAnswer1(String input) {
    this.userInput1 = input;
  }

  updateAnswer2(String input) {
    this.userInput2 = input;
  }

  updateAnswer3(String input) {
    this.userInput2 = input;
  }
}
