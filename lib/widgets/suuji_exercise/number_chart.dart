import 'package:flutter/material.dart';
import 'package:nareru/furi_text.dart';
import 'package:nareru/lang_data/numbers.dart';
import 'package:nareru/na_helpers.dart';
import 'package:nareru/widgets/shared/na_number_button.dart';
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
            SizedBox(
              height: 200, // constrain height
              child: getNativeNumberChart(context),
            ),
            NSubHeader(NA.t('sinoNumbers')),
            SizedBox(
              height: 300, // constrain height
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
        maxCrossAxisExtent: 100.0,
        children: <Widget>[
          ...nativeNumberBank.getRange(1, 11).map((e) => NANumberButton(
              label: e.digit.toString(),
              transLabel: [FuriText(e.kanji, e.written)]))
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
        maxCrossAxisExtent: 100.0,
        children: <Widget>[
          ...numbers.getRange(0, 101).map((e) => NANumberButton(
              label: e.digit.toString(),
              transLabel: [FuriText(e.kanji, e.written)]))
        ],
      ),
    );
  }
}
