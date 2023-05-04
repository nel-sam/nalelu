import 'package:flutter/material.dart';
import 'package:nalelu/lang_data/doushi.dart';
import 'package:nalelu/widgets/shared/na_free_form_entry_wrapper.dart';
import 'package:nrs_flutter_lib/constants.dart';
import 'package:nrs_flutter_lib/widgets/n_free_form_entry.dart';

class VerbInput extends StatelessWidget {
  final Doushi doushi;
  final String hintValue;

  final String correctValue;
  final String activeValue;
  final Function(String) onSubmitted;
  final Function onCorrect;

  const VerbInput({
    Key? key,
    required this.doushi,
    required this.correctValue,
    required this.activeValue,
    required this.onSubmitted,
    required this.onCorrect,
    required this.hintValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isCorrect = correctValue == this.activeValue;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            isCorrect
                ? Row(
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
                  )
                : NaFreeFormEntryWrapper(
                    widthType: NFreeFormWidths.half,
                    hintValue: hintValue,
                    onChanged: (String newValue) {
                      onSubmitted(newValue);
                    },
                    initialValue: activeValue,
                    correctValues: [correctValue],
                    onCorrect: onCorrect,
                  )
          ],
        ),
      ],
    );
  }
}
