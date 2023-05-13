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
    var kanji = widget.state.kanji.kanji;
    return Padding(
      padding: const EdgeInsets.only(top: 18),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NAKanjiBlock(
                kanji: widget.state.kanji.kanji,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Wrap(
                      children: widget.state.kanji.translation
                          .split(' ')
                          .map((t) => Text(
                                t + ' ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ))
                          .toList(),
                    ),
                    Text('Kun yomi'),
                    Wrap(
                      children: widget.state.kanji.kunYomi
                          .split(' ')
                          .map((t) => Text(
                                t + ' ',
                              ))
                          .toList(),
                    ),
                    Text('On yomi'),
                    Wrap(
                      children: widget.state.kanji.onYomi
                          .split(' ')
                          .map((t) => Text(
                                t + ' ',
                              ))
                          .toList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          for (var i = 0; i < widget.state.kanji.phrases.length; i++)
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.state.kanji.phrases[i],
                    style: TextStyle(
                        fontSize: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .fontSize)),
                NaFreeFormEntryWrapper(
                  widthType: NFreeFormWidths.half,
                  hintValue: NA.t('kanjiToHiragana'),
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
      ),
    );
  }
}
