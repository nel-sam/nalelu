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
                  Text('0'),
                  Text('1'),
                  Text('2'),
                  Text('3'),
                  Text('4'),
                ],
              ),
              Column(
                children: [
                  Text('れい'),
                  Text('いち'),
                  Text('に'),
                  Text('さん'),
                  Text('よん'),
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
              ],
            ),
          ),
        ));
  }
}
