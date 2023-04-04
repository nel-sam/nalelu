import 'package:flutter/material.dart';
import 'package:nareru/na-helpers.dart';
import 'package:nareru/lang_data/numbers.dart';
import 'package:nrs_flutter_lib/nrs_flutter_lib.dart';
import 'package:nrs_flutter_lib/widgets/n_sub_header.dart';

class NumberChart extends StatelessWidget {
  final TextStyle boldStyle = TextStyle(fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Nrs.NrsAppBar(
            title: NA.t('numberChart'), context: context),
        body: Padding(
          padding: EdgeInsets.all(18),
          child: SingleChildScrollView(
            child: Column(
              children: [
                getNativeNumberChart(context),
                getSinoNumberChart(context),
              ],
            ),
          ),
        ));
  }

  getNativeNumberChart(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              NSubHeader(NA.t('nativeNumbers')),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                ...nativeNumberBank.getRange(1, 11).map((e) => Text(
                      '${e.digit} ${e.written}',
                      style: boldStyle,
                    ))
              ]),
            ],
          ),
        ],
      ),
    );
  }

  getSinoNumberChart(BuildContext context) {
    List<NareNumber> numbers = [];
    var maxNum = 100;

    for (int i = 0; i <= maxNum; i++) {
      var hn = NA.getSinoNumber(i);
      var written = hn.alternate == hn.written
          ? hn.written
          : '${hn.written}';
      numbers.add(NareNumber(digit: hn.digit, written: written));
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              NSubHeader(NA.t('sinoNumbers')),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                ...numbers.getRange(0, 34).map((e) => Text(
                      '${e.digit} ${e.written}',
                      style: boldStyle,
                    ))
              ]),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                ...numbers
                    .getRange(34, 67)
                    .map((e) => Text('${e.digit} ${e.written}'))
              ]),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                ...numbers.getRange(67, 101).map((e) => Text(
                      '${e.digit} ${e.written}',
                      style: boldStyle,
                    ))
              ]),
            ],
          ),
        ],
      ),
    );
  }
}
