import 'package:flutter/src/widgets/framework.dart';
import 'package:nrs_flutter_lib/widgets/n_free_form_entry.dart';

class NaFreeFormEntryWrapper extends StatelessWidget {
  final Function(String) onChanged;
  final String initialValue;
  final List<String> correctValues;
  final NFreeFormWidths widthType;
  final String hintValue;

  NaFreeFormEntryWrapper({
    Key? key,
    required this.onChanged,
    required this.initialValue,
    required this.correctValues,
    required this.widthType,
    required this.hintValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NFreeFormEntry(
      widthType: NFreeFormWidths.half,
      hintValue: '',
      onChanged: (String newValue) {
        final isOnlyJapaneseText =
            RegExp(r'^[ぁ-んァ-ンー一-龥]+$').hasMatch(newValue);
        if (!isOnlyJapaneseText) return;

        this.onChanged(newValue);
      },
      initialValue: this.initialValue,
      correctValues: this.correctValues,
    );
  }
}
