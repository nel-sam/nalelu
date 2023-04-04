import 'package:flutter/material.dart';
import 'package:nareru/constants.dart';
import 'package:nrs_flutter_lib/nrs_flutter_lib.dart';

class HintButton extends StatelessWidget {
  final String userInput;
  final String correctAnswer;
  final Function(String) onHintUpdate;
  final Function(bool) onHintActive;

  const HintButton({
    Key? key,
    required this.userInput,
    required this.correctAnswer,
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
      onHintUpdate(correctAnswer[0]);
    } else {
      for (var i = 0; i < correctAnswer.length && i < userInput.length; i++) {
        if (correctAnswer[i] == userInput[i]) {
          onHintUpdate(userInput + correctAnswer[i + 1]);
        } else {
          onHintUpdate(correctAnswer.substring(0, i + 1));
          break;
        }
      }
    }
  }
}
