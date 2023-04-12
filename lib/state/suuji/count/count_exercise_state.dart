import 'package:flutter/material.dart';

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

  clear() {
    return this.userInput = '';
  }

  bool getIsCorrect() {
    return this.correctAnswers.contains(this.userInput);
  }
}
