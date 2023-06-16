import 'package:flutter/material.dart';
import 'package:nalelu/constants.dart';
import 'package:nalelu/furi_text.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/state/enums.dart';
import 'package:nalelu/widgets/manga_exercise/manga_exercise.dart';
import 'package:nalelu/widgets/menus/kanji_menu.dart';
import 'package:nalelu/widgets/menus/numbers_menu.dart';
import 'package:nalelu/widgets/shared/ad_card.dart';
import 'package:nalelu/widgets/shared/na_menu_button.dart';
import 'package:nalelu/widgets/shared/settings_screen.dart';
import 'package:nrs_flutter_lib/widgets/n_hero_banner.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            NHeroBanner(
              imagePath: 'assets/banners/gates.jpeg',
              appName: APP_NAME,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    NAMenuButton(
                      destination: MangaExercise(),
                      label: NA.t('manga'),
                      translabel: [FuriText(text: '漫画', furigana: 'まんが')],
                    ),
                    NAMenuButton(
                      destination: NumbersMenu(),
                      label: NA.t('numbersExercise'),
                      translabel: [FuriText(text: '数字', furigana: 'すうじ')],
                    ),
                    NAMenuButton(
                      destination: SettingsScreen(exerciseType: ExerciseType.Doushi),
                      label: NA.t('verbs'),
                      translabel: [FuriText(text: '動詞', furigana: 'どうし')],
                    ),
                    NAMenuButton(
                      destination: KanjiMenu(),
                      label: NA.t('kanji'),
                      translabel: [FuriText(text: '動詞', furigana: 'どうし')],
                    ),
                  ],
                ),
              ),
            ),
            const AdCard(),
          ],
        ),
      ),
    );
  }
}
