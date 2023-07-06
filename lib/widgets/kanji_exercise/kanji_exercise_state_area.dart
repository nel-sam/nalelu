import 'package:flutter/material.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/state/kanji/kanji_exercise_state.dart';
import 'package:nalelu/widgets/kanji.dart';
import 'package:nalelu/widgets/shared/furigana_text.dart';
import 'package:nalelu/widgets/shared/na_free_form_entry_wrapper.dart';
import 'package:nalelu/widgets/shared/na_kanji_block.dart';
import 'package:nrs_flutter_lib/widgets/n_free_form_entry.dart';

class KanjiExerciseStateArea extends StatefulWidget {
  final KanjiExerciseState state;
  final bool showKanjiTranslations;
  final bool showPhraseTranslations;
  final bool showFurigana;

  KanjiExerciseStateArea({
    Key? key,
    required this.state,
    required this.showKanjiTranslations,
    required this.showPhraseTranslations,
    required this.showFurigana,
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
                constraints: BoxConstraints(maxWidth: 190),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Wrap(children: [
                      widget.showKanjiTranslations
                          ? Text(widget.state.kanji.translation.toUpperCase(),
                              style: TextStyle(fontWeight: FontWeight.bold))
                          : Container()
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
            (pa) {
              var inputKey = pa.phraseParts.map((pp) => pp.text).join();

              return Row(
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 300),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Wrap(children: [
                            FuriganaText(
                                showFurigana: widget.showFurigana,
                                furiTexts: pa.phraseParts,
                                isCorrect: pa.answer ==
                                    widget.state.getUserInput(inputKey),
                                answer: pa.answer),
                          ]),
                          Wrap(children: [
                            widget.showPhraseTranslations
                                ? Text(
                                    pa.translation,
                                    style: TextStyle(
                                        color: Colors.grey.shade700,
                                        fontSize: Theme.of(context)
                                            .textTheme
                                            .bodySmall!
                                            .fontSize),
                                  )
                                : Container()
                          ]),
                          NaFreeFormEntryWrapper(
                            isAnswerCentered: false,
                            widthType: NFreeFormWidths.full,
                            hintValue: NA.t('kanjiToHiragana'),
                            onChanged: (String newValue) {
                              widget.state.updateUserInput(inputKey, newValue);
                            },
                            initialValue: widget.state.getUserInput(inputKey),
                            correctValues: [pa.answer],
                            onCorrect: () {
                              WidgetsBinding.instance
                                  .addPostFrameCallback((timeStamp) {
                                setState(() {});
                              });
                            },
                          ),
                        ]),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
