import 'package:flutter/material.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/state/suuji/age/age_exercise_state.dart';
import 'package:nalelu/widgets/shared/na_free_form_entry_wrapper.dart';
import 'package:nrs_flutter_lib/enums.dart';
import 'package:nrs_flutter_lib/widgets/n_answer_status_icon.dart';
import 'package:nrs_flutter_lib/widgets/n_free_form_entry.dart';

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
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        !widget.state.getIsCorrect()
            ? Container(
                width: 250,
                child: NaFreeFormEntryWrapper(
                  widthType: NFreeFormWidths.half,
                  hintValue: NA.t('age'),
                  onChanged: (String newValue) {
                    widget.state.updateAge(newValue);
                  },
                  initialValue: widget.state.userInput,
                  correctValues: widget.state.correctAnswers,
                  onCorrect: () {
                    setState(() {});
                  },
                ),
              )
            : Row(
                children: [
                  Text(widget.state.userInput, style: TextStyle(fontSize: 28)),
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
