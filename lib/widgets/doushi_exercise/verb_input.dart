import 'package:flutter/material.dart';
import 'package:nareru/lang_data/doushi.dart';
import 'package:nareru/widgets/shared/question_free_form.dart';
import 'package:nrs_flutter_lib/constants.dart';
import 'package:nrs_flutter_lib/widgets/n_text_span.dart';

class VerbInput extends StatelessWidget {
  final Doushi doushi;

  final String label;
  final String correctValue;
  final String activeValue;
  final Function(String) onChanged;
  const VerbInput({
    Key? key,
    required this.doushi,
    required this.label,
    required this.correctValue,
    required this.activeValue,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isCorrect = activeValue == correctValue;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: NTextSpan(
            label,
            textAlign: TextAlign.end,
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: QuestionFreeForm(
                isActive: false,
                maxLength: correctValue.length,
                activeValue: activeValue,
                hintValue: doushi.infinitive,
                correctValues: [correctValue],
                onChanged: (String newValue) {
                  onChanged(newValue);
                },
              ),
            ),
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
    );
  }
}
