import 'package:flutter/material.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/state/kanji/kanji_exercise_state.dart';
import 'package:nalelu/widgets/shared/na_free_form_entry_wrapper.dart';
import 'package:nalelu/widgets/shared/na_kanji_block.dart';
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
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: NAKanjiBlock(
                  kanji: widget.state.kanji.kanji,
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Column(
                      children: [
                        Text(
                          widget.state.kanji.translation,
                          style: TextStyle(fontSize: 12),
                        ),
                        Text('Kun yomi'),
                        Text(
                          widget.state.kanji.kunYomi,
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Text('On yomi'),
                      Text(
                        widget.state.kanji.onYomi,
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        for (var i = 0; i < widget.state.kanji.phrases.length; i++)
          Column(
            children: [
              Text(widget.state.kanji.phrases[i]),
              NaFreeFormEntryWrapper(
                widthType: NFreeFormWidths.half,
                hintValue:
                    widget.state.kanji.kanji + ' ' + NA.t('kanjiToHiragana'),
                onChanged: (String newValue) {
                  widget.state.updateUserInput(i, newValue);
                },
                initialValue: widget.state.getUserInput(i),
                correctValues: [widget.state.kanji.answers[i]],
                onCorrect: () {
                  setState(() {});
                },
              ),
            ],
          ),
      ],
    );
  }
}
