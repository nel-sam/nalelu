import 'package:flutter/material.dart';
import 'package:nareru/furi_text.dart';
import 'package:nareru/na_helpers.dart';
import 'package:nareru/widgets/shared/ad_card.dart';
import 'package:nareru/widgets/shared/na_footer_menu.dart';
import 'package:nareru/widgets/shared/na_menu_button.dart';
import 'package:nareru/widgets/shared/na_menu_header.dart';
import 'package:nareru/widgets/suuji_exercise/age/age_exercise.dart';
import 'package:nareru/widgets/suuji_exercise/counting.dart/counting_exercise.dart';
import 'package:nareru/widgets/suuji_exercise/jikan_exercise/jikan_exercise.dart';
import 'package:nrs_flutter_lib/nrs_flutter_lib.dart';

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
              AdCard(),
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
