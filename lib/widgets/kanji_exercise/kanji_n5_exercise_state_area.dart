import 'package:flutter/material.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/state/kanji/kanji_exercise_state.dart';
import 'package:nalelu/widgets/shared/na_free_form_entry_wrapper.dart';
import 'package:nrs_flutter_lib/widgets/n_free_form_entry.dart';

class KanjiN5ExerciseStateArea extends StatefulWidget {
  final KanjiExerciseState state;

  KanjiN5ExerciseStateArea({
    Key? key,
    required this.state,
  }) : super(key: key);

  @override
  State<KanjiN5ExerciseStateArea> createState() => _KanjiN5ExerciseStateArea();
}

class _KanjiN5ExerciseStateArea extends State<KanjiN5ExerciseStateArea> {
  Widget build(BuildContext context) {
    return NaFreeFormEntryWrapper(
      widthType: NFreeFormWidths.half,
      hintValue:  NA.t('kanjiToHiragana'),
      onChanged: (String newValue) {
        widget.state.updateUserInput(0, newValue);
      },
      initialValue: widget.state.getUserInput(0),
      correctValues: widget.state.kanji.answers,
      onCorrect: () {
        setState(() {});
      },
    );
  }
}
