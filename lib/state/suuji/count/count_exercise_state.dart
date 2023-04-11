import 'package:flutter/material.dart';

class CountExerciseState {
  final IconData icon;
  final String label;
  final int count;
  final String correctAnswer;
  final String counter;
  final bool isSino;
  String userInput = '';

  CountExerciseState({
    required this.icon,
    required this.label,
    required this.isSino,
    required this.count,
    required this.counter,
    required this.correctAnswer,
  });

  clear() {
    return this.userInput = '';
  }

  bool getIsCorrect() {
    return this.userInput == this.correctAnswer;
  }
}
