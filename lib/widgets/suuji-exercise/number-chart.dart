import 'package:flutter/material.dart';
import 'package:nareru/constants.dart';
import 'package:nareru/hd-helpers.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class NumberChart extends StatefulWidget {
  const NumberChart({Key? key}) : super(key: key);

  @override
  State<NumberChart> createState() => _NumberChartState();
}

class _NumberChartState extends State<NumberChart> {
  bool selected = true;

  Widget numberCard(String number, String hiragana, String kanji) {
    return InkWell(
      onTap: () {
        setState(() {
          selected = false;
        });
      },
      child: Ink(
        child: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Text(number),
              selected ? Text(hiragana) : Text(kanji),
            ],
          ),
        ),
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
              numberCard('1', 'ひとつ', '一つ'),
              numberCard('2', 'ふたつ', '二つ'),
              numberCard('3', 'みっつ', '三つ'),
              numberCard('4', 'よっつ', '四つ'),
              numberCard('5', 'いつつ', '五つ'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              numberCard('6', 'むっつ', '六つ'),
              numberCard('7', 'ななつ', '七つ'),
              numberCard('8', 'やっつ', '八つ'),
              numberCard('9', 'ここのつ', '九つ'),
              numberCard('10', 'とう', '十'),
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
              numberCard('0', 'れい、ゼロ、マル', '零'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              numberCard('1', 'いち', '一'),
              numberCard('2', 'に', '二'),
              numberCard('3', 'さん', '三'),
              numberCard('4', 'よん, し', '四'),
              numberCard('5', 'ご', '五'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              numberCard('6', 'ろく', '六'),
              numberCard('7', 'なな, しち', '七'),
              numberCard('8', 'はち', '八'),
              numberCard('9', 'きゅう, く', '九'),
              numberCard('10', 'じゅう', '十'),
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
