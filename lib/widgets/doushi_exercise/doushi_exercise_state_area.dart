import 'package:flutter/material.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/state/doushi/doushi_exercise_state.dart';
import 'package:nalelu/widgets/doushi_exercise/verb_input.dart';
import 'package:nalelu/widgets/shared/furigana_text.dart';
import 'package:nrs_flutter_lib/widgets/n_text_span.dart';

class DoushiExerciseStateArea extends StatefulWidget {
  final DoushiExerciseState state;
  final bool showVerbFurigana;
  final bool showVerbTranslations;

  const DoushiExerciseStateArea(
      {Key? key,
      required this.state,
      required this.showVerbFurigana,
      required this.showVerbTranslations})
      : super(key: key);

  @override
  State<DoushiExerciseStateArea> createState() =>
      _DoushiExerciseStateAreaState();
}

class _DoushiExerciseStateAreaState extends State<DoushiExerciseStateArea> {
  Widget build(BuildContext context) {
    return Column(
      children: [
        FuriganaText(
            showFurigana: widget.showVerbFurigana,
            fontSize: Theme.of(context).textTheme.headlineSmall!.fontSize!,
            furiTexts: widget.state.doushi.casual.present.toFuriTexts()),

        widget.showVerbTranslations
            ? NTextSpan(widget.state.doushi.translation)
            : Container(),
        // Padding(
        //   padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
        //   child: VerbInput(
        //     doushi: widget.state.doushi,
        //     hintValue: NA.t('infinitive'),
        //     activeValue: widget.state.getUserInput(6),
        //     correctValues: [widget.state.doushi.infinitive],
        //     onSubmitted: (String newValue) {
        //       widget.state.updateUserInput(6, newValue);
        //     },
        //     onCorrect: () {
        //       WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        //         setState(() {});
        //       });
        //     },
        //   ),
        // ),
        VerbInput(
          labelText: NA.t('positive'),
          doushi: widget.state.doushi,
          hintValue: NA.t('present'),
          activeValue: widget.state.getUserInput(0),
          correctValues: [
            widget.state.doushi.casual.present.kanaWord,
            widget.state.doushi.casual.present.kanjiWord
          ],
          onSubmitted: (String newValue) {
            widget.state.updateUserInput(0, newValue);
          },
          onCorrect: () {
            WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
              setState(() {});
            });
          },
        ),
        VerbInput(
          labelText: NA.t('positive'),
          doushi: widget.state.doushi,
          hintValue: NA.t('past'),
          activeValue: widget.state.getUserInput(1),
          correctValues: [
            widget.state.doushi.casual.pastSimple.kanaWord,
            widget.state.doushi.casual.pastSimple.kanjiWord
          ],
          onSubmitted: (String newValue) {
            widget.state.updateUserInput(1, newValue);
          },
          onCorrect: () {
            WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
              setState(() {});
            });
          },
        ),
        VerbInput(
          labelText: NA.t('negative'),
          doushi: widget.state.doushi,
          hintValue: NA.t('present'),
          activeValue: widget.state.getUserInput(2),
          correctValues: [
            widget.state.doushi.casual.negative.kanaWord,
            widget.state.doushi.casual.negative.kanjiWord
          ],
          onSubmitted: (String newValue) {
            widget.state.updateUserInput(2, newValue);
          },
          onCorrect: () {
            WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
              setState(() {});
            });
          },
        ),
        VerbInput(
          labelText: NA.t('negative'),
          doushi: widget.state.doushi,
          hintValue: NA.t('past'),
          activeValue: widget.state.getUserInput(3),
          correctValues: [
            widget.state.doushi.casual.negativePast.kanaWord,
            widget.state.doushi.casual.negativePast.kanjiWord
          ],
          onSubmitted: (String newValue) {
            widget.state.updateUserInput(3, newValue);
          },
          onCorrect: () {
            WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
              setState(() {});
            });
          },
        ),
        widget.state.doushi.casual.presentProgressive.kanaWord.length != 0
            ? VerbInput(
                labelText: NA.t('positive'),
                doushi: widget.state.doushi,
                hintValue: NA.t('presentProgressive'),
                activeValue: widget.state.getUserInput(4),
                correctValues: [
                  widget.state.doushi.casual.presentProgressive.kanaWord,
                  widget.state.doushi.casual.presentProgressive.kanjiWord
                ],
                onSubmitted: (String newValue) {
                  widget.state.updateUserInput(4, newValue);
                },
                onCorrect: () {
                  WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
                    setState(() {});
                  });
                },
              )
            : Container(),
        widget.state.doushi.casual.negativePresentProgressive.kanaWord.length !=
                0
            ? VerbInput(
                labelText: NA.t('negative'),
                doushi: widget.state.doushi,
                hintValue: NA.t('presentProgressive'),
                activeValue: widget.state.getUserInput(5),
                correctValues: [
                  widget
                      .state.doushi.casual.negativePresentProgressive.kanaWord,
                  widget
                      .state.doushi.casual.negativePresentProgressive.kanjiWord
                ],
                onSubmitted: (String newValue) {
                  widget.state.updateUserInput(5, newValue);
                },
                onCorrect: () {
                  WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
                    setState(() {});
                  });
                },
              )
            : Container(),
        VerbInput(
          labelText: NA.t('positive'),
          doushi: widget.state.doushi,
          hintValue: NA.t('teform'),
          activeValue: widget.state.getUserInput(6),
          correctValues: [
            widget.state.doushi.casual.teForm.kanaWord,
            widget.state.doushi.casual.teForm.kanjiWord
          ],
          onSubmitted: (String newValue) {
            widget.state.updateUserInput(6, newValue);
          },
          onCorrect: () {
            WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
              setState(() {});
            });
          },
        ),
        VerbInput(
          labelText: NA.t('negative'),
          doushi: widget.state.doushi,
          hintValue: NA.t('teform'),
          activeValue: widget.state.getUserInput(7),
          correctValues: [
            widget.state.doushi.casual.negativeTeForm.kanaWord,
            widget.state.doushi.casual.negativeTeForm.kanjiWord
          ],
          onSubmitted: (String newValue) {
            widget.state.updateUserInput(7, newValue);
          },
          onCorrect: () {
            WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
              setState(() {});
            });
          },
        ),
      ],
    );
  }
}
