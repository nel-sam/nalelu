import 'package:nalelu/furi_text.dart';
import 'package:nalelu/widgets/shared/furigana_text.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:material_ui/material_ui.dart';

@widgetbook.UseCase(name: 'Default', type: FuriganaText)
Widget buildCoachFeedbackUseCase(BuildContext context) {
  return FuriganaText(
    furiTexts: [
      FuriText(text: '人', furigana: '？', emphasize: true),
      FuriText(text: 'がいっぱい'),
    ],
  );
}
