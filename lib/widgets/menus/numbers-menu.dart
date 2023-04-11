import 'package:flutter/material.dart';
import 'package:nareru/na-helpers.dart';
import 'package:nareru/widgets/shared/ad-card.dart';
import 'package:nareru/widgets/shared/na-footer-menu.dart';
import 'package:nareru/widgets/shared/na-menu-header.dart';
import 'package:nareru/widgets/suuji-exercise/age/age-exercise.dart';
import 'package:nareru/widgets/suuji-exercise/counting.dart/counting-exercise.dart';
import 'package:nareru/widgets/suuji-exercise/jikan-exercise/jikan-exercise.dart';
import 'package:nrs_flutter_lib/nrs_flutter_lib.dart';
import 'package:nareru/widgets/shared/Na-menu-button.dart';
import 'package:nareru/furi-text.dart';

class NumbersMenu extends StatelessWidget {
  const NumbersMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: Nrs.NrsAppBar(context: context),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //const AdCard(),
              NAMenuHeader(
                  icon: Icons.widgets_outlined,
                  transLabel: NA.t('numbers'),
                  label: [FuriText('数字', 'すうじ')]),
              Column(
                children: [
                  NAMenuButton(
                      destination: JikanExercise(),
                      label: NA.t('time'),
                      translabel: [FuriText('時間', 'じかん')]),
                  NAMenuButton(
                      destination: AgeExercise(),
                      label: NA.t('age'),
                      translabel: [FuriText('年齢', 'ねんれい')]),
                  NAMenuButton(
                      destination: CountingExercise(),
                      label: NA.t('counting'),
                      translabel: [FuriText('数', 'かぞ'), FuriText('えること', '')]),
                ],
              ),
            ],
          ),
        ),
      ),
      persistentFooterButtons: [NAMenuFooter(activeIndex: 1)],
    );
  }
}
