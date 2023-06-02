import 'package:flutter/material.dart';
import 'package:nalelu/furi_text.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/state/doushi/doushi_exercise_state.dart';
import 'package:nalelu/widgets/doushi_exercise/verb_input.dart';
import 'package:nalelu/widgets/shared/furigana_text.dart';
import 'package:nrs_flutter_lib/widgets/n_text_span.dart';

class DoushiExerciseStateArea extends StatefulWidget {
  final DoushiExerciseState state;

  const DoushiExerciseStateArea({Key? key, required this.state})
      : super(key: key);

  @override
  State<DoushiExerciseStateArea> createState() =>
      _DoushiExerciseStateAreaState();
}

class _DoushiExerciseStateAreaState extends State<DoushiExerciseStateArea> {
  Widget build(BuildContext context) {
    return Column(
      children: [
        FuriganaText(furiTexts: [
          FuriText(
              emphasize: true,
              text: widget.state.doushi.casual.present.kanjiWord,
              furigana: widget.state.doushi.casual.present.kanaWord)
        ]),
        NTextSpan(widget.state.doushi.translation),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: VerbInput(
            doushi: widget.state.doushi,
            hintValue: NA.t('infinitive'),
            activeValue: widget.state.getUserInput(6),
            correctValues: [widget.state.doushi.infinitive],
            onSubmitted: (String newValue) {
              widget.state.updateUserInput(6, newValue);
            },
            onCorrect: () {
              setState(() {});
            },
          ),
        ),
        VerbInput(
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
            setState(() {});
          },
        ),
        VerbInput(
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
            setState(() {});
          },
        ),
        VerbInput(
          doushi: widget.state.doushi,
          hintValue: NA.t('negative'),
          activeValue: widget.state.getUserInput(2),
          correctValues: [
            widget.state.doushi.casual.negative.kanaWord,
            widget.state.doushi.casual.negative.kanjiWord
          ],
          onSubmitted: (String newValue) {
            widget.state.updateUserInput(2, newValue);
          },
          onCorrect: () {
            setState(() {});
          },
        ),
        VerbInput(
          doushi: widget.state.doushi,
          hintValue: NA.t('negativePast'),
          activeValue: widget.state.getUserInput(3),
          correctValues: [
            widget.state.doushi.casual.negativePast.kanaWord,
            widget.state.doushi.casual.negativePast.kanjiWord
          ],
          onSubmitted: (String newValue) {
            widget.state.updateUserInput(3, newValue);
          },
          onCorrect: () {
            setState(() {});
          },
        ),
        widget.state.doushi.casual.presentProgressive.kanjiWord.length != 0
            ? VerbInput(
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
                  setState(() {});
                },
              )
            : Container(),
        widget.state.doushi.casual.negativePresentProgressive.kanjiWord
                    .length !=
                0
            ? VerbInput(
                doushi: widget.state.doushi,
                hintValue: NA.t('negativePresentProgressive'),
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
                  setState(() {});
                },
              )
            : Container(),
      ],
    );
  }
}
