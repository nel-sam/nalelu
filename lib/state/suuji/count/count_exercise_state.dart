import 'package:material_ui/material_ui.dart';

class CountExerciseState {
  final IconData icon;
  final String label;
  final int count;
  final List<String> correctAnswers;
  final String counter;
  final bool isSino;
  String userInput = '';

  CountExerciseState({
    required this.icon,
    required this.label,
    required this.isSino,
    required this.count,
    required this.counter,
    required this.correctAnswers,
  });

  String clear() {
    return userInput = '';
  }

  bool getIsCorrect() {
    return correctAnswers.contains(userInput);
  }

   void updateCount(String userInput) {
    this.userInput = userInput;
  }
}
