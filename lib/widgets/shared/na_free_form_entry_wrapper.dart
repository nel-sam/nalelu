import 'package:material_ui/material_ui.dart';
import 'package:nrs_flutter_lib/widgets/n_free_form_entry.dart';

class NaFreeFormEntryWrapper extends StatelessWidget {
  final Function(String) onChanged;
  final Function onCorrect;
  final bool isAnswerCentered;
  final String initialValue;
  final List<String> correctValues;
  final NFreeFormWidths widthType;
  final String labelText;
  final bool showMaxLength;
  final bool readOnly;
  final String hintValue;
  final bool showBoxLabel;

  const NaFreeFormEntryWrapper({
    super.key,
    this.isAnswerCentered = true,
    required this.onChanged,
    required this.onCorrect,
    required this.initialValue,
    required this.correctValues,
    required this.widthType,
    this.labelText = '',
    this.showMaxLength = true,
    this.readOnly = false,
    this.showBoxLabel = false,
    required this.hintValue,
  });

  @override
  Widget build(BuildContext context) {
    return NFreeFormEntry(
      showBoxLabel: showBoxLabel,
      isAnswerCentered: isAnswerCentered,
      showMaxLength: showMaxLength,
      widthType: NFreeFormWidths.half,
      labelText: labelText,
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
        onChanged(newValue);
      },
      onCorrect: onCorrect,
      initialValue: initialValue,
      correctValues: correctValues,
      readOnly: readOnly,
    );
  }
}
