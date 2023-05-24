import 'package:flutter/material.dart';
import 'package:nalelu/furi_text.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/widgets/kanji_exercise/kanji_exercise.dart';
import 'package:nalelu/widgets/shared/ad_card.dart';
import 'package:nalelu/widgets/shared/na_footer_menu.dart';
import 'package:nalelu/widgets/shared/na_menu_button.dart';
import 'package:nalelu/widgets/shared/na_menu_header.dart';
import 'package:nrs_flutter_lib/nrs_flutter_lib.dart';

class KanjiMenu extends StatelessWidget {
  const KanjiMenu({Key? key}) : super(key: key);

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
                  transLabel: NA.t('kanji'),
                  label: [FuriText(text: '漢字', furigana: 'かんじ')]),
              Column(
                children: [
                  NAMenuButton(
                      destination: KanjiExercise(),
                      label: NA.t('n5'),
                      translabel: [FuriText(text: 'レベル N5')]),
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
