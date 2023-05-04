import 'package:flutter/material.dart';
import 'package:nrs_flutter_lib/widgets/n_free_form_entry.dart';

class NaFreeFormEntryWrapper extends StatelessWidget {
  final Function(String) onChanged;
  final Function onCorrect;

  final String initialValue;
  final List<String> correctValues;
  final NFreeFormWidths widthType;
  final String hintValue;

  NaFreeFormEntryWrapper({
    Key? key,
    required this.onChanged,
    required this.onCorrect,
    required this.initialValue,
    required this.correctValues,
    required this.widthType,
    required this.hintValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NFreeFormEntry(
      widthType: NFreeFormWidths.half,
      hintValue: hintValue,
      onChanged: (String newValue) {
        // final isOnlyJapaneseText =
        //     RegExp(r'^[ぁ-んァ-ンー一-龥]+$').hasMatch(newValue);

        // if (!isOnlyJapaneseText) {
        //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //     content: Text(NA.t('only_japanese_text_allowed')),
        //   ));
        //   return;
        // }
        this.onChanged(newValue);
      },
      onCorrect: this.onCorrect,
      initialValue: this.initialValue,
      correctValues: this.correctValues,
    );
  }
}
