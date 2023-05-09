import 'package:flutter/material.dart';
import 'package:nalelu/lang_data/doushi.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/widgets/shared/ad_card.dart';
import 'package:nrs_flutter_lib/nrs_flutter_lib.dart';

class ChartRow extends StatelessWidget {
  final String label;
  final String hiragana;
  final String kanji;

  const ChartRow({
    Key? key,
    required this.label,
    required this.hiragana,
    required this.kanji,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            label + ': ' + '\n' + kanji + ' (' + hiragana + ')',
          ),
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
          AdCard(),
          ChartRow(
            label: NA.t('present'),
            hiragana: doushi.casual.present[0],
            kanji: doushi.casual.present[1],
          ),
          ChartRow(
            label: NA.t('past'),
            hiragana: doushi.casual.pastSimple[0],
            kanji: doushi.casual.pastSimple[1],
          ),
          ChartRow(
            label: NA.t('negative'),
            hiragana: doushi.casual.negative[0],
            kanji: doushi.casual.negative[1],
          ),
          ChartRow(
            label: NA.t('negativePast'),
            hiragana: doushi.casual.negativePast[0],
            kanji: doushi.casual.negativePast[1],
          ),
          ChartRow(
            label: NA.t('presentProgressive'),
            hiragana: doushi.casual.presentProgressive[0],
            kanji: doushi.casual.presentProgressive[1],
          ),
          ChartRow(
            label: NA.t('negativePresentProgressive'),
            hiragana: doushi.casual.negativePresentProgressive[0],
            kanji: doushi.casual.negativePresentProgressive[1],
          ),
        ],
      ),
    );
  }
}
