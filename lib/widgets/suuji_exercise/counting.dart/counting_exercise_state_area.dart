import 'package:flutter/material.dart';
import 'package:nalelu/state/suuji/count/count_exercise_state.dart';
import 'package:nrs_flutter_lib/enums.dart';
import 'package:nrs_flutter_lib/widgets/n_answer_status_icon.dart';
import 'package:nrs_flutter_lib/widgets/n_free_form_entry.dart';
import 'package:nrs_flutter_lib/widgets/n_hint_button.dart';

import '../../shared/na_free_form_entry_wrapper.dart';

class CountingExerciseStateArea extends StatefulWidget {
  final CountExerciseState state;
  const CountingExerciseStateArea({required this.state, Key? key})
      : super(key: key);

  @override
  State<CountingExerciseStateArea> createState() =>
      _CountingExerciseStateAreaState();
}

class _CountingExerciseStateAreaState extends State<CountingExerciseStateArea> {
  bool isHintActive = false;

  Widget build(BuildContext context) {
    var isCorrect = widget.state.getIsCorrect()
        ? CorrectStatus.correct
        : CorrectStatus.unstarted;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        !widget.state.correctAnswers.contains(widget.state.userInput)
            ? NHintButton(
                onHintActive: (bool onHintActive) =>
                    isHintActive = onHintActive,
                userInput: widget.state.userInput,
                correctAnswer: widget.state.correctAnswers[0],
                onHintUpdate: (String hint) => {
                      setState(() {
                        widget.state.updateCount(hint);
                      })
                    })
            : Container(),
        !widget.state.correctAnswers.contains(widget.state.userInput)
            ? Container(
                width: 250,
                child: NaFreeFormEntryWrapper(
                  widthType: NFreeFormWidths.half,
                  hintValue: '',
                  onSubmitted: (String newValue) =>
                      widget.state.updateCount(newValue),
                  initialValue: widget.state.userInput,
                  correctValues: widget.state.correctAnswers,
                ),
              )
            : Row(children: [
                Text(widget.state.userInput, style: TextStyle(fontSize: 28)),
                Container(
                    child: NAnswerStatusIcon(
                  status: isCorrect,
                )),
              ]),
      ],
    );
  }
}
