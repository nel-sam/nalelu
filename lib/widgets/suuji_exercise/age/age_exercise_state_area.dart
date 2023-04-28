import 'package:flutter/material.dart';
import 'package:nalelu/state/suuji/age/age_exercise_state.dart';
import 'package:nalelu/widgets/shared/na_free_form_entry_wrapper.dart';
import 'package:nrs_flutter_lib/enums.dart';
import 'package:nrs_flutter_lib/widgets/n_answer_status_icon.dart';
import 'package:nrs_flutter_lib/widgets/n_free_form_entry.dart';
import 'package:nrs_flutter_lib/widgets/n_hint_button.dart';

class AgeExerciseStateArea extends StatefulWidget {
  final AgeExerciseState state;

  AgeExerciseStateArea({
    Key? key,
    required this.state,
  }) : super(key: key);

  @override
  State<AgeExerciseStateArea> createState() => _MyAgeExerciseStateAreaState();
}

class _MyAgeExerciseStateAreaState extends State<AgeExerciseStateArea> {
  @override
  bool isHintActive = false;

  Widget build(BuildContext context) {
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
                        widget.state.updateAge(hint);
                      })
                    })
            : Container(),
        !widget.state.correctAnswers.contains(widget.state.userInput)
            ? Container(
                width: 250,
                child: NaFreeFormEntryWrapper(
                  widthType: NFreeFormWidths.half,
                  hintValue: '',
                  onChanged: (String newValue) {
                    widget.state.updateAge(newValue);
                  },
                  initialValue: widget.state.userInput,
                  correctValues: widget.state.correctAnswers,
                ),
              )
            : Row(
                children: [
                  Text(widget.state.userInput, style: TextStyle(fontSize: 28)),
                  // TODO: Make 3d
                  NAnswerStatusIcon(
                      status: widget.state.getIsCorrect()
                          ? CorrectStatus.correct
                          : CorrectStatus.unstarted),
                ],
              ),
        Padding(
          padding: const EdgeInsets.all(8.0),
        ),
      ],
    );
  }
}
