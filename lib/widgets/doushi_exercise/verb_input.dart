import 'package:flutter/material.dart';
import 'package:nalelu/lang_data/doushi.dart';
import 'package:nalelu/widgets/shared/na_free_form_entry_wrapper.dart';
import 'package:nrs_flutter_lib/constants.dart';
import 'package:nrs_flutter_lib/widgets/n_free_form_entry.dart';
import 'package:nrs_flutter_lib/widgets/n_hint_button.dart';

class VerbInput extends StatelessWidget {
  final Doushi doushi;

  final String correctValue;
  final String activeValue;
  final Function(String) onChanged;
  const VerbInput({
    Key? key,
    required this.doushi,
    required this.correctValue,
    required this.activeValue,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isCorrect = !correctValue.contains(this.activeValue);
    bool isHintActive = false;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            correctValue.contains(activeValue)
                ? HintButton(
                    onHintActive: (bool onHintActive) =>
                        isHintActive = onHintActive,
                    userInput: activeValue,
                    correctAnswer: correctValue,
                    onHintUpdate: (String hint) => {onChanged(hint)})
                : Container(),
            correctValue.contains(activeValue)
                ? Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: NaFreeFormEntryWrapper(
                      widthType: NFreeFormWidths.half,
                      hintValue: '',
                      onChanged: (String newValue) {
                        onChanged(newValue);
                      },
                      initialValue: activeValue,
                      correctValues: [correctValue],
                    ),
                  )
                : Row(
                    children: [
                      Text(correctValue, style: TextStyle(fontSize: 28)),
                      isCorrect
                          ? Icon(
                              CORRECT_ANSWER_ICON,
                              color: CORRECT_COLOR,
                            )
                          : Icon(
                              Icons.circle_outlined,
                              color: Colors.grey,
                            ),
                    ],
                  ),
          ],
        ),
      ],
    );
  }
}
