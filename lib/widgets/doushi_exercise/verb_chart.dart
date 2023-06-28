import 'package:flutter/material.dart';
import 'package:nalelu/furi_text.dart';
import 'package:nalelu/lang_data/doushi.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/widgets/shared/ad_card.dart';
import 'package:nalelu/widgets/shared/furigana_text.dart';
import 'package:nrs_flutter_lib/nrs_flutter_lib.dart';

class ChartRow extends StatelessWidget {
  final String label;
  final List<FuriText> furiText;

  const ChartRow({
    Key? key,
    required this.label,
    required this.furiText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('$label :'),
            FuriganaText(
              furiTexts: furiText,
            ),
          ],
        ),
      ),
    );
  }
}

class VerbChart extends StatelessWidget {
  final Doushi doushi;

  const VerbChart({
    Key? key,
    required this.doushi,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: Nrs.NrsAppBar(title: doushi.infinitive, context: context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: AdCard(),
          ),
          ChartRow(
              label: NA.t('present'),
              furiText: doushi.casual.present.toFuriTexts()),
          ChartRow(
              label: NA.t('past'),
              furiText: doushi.casual.pastSimple.toFuriTexts()),
          ChartRow(
              label: NA.t('negative'),
              furiText: doushi.casual.negative.toFuriTexts()),
          ChartRow(
              label: NA.t('negativePast'),
              furiText: doushi.casual.negativePast.toFuriTexts()),
          doushi.casual.presentProgressive.kanaWord.isEmpty
              ? Container()
              : ChartRow(
                  label: NA.t('presentProgressive'),
                  furiText: doushi.casual.presentProgressive.toFuriTexts()),
          doushi.casual.negativePresentProgressive.kanaWord.isEmpty
              ? Container()
              : ChartRow(
                  label: NA.t('negativePresentProgressive'),
                  furiText:
                      doushi.casual.negativePresentProgressive.toFuriTexts()),
          ChartRow(
              label: NA.t('teform'),
              furiText: doushi.casual.teForm.toFuriTexts()),
              ChartRow(
              label: NA.t('negativeteform'),
              furiText: doushi.casual.negativeTeForm.toFuriTexts()),
        ],
      ),
    );
  }
}
