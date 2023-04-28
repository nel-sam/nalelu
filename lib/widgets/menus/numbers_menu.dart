import 'package:flutter/material.dart';
import 'package:nalelu/furi_text.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/widgets/shared/ad_card.dart';
import 'package:nalelu/widgets/shared/na_footer_menu.dart';
import 'package:nalelu/widgets/shared/na_menu_button.dart';
import 'package:nalelu/widgets/shared/na_menu_header.dart';
import 'package:nalelu/widgets/suuji_exercise/age/age_exercise.dart';
import 'package:nalelu/widgets/suuji_exercise/counting.dart/counting_exercise.dart';
import 'package:nalelu/widgets/suuji_exercise/jikan_exercise/jikan_exercise.dart';
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
                  label: [FuriText(text: '数字', furigana: 'すうじ')]),
              Column(
                children: [
                  NAMenuButton(
                      destination: JikanExercise(),
                      label: NA.t('time'),
                      translabel: [FuriText(text: '時間', furigana: 'じかん')]),
                  NAMenuButton(
                      destination: AgeExercise(),
                      label: NA.t('age'),
                      translabel: [FuriText(text: '年齢', furigana: 'ねんれい')]),
                  NAMenuButton(
                      destination: CountingExercise(),
                      label: NA.t('counting'),
                      translabel: [
                        FuriText(text: '数', furigana: 'かぞ'),
                        FuriText(text: 'えること')
                      ]),
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
