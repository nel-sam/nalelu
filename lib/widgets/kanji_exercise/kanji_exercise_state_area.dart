import 'package:flutter/material.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/state/kanji/kanji_exercise_state.dart';
import 'package:nalelu/widgets/shared/na_free_form_entry_wrapper.dart';
import 'package:nalelu/widgets/shared/na_kanji_block.dart';
import 'package:nrs_flutter_lib/widgets/n_free_form_entry.dart';

class KanjiExerciseStateArea extends StatefulWidget {
  final KanjiExerciseState state;

  KanjiExerciseStateArea({
    Key? key,
    required this.state,
  }) : super(key: key);

  @override
  State<KanjiExerciseStateArea> createState() => _KanjiExerciseStateArea();
}

class _KanjiExerciseStateArea extends State<KanjiExerciseStateArea> {
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 14),
                child: NAKanjiBlock(
                  kanji: widget.state.kanji.kanji,
                ),
              ),
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 210),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Wrap(children: [
                      Text(widget.state.kanji.translation.toUpperCase(),
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ]),
                    Text('Kun yomi'),
                    Wrap(
                      children: [Text(widget.state.kanji.kunYomi)],
                    ),
                    Text('On yomi'),
                    Wrap(
                      children: [Text(widget.state.kanji.onYomi)],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          ...widget.state.kanji.phraseAnswers.map(
            (pa) => Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(pa.phrase,
                    style: TextStyle(
                        fontSize: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .fontSize)),
                NaFreeFormEntryWrapper(
                  widthType: NFreeFormWidths.half,
                  hintValue: NA.t('kanjiToHiragana'),
                  onChanged: (String newValue) {
                    widget.state.updateUserInput(pa.phrase, newValue);
                  },
                  initialValue: widget.state.getUserInput(pa.phrase),
                  correctValues: [pa.answer],
                  onCorrect: () {
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}