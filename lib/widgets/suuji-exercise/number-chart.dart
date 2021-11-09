import 'package:flutter/material.dart';
import 'package:nareru/constants.dart';
import 'package:nareru/hd-helpers.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class NumberChart extends StatelessWidget {
  const NumberChart({Key? key}) : super(key: key);

  Widget cards(String number, String hiragana) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Text(number),
          Text(hiragana),
        ],
      ),
    );
  }

  getNativeNumberChart(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(AppLocalizations.of(context)!.nativeNumbers),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              cards('1', 'ひとつ'),
              cards('2', 'ふたつ'),
              cards('3', 'みっつ'),
              cards('4', 'よっつ'),
              cards('5', 'いつつ'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              cards('6', 'むっつ'),
              cards('7', 'ななつ'),
              cards('8', 'やっつ'),
              cards('9', 'ここのつ'),
              cards('10', 'とう'),
            ],
          ),
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(AppLocalizations.of(context)!.sinoNumbers),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              cards('0', 'れい、ゼロ、マル'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              cards('1', 'いち'),
              cards('2', 'に'),
              cards('3', 'さん'),
              cards('4', 'よん, し'),
              cards('5', 'ご'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              cards('6', 'ろく'),
              cards('7', 'なな, しち'),
              cards('8', 'はち'),
              cards('9', 'きゅう, く'),
              cards('10', 'じゅう'),
            ],
          ),
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
              children: <Widget>[
                getNativeNumberChart(context),
                SizedBox(
                  height: 40,
                ),
                getSinoNumberChart(context)
              ],
            ),
          ),
        ));
  }
}
