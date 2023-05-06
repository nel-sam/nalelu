import 'package:flutter/material.dart';
import 'package:nalelu/furi_text.dart';
import 'package:nalelu/lang_data/numbers.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/widgets/shared/na_number_block.dart';
import 'package:nrs_flutter_lib/nrs_flutter_lib.dart';
import 'package:nrs_flutter_lib/widgets/n_sub_header.dart';

class NumberChart extends StatelessWidget {
  final TextStyle boldStyle = TextStyle(fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Nrs.NrsAppBar(title: NA.t('numberChart'), context: context),
        body: Column(
          children: <Widget>[
            NSubHeader(NA.t('nativeNumbers')),
            Flexible(
              child: getNativeNumberChart(context),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: NSubHeader(NA.t('sinoNumbers')),
            ),
            Flexible(
              child: getSinoNumberChart(context),
            )
          ],
        ));
  }

  getNativeNumberChart(BuildContext context) {
    List<NareNumber> numbers = [];
    var maxNum = 100;

    for (int i = 0; i <= maxNum; i++) {
      var hn = NA.getSinoNumber(i);
      var written = hn.kanji == hn.written ? hn.written : '${hn.written}';
      var kanji = hn.kanji == hn.kanji ? hn.kanji : '${hn.kanji}';
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
          ...nativeNumberBank.getRange(1, 11).map((e) => NANumberBlock(
              digit: e.digit,
              furiTexts: [FuriText(text: e.kanji, furigana: e.written)]))
        ],
      ),
    );
  }

  getSinoNumberChart(BuildContext context) {
    List<NareNumber> numbers = [];
    var maxNum = 100;

    for (int i = 0; i <= maxNum; i++) {
      var hn = NA.getSinoNumber(i);
      var written = hn.kanji == hn.written ? hn.written : '${hn.written}';
      var kanji = hn.kanji == hn.kanji ? hn.kanji : '${hn.kanji}';
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
          ...numbers.getRange(0, 101).map((e) => NANumberBlock(
              digit: e.digit,
              furiTexts: [FuriText(text: e.kanji, furigana: e.written)]))
        ],
      ),
    );
  }
}
