import 'package:flutter/material.dart';
import 'package:nalelu/lang_data/doushi.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/widgets/shared/ad_card.dart';
import 'package:nrs_flutter_lib/nrs_flutter_lib.dart';
import 'package:nrs_flutter_lib/widgets/n_text_span.dart';

class ChartRow extends StatelessWidget {
  final String label;

  final String conj;
  const ChartRow({
    Key? key,
    required this.label,
    required this.conj,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: Nrs.getScreenWidth() / 3,
            child: NTextSpan(
              label,
              textAlign: TextAlign.end,
            )),
        NTextSpan(
          conj,
          textStyle: NA.fontStyleBold(context),
        ),
      ],
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
      body: Center(
        child: Column(
          children: [
            AdCard(),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: Column(
                  children: [
                    ChartRow(
                      label: NA.t('present'),
                      conj: doushi.banmar.present,
                    ),
                    ChartRow(
                      label: NA.t('past'),
                      conj: doushi.banmar.past,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
