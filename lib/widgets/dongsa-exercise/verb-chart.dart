import 'package:flutter/material.dart';
import 'package:nareru/hd-helpers.dart';
import 'package:nareru/lang_data/dongsa.dart';
import 'package:nareru/widgets/shared/ad-card.dart';
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
          textStyle: HD.fontStyleBold(context),
        ),
      ],
    );
  }
}

class VerbChart extends StatelessWidget {
  final Dongsa dongsa;

  const VerbChart({
    Key? key,
    required this.dongsa,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: Nrs.NrsAppBar(title: dongsa.infinitive, context: context),
      body: Center(
        child: Column(
          children: [
            //const AdCard(),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: Column(
                  children: [
                    ChartRow(
                      label: HD.t('present'),
                      conj: dongsa.banmar.present,
                    ),
                    ChartRow(
                      label: HD.t('past'),
                      conj: dongsa.banmar.past,
                    ),
                    ChartRow(
                      label: HD.t('future'),
                      conj: '${dongsa.banmar.futureStem} 거야',
                    ),
                    // ChartRow(
                    //   label: HD.t('conditional'),
                    //   conj: '${dongsa.stem}겠어',
                    // ),
                    ChartRow(
                      label: HD.t('propositive'),
                      conj: '${dongsa.stem}자',
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
