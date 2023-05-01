import 'package:flutter/material.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nrs_flutter_lib/widgets/n_free_form_entry.dart';

class NaFreeFormEntryWrapper extends StatelessWidget {
  final Function(String) onSubmitted;
  final String initialValue;
  final List<String> correctValues;
  final NFreeFormWidths widthType;
  final String hintValue;
  final Function(String) onHintUpdate;

  NaFreeFormEntryWrapper({
    Key? key,
    required this.onSubmitted,
    required this.initialValue,
    required this.correctValues,
    required this.widthType,
    required this.hintValue,
    required this.onHintUpdate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NFreeFormEntry(
      widthType: NFreeFormWidths.half,
      hintValue: '',
      onSubmitted: (String newValue) {
        final isOnlyJapaneseText =
            RegExp(r'^[ぁ-んァ-ンー一-龥]+$').hasMatch(newValue);

        if (!isOnlyJapaneseText) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(NA.t('only_japanese_text_allowed')),
          ));
          return;
        }

        this.onSubmitted(newValue);
      },
      initialValue: this.initialValue,
      correctValues: this.correctValues,
      onHintUpdate: this.onHintUpdate,
    );
  }
}
