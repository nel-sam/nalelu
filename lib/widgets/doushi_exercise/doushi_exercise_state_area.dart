import 'package:flutter/material.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/state/doushi/doushi_exercise_state.dart';
import 'package:nalelu/widgets/doushi_exercise/verb_input.dart';
import 'package:nrs_flutter_lib/constants.dart';
import 'package:nrs_flutter_lib/widgets/n_hint_button.dart';
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
  bool isHintActive = false;

  Widget build(BuildContext context) {
    bool isPresentCorrect =
        widget.state.doushi.casual.present == widget.state.getUserInput(0);
    bool isPastCorrect =
        widget.state.doushi.casual.past == widget.state.getUserInput(1);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NTextSpan(
              widget.state.doushi.infinitive,
              textStyle: NA.fontStyleBold(context),
              textAlign: TextAlign.end,
            ),
            SizedBox(width: FONT_SIZE),
            NTextSpan(widget.state.doushi.translation),
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: NTextSpan(
            NA.t('present'),
            textAlign: TextAlign.end,
          ),
        ),
        VerbInput(
          doushi: widget.state.doushi,
          activeValue: widget.state.getUserInput(0),
          correctValue: widget.state.doushi.casual.present,
          onSubmitted: (String newValue) {
            setState(() {
              widget.state.updateUserInput(0, newValue);
            });
          },
          onHintUpdate: (String hint) => {
                  setState(() {
                    widget.state.updateUserInput(0, hint);
                  })
                },
        ),
        NTextSpan(
          NA.t('past'),
          textAlign: TextAlign.end,
        ),
        VerbInput(
          doushi: widget.state.doushi,
          activeValue: widget.state.getUserInput(1),
          correctValue: widget.state.doushi.casual.past,
          onSubmitted: (String newValue) {
            setState(() {
              widget.state.updateUserInput(1, newValue);
            });
          
          },
          onHintUpdate: (String hint) => {
                  setState(() {
                    widget.state.updateUserInput(1, hint);
                  })
                },
        ),
      ],
    );
  }
}
