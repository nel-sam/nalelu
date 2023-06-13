import 'package:flutter/material.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/state/suuji/age/age_exercise_state.dart';
import 'package:nalelu/widgets/shared/na_free_form_entry_wrapper.dart';
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
    return NaFreeFormEntryWrapper(
      showMaxLength: false,
      widthType: NFreeFormWidths.half,
      labelText: NA.t('age'),
      onChanged: (String newValue) {
        widget.state.updateAge(newValue);
      },
      initialValue: widget.state.userInput,
      correctValues: widget.state.correctAnswers,
      onCorrect: () {
        setState(() {});
      },
    );
  }
}
