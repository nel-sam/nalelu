import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:nalelu/state/suuji/jikan/jikan_exercise_state.dart';
import 'package:nalelu/widgets/shared/na_free_form_entry_wrapper.dart';
import 'package:nalelu/widgets/suuji_exercise/jikan_exercise/jikan_exercise.dart';
import 'package:nrs_flutter_lib/enums.dart';
import 'package:nrs_flutter_lib/widgets/n_answer_status_icon.dart';
import 'package:nrs_flutter_lib/widgets/n_free_form_entry.dart';
import 'package:nrs_flutter_lib/widgets/n_hint_button.dart';

class JikanExerciseStateArea extends StatefulWidget {
  final JikanExerciseState state;
  const JikanExerciseStateArea({required this.state, Key? key}) : super(key: key);

  @override
  State<JikanExerciseStateArea> createState() => _JikanExerciseStateAreatate();
}

class _JikanExerciseStateAreatate extends State<JikanExerciseStateArea> {
  @override
  final double textFieldWidth = 250;
  bool isHintActive = false;

  Widget build(BuildContext context) {

    var isHourCorrect = widget.state.correctHours.contains(widget.state.userHour)
        ? CorrectStatus.correct
        : CorrectStatus.unstarted;
    var isMinCorrect = widget.state.correctMins.contains(widget.state.userMin)
        ? CorrectStatus.correct
        : CorrectStatus.unstarted;
    var isSecCorrect = widget.state.correctSecs.contains(widget.state.userSec)
        ? CorrectStatus.correct
        : CorrectStatus.unstarted;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          !widget.state.correctHours.contains(widget.state.userHour)
              ? NHintButton(
                  onHintActive: (bool onHintActive) =>
                      isHintActive = onHintActive,
                  userInput: widget.state.userHour,
                  correctAnswer: widget.state.correctHours[0],
                  onHintUpdate: (String hint) => {
                         setState(() {
                        widget.state.updateHour(hint);
                      })
                      })
              : Container(),
          !widget.state.correctHours.contains(widget.state.userHour)
              ? Container(
                  width: textFieldWidth,
                  child: NaFreeFormEntryWrapper(
                    widthType: NFreeFormWidths.full,
                    hintValue: '',
                    onChanged: (String newValue) =>
                        widget.state.updateHour(newValue),
                    initialValue: widget.state.userHour,
                    correctValues: widget.state.correctHours,
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(widget.state.userHour, style: TextStyle(fontSize: 20)),
                    NAnswerStatusIcon(status: isHourCorrect),
                  ],
                ),
        ]),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            !widget.state.correctMins.contains(widget.state.userMin)
                ? NHintButton(
                    onHintActive: (bool onHintActive) =>
                        isHintActive = onHintActive,
                    userInput: widget.state.userMin,
                    correctAnswer: widget.state.correctMins[0],
                    onHintUpdate: (String hint) => {
                          setState(() {
                        widget.state.updateMin(hint);
                      })
                        })
                : Container(),
            !widget.state.correctMins.contains(widget.state.userMin)
                ? Container(
                    width: textFieldWidth,
                    child: NaFreeFormEntryWrapper(
                      widthType: NFreeFormWidths.full,
                      hintValue: '',
                      onChanged: (String newValue) =>
                          widget.state.updateMin(newValue),
                      initialValue: widget.state.userMin,
                      correctValues: widget.state.correctMins,
                    ),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(widget.state.userMin, style: TextStyle(fontSize: 20)),
                      NAnswerStatusIcon(status: isMinCorrect),
                    ],
                  ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            !widget.state.correctSecs.contains(widget.state.userSec)
                ? NHintButton(
                    onHintActive: (bool onHintActive) =>
                        isHintActive = onHintActive,
                    userInput: widget.state.userSec,
                    correctAnswer: widget.state.correctSecs[0],
                    onHintUpdate: (String hint) => {
                         setState(() {
                        widget.state.updateSec(hint);
                      })
                        })
                : Container(),
            !widget.state.correctSecs.contains(widget.state.userSec)
                ? Container(
                    width: textFieldWidth,
                    child: NaFreeFormEntryWrapper(
                      widthType: NFreeFormWidths.full,
                      hintValue: '',
                      onChanged: (String newValue) =>
                          widget.state.updateSec(newValue),
                      initialValue: widget.state.userSec,
                      correctValues: widget.state.correctSecs,
                    ),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(widget.state.userSec, style: TextStyle(fontSize: 20)),
                      NAnswerStatusIcon(status: isSecCorrect),
                    ],
                  ),
          ],
        ),
      ],
    );
  }
}
