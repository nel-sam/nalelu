import 'package:flutter/material.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/state/suuji/jikan/jikan_exercise_state.dart';
import 'package:nalelu/widgets/shared/na_free_form_entry_wrapper.dart';
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
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: textFieldWidth,
          child: NaFreeFormEntryWrapper(
            widthType: NFreeFormWidths.full,
            hintValue: NA.t('hour'),
            onCorrect: () {
              setState(() {});
            },
            onChanged: (String newValue) => widget.state.updateHour(newValue),
            initialValue: widget.state.userHour,
            correctValues: widget.state.correctHours,
          ),
        ),
        Container(
          width: textFieldWidth,
          child: NaFreeFormEntryWrapper(
            widthType: NFreeFormWidths.full,
            hintValue: NA.t('minute'),
            onChanged: (String newValue) => widget.state.updateMin(newValue),
            initialValue: widget.state.userMin,
            correctValues: widget.state.correctMins,
            onCorrect: () {
              setState(() {});
            },
          ),
        ),
        Container(
          width: textFieldWidth,
          child: NaFreeFormEntryWrapper(
            widthType: NFreeFormWidths.full,
            hintValue: NA.t('second'),
            onChanged: (String newValue) => widget.state.updateSec(newValue),
            initialValue: widget.state.userSec,
            correctValues: widget.state.correctSecs,
            onCorrect: () {
              setState(() {});
            },
          ),
        )
      ],
    );
  }
}
