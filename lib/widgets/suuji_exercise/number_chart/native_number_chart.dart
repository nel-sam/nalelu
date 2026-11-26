import 'package:material_ui/material_ui.dart';
import 'package:nalelu/furi_text.dart';
import 'package:nalelu/lang_data/numbers.dart';
import 'package:nalelu/widgets/suuji_exercise/number_chart/number_block.dart';

class NativeNumberChart extends StatelessWidget {
  const NativeNumberChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView.extent(
        primary: false,
        padding: const EdgeInsets.all(16),
        crossAxisSpacing: 3,
        mainAxisSpacing: 3,
        maxCrossAxisExtent: 130.0,
        children: <Widget>[
          ...nativeNumberBank.getRange(1, 11).map((e) => NumberBlock(
              digit: e.digit,
              furiTexts: [FuriText(text: e.kanji, furigana: e.written)]))
        ],
      ),
    );
  }
}
