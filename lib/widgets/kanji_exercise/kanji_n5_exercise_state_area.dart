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
          padding: const EdgeInsets.only(bottom: 12.0),
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
        if (widget.state.kanji.phrases.length >= 1)
          Column(
            children: [
              Text(widget.state.kanji.phrases[0]),
              NaFreeFormEntryWrapper(
                widthType: NFreeFormWidths.half,
                hintValue:
                    widget.state.kanji.kanji + ' ' + NA.t('kanjiToHiragana'),
                onChanged: (String newValue) {
                  widget.state.updateUserInput(0, newValue);
                },
                initialValue: widget.state.getUserInput(0),
                correctValues: widget.state.kanji.answers,
                onCorrect: () {
                  setState(() {});
                },
              ),
            ],
          ),
        if (widget.state.kanji.phrases.length >= 2)
          Column(
            children: [
              Text(widget.state.kanji.phrases[1]),
              NaFreeFormEntryWrapper(
                widthType: NFreeFormWidths.half,
                hintValue:
                    widget.state.kanji.kanji + ' ' + NA.t('kanjiToHiragana'),
                onChanged: (String newValue) {
                  widget.state.updateUserInput(1, newValue);
                },
                initialValue: widget.state.getUserInput(1),
                correctValues: widget.state.kanji.answers,
                onCorrect: () {
                  setState(() {});
                },
              ),
            ],
          ),
        if (widget.state.kanji.phrases.length >= 3)
          Column(
            children: [
              Text(widget.state.kanji.phrases[2]),
              NaFreeFormEntryWrapper(
                widthType: NFreeFormWidths.half,
                hintValue:
                    widget.state.kanji.kanji + ' ' + NA.t('kanjiToHiragana'),
                onChanged: (String newValue) {
                  widget.state.updateUserInput(2, newValue);
                },
                initialValue: widget.state.getUserInput(2),
                correctValues: widget.state.kanji.answers,
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
