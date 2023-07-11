import 'package:flutter/material.dart';
import 'package:nalelu/furi_text.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/state/kanji/kanji_exercise_state.dart';
import 'package:nalelu/widgets/shared/furigana_text.dart';
import 'package:nalelu/widgets/shared/na_free_form_entry_wrapper.dart';
import 'package:nalelu/widgets/shared/na_kanji_block.dart';
import 'package:nrs_flutter_lib/widgets/n_free_form_entry.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  bool showTranslations = true;
  bool showFurigana = true;

  @override
  void initState() {
    super.initState();
    loadSettings();
  }

  void loadSettings() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      showTranslations = prefs.getBool('showTranslations') ?? true;
      showFurigana = prefs.getBool('showFurigana') ?? true;
    });
  }

  void saveSettings() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('showTranslations', showTranslations);
    await prefs.setBool('showFurigana', showFurigana);
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Tooltip(
                      message: NA.t('translation'),
                      child: Icon(
                        Icons.translate,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    Switch(
                        value: showTranslations,
                        onChanged: (value) {
                          setState(() {
                            showTranslations = value;
                            saveSettings();
                          });
                        })
                  ],
                ),
                Row(
                  children: [
                    Tooltip(
                      message: NA.t('showfurigana'),
                      child: FuriganaText(
                        fontSize:
                            Theme.of(context).textTheme.titleMedium!.fontSize!,
                        showFurigana: showFurigana,
                        furiTexts: [
                          FuriText(text: '水', furigana: 'みず', emphasize: true)
                        ],
                      ),
                    ),
                    Switch(
                        value: showFurigana,
                        onChanged: (value) {
                          setState(() {
                            showFurigana = value;
                            saveSettings();
                          });
                        })
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
                  children: [
                    Wrap(children: [
                      showTranslations
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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 320),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Wrap(children: [
                            FuriganaText(
                                showFurigana: showFurigana,
                                furiTexts: pa.phraseParts,
                                isCorrect: pa.answer ==
                                    widget.state.getUserInput(inputKey),
                                answer: pa.answer),
                          ]),
                          Wrap(children: [
                            showTranslations
                                ? Text(
                                    pa.translation,
                                    textAlign: TextAlign.center,
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
