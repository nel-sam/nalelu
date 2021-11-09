import 'package:flutter/material.dart';
import 'package:nareru/constants.dart';
import 'package:nareru/hd-helpers.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class NumberChart extends StatelessWidget {
  const NumberChart({Key? key}) : super(key: key);

  getNativeNumberChart(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(AppLocalizations.of(context)!.nativeNumbers),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Text('1'),
                  Text('2'),
                  Text('3'),
                  Text('4'),
                  Text('5'),
                  Text('6'),
                  Text('7'),
                  Text('8'),
                  Text('9'),
                  Text('10')
                ],
              ),
              Column(
                children: [
                  Text('ひとつ'),
                  Text('ふたつ'),
                  Text('みっつ'),
                  Text('よっつ'),
                  Text('いつつ'),
                  Text('むっつ'),
                  Text('ななつ'),
                  Text('やっつ'),
                  Text('ここのつ'),
                  Text('とう')
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  getSinoNumberChart(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(AppLocalizations.of(context)!.sinoNumbers),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Text('0'),
                  Text('1'),
                  Text('2'),
                  Text('3'),
                  Text('4'),
                  Text('5'),
                  Text('6'),
                  Text('7'),
                  Text('8'),
                  Text('9'),
                  Text('10')
                ],
              ),
              Column(
                children: [
                  Text('れい、ゼロ、マル'),
                  Text('いち'),
                  Text('に'),
                  Text('さん'),
                  Text('よん, し'),
                  Text('ご'),
                  Text('ろく'),
                  Text('なな, しち'),
                  Text('はち'),
                  Text('きゅう, く'),
                  Text('じゅう')
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Builder(builder: (BuildContext context) => BackButton()),
          elevation: APPBAR_ELEVATION,
          backgroundColor: HD.getAppBarColor(context),
          textTheme: HD.getAppBarTextTheme(context),
          iconTheme: HD.getAppBarIconTheme(context),
          title: Text(AppLocalizations.of(context)!.numberChart,
              style: HEADER_TEXT_STYLE),
        ),
        body: Padding(
          padding: EdgeInsets.all(18),
          child: SingleChildScrollView(
            child: Column(
              children: [
                getNativeNumberChart(context),
                getSinoNumberChart(context)
              ],
            ),
          ),
        ));
  }
}
