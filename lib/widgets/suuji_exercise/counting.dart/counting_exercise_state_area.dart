import 'package:flutter/material.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/state/suuji/count/count_exercise_state.dart';
import 'package:nrs_flutter_lib/widgets/n_free_form_entry.dart';

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
  Widget build(BuildContext context) {
    return NaFreeFormEntryWrapper(
      showMaxLength: false,
      widthType: NFreeFormWidths.half,
      hintValue: NA.t('counter'),
      onChanged: (String newValue) => widget.state.updateCount(newValue),
      initialValue: widget.state.userInput,
      correctValues: widget.state.correctAnswers,
      onCorrect: () {
        setState(() {});
      },
    );
  }
}
