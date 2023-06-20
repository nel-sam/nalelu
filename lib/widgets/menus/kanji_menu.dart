import 'package:flutter/material.dart';
import 'package:nalelu/furi_text.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/state/enums.dart';
import 'package:nalelu/widgets/shared/ad_card.dart';
import 'package:nalelu/widgets/shared/na_menu_button.dart';
import 'package:nalelu/widgets/shared/na_menu_header.dart';
import 'package:nalelu/widgets/shared/settings_screen.dart';
import 'package:nrs_flutter_lib/nrs_flutter_lib.dart';

class KanjiMenu extends StatelessWidget {
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
                  icon: Icons.brush_outlined,
                  transLabel: NA.t('kanji'),
                  label: [FuriText(text: '漢字', furigana: 'かんじ')]),
              Column(
                children: [
                  NAMenuButton(
                      destination: SettingsScreen(
                        exerciseType: ExerciseType.N5,
                      ),
                      label: NA.t('n5'),
                      translabel: [FuriText(text: 'レベル N5')]),
                  NAMenuButton(
                      destination: SettingsScreen(
                        exerciseType: ExerciseType.N4,
                      ),
                      label: NA.t('n4'),
                      translabel: [FuriText(text: 'レベル N4')]),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
