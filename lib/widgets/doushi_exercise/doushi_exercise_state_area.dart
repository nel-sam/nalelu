import 'package:flutter/material.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/state/doushi/doushi_exercise_state.dart';
import 'package:nalelu/widgets/doushi_exercise/verb_input.dart';
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
        NTextSpan(widget.state.doushi.translation),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: VerbInput(
            doushi: widget.state.doushi,
            hintValue: NA.t('present'),
            activeValue: widget.state.getUserInput(0),
            correctValues: widget.state.doushi.casual.present,
            onSubmitted: (String newValue) {
              widget.state.updateUserInput(0, newValue);
            },
            onCorrect: () {
              setState(() {});
            },
          ),
        ),
        VerbInput(
          doushi: widget.state.doushi,
          hintValue: NA.t('past'),
          activeValue: widget.state.getUserInput(1),
          correctValues: widget.state.doushi.casual.pastSimple,
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
          correctValues: widget.state.doushi.casual.negative,
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
          correctValues: widget.state.doushi.casual.negativePast,
          onSubmitted: (String newValue) {
            widget.state.updateUserInput(3, newValue);
          },
          onCorrect: () {
            setState(() {});
          },
        ),
        widget.state.doushi.casual.presentProgressive.first.length != 0
            ? VerbInput(
                doushi: widget.state.doushi,
                hintValue: NA.t('presentProgressive'),
                activeValue: widget.state.getUserInput(4),
                correctValues: widget.state.doushi.casual.presentProgressive,
                onSubmitted: (String newValue) {
                  widget.state.updateUserInput(4, newValue);
                },
                onCorrect: () {
                  setState(() {});
                },
              )
            : Container(),
        widget.state.doushi.casual.negativePresentProgressive.first.length != 0
            ? VerbInput(
                doushi: widget.state.doushi,
                hintValue: NA.t('negativePresentProgressive'),
                activeValue: widget.state.getUserInput(5),
                correctValues:
                    widget.state.doushi.casual.negativePresentProgressive,
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
