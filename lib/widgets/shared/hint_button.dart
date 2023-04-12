import 'package:flutter/material.dart';

class HintButton extends StatelessWidget {
  final String userInput;
  final String correctAnswers;
  final Function(String) onHintUpdate;
  final Function(bool) onHintActive;

  const HintButton({
    Key? key,
    required this.userInput,
    required this.correctAnswers,
    required this.onHintUpdate,
    required this.onHintActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.lightbulb),
      onPressed: () => {getHint(context), onHintActive(true)},
    );
  }

  void getHint(BuildContext context) {
    if (userInput == '') {
      onHintUpdate(correctAnswers[0]);
    } else {
      for (var i = 0; i < correctAnswers.length && i < userInput.length; i++) {
        if (correctAnswers[i] == userInput[i]) {
          onHintUpdate(userInput + correctAnswers[i + 1]);
        } else {
          onHintUpdate(correctAnswers.substring(0, i + 1));
          break;
        }
      }
    }
  }
}
