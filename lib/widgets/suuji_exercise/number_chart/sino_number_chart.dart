import 'package:material_ui/material_ui.dart';
import 'package:nalelu/furi_text.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/widgets/suuji_exercise/number_chart/number_block.dart';
import 'package:nalelu/lang_data/numbers.dart';

class SinoNumberChart extends StatelessWidget {
  const SinoNumberChart({super.key});

  @override
  Widget build(BuildContext context) {
    final numbers = <NareNumber>[];
    for (int i = 0; i <= 100; i++) {
      var hn = NA.getSinoNumber(i);
      var written = hn.kanji == hn.written ? hn.written : hn.written;
      var kanji = hn.kanji == hn.kanji ? hn.kanji : hn.kanji;
      numbers.add(NareNumber(digit: hn.digit, written: written, kanji: kanji));
    }

    return Center(
      child: GridView.extent(
        primary: false,
        padding: const EdgeInsets.all(16),
        crossAxisSpacing: 3,
        mainAxisSpacing: 3,
        maxCrossAxisExtent: 130.0,
        children: <Widget>[
          ...numbers.map((e) => NumberBlock(
              digit: e.digit,
              furiTexts: [FuriText(text: e.kanji, furigana: e.written)]))
        ],
      ),
    );
  }
}
