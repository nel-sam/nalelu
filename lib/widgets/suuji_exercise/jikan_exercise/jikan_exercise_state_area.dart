import 'package:flutter/material.dart';
import 'package:nalelu/state/suuji/jikan/jikan_exercise_state.dart';
import 'package:nalelu/widgets/shared/na_free_form_entry_wrapper.dart';
import 'package:nrs_flutter_lib/enums.dart';
import 'package:nrs_flutter_lib/widgets/n_answer_status_icon.dart';
import 'package:nrs_flutter_lib/widgets/n_free_form_entry.dart';

class JikanExerciseStateArea extends StatefulWidget {
  final JikanExerciseState state;
  const JikanExerciseStateArea({required this.state, Key? key})
      : super(key: key);

  @override
  State<JikanExerciseStateArea> createState() => _JikanExerciseStateAreaState();
}

class _JikanExerciseStateAreaState extends State<JikanExerciseStateArea> {
  final double textFieldWidth = 250;
  bool isHintActive = false;

  Widget build(BuildContext context) {
    var isHourCorrect =
        widget.state.correctHours.contains(widget.state.userHour)
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
              ? Container(
                  width: textFieldWidth,
                  child: NaFreeFormEntryWrapper(
                      widthType: NFreeFormWidths.full,
                      hintValue: '',
                      onSubmitted: (String newValue) =>
                          // TODO: Add set state
                          widget.state.updateHour(newValue),
                      initialValue: widget.state.userHour,
                      correctValues: widget.state.correctHours,
                      onHintUpdate: (String hint) => {
                            setState(() {
                              widget.state.updateHour(hint);
                            })
                          }),
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
                ? Container(
                    width: textFieldWidth,
                    child: NaFreeFormEntryWrapper(
                        widthType: NFreeFormWidths.full,
                        hintValue: '',
                        onSubmitted: (String newValue) =>
                            widget.state.updateMin(newValue),
                        initialValue: widget.state.userMin,
                        correctValues: widget.state.correctMins,
                        onHintUpdate: (String hint) => {
                              setState(() {
                                widget.state.updateMin(hint);
                              })
                            }),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(widget.state.userMin,
                          style: TextStyle(fontSize: 20)),
                      NAnswerStatusIcon(status: isMinCorrect),
                    ],
                  ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            !widget.state.correctSecs.contains(widget.state.userSec)
                ? Container(
                    width: textFieldWidth,
                    child: NaFreeFormEntryWrapper(
                        widthType: NFreeFormWidths.full,
                        hintValue: '',
                        onSubmitted: (String newValue) =>
                            widget.state.updateSec(newValue),
                        initialValue: widget.state.userSec,
                        correctValues: widget.state.correctSecs,
                        onHintUpdate: (String hint) => {
                              setState(() {
                                widget.state.updateSec(hint);
                              })
                            }),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(widget.state.userSec,
                          style: TextStyle(fontSize: 20)),
                      NAnswerStatusIcon(status: isSecCorrect),
                    ],
                  ),
          ],
        ),
      ],
    );
  }
}
