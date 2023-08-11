import 'package:flutter/material.dart';
import 'package:nalelu/lang_data/doushi.dart';
import 'package:nalelu/widgets/shared/na_free_form_entry_wrapper.dart';
import 'package:nrs_flutter_lib/widgets/n_free_form_entry.dart';

class VerbInput extends StatelessWidget {
  final Doushi doushi;
  final String hintValue;
  final String labelText;
  final List<String> correctValues;
  final String activeValue;
  final Function(String) onSubmitted;
  final Function onCorrect;

  const VerbInput({
    Key? key,
    required this.doushi,
    required this.correctValues,
    required this.activeValue,
    required this.onSubmitted,
    required this.onCorrect,
    required this.hintValue,
    this.labelText = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NaFreeFormEntryWrapper(
      showBoxLabel: true,
      showMaxLength: false,
      widthType: NFreeFormWidths.full,
      labelText: labelText,
      hintValue: hintValue,
      onChanged: (String newValue) {
        onSubmitted(newValue);
      },
      initialValue: activeValue,
      correctValues:
          correctValues.where((element) => element.length > 0).toList(),
      onCorrect: onCorrect,
    );
  }
}
