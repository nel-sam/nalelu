import 'package:material_ui/material_ui.dart';
import 'package:nalelu/constants.dart';
import 'package:nalelu/furi_text.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/state/enums.dart';
import 'package:nalelu/widgets/auth/login_button.dart';
import 'package:nalelu/widgets/coach/coach.dart';
import 'package:nalelu/widgets/menus/kanji_menu.dart';
import 'package:nalelu/widgets/shared/na_menu_cards.dart';
import 'package:nalelu/widgets/menus/numbers_menu.dart';
import 'package:nalelu/widgets/shared/ad_card.dart';
import 'package:nalelu/widgets/shared/settings_screen.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  void _open(BuildContext context, Widget destination) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => destination),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainMenuColors.creamBg,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            children: [
              const SizedBox(height: 8),
              _MenuHeader(),
              const SizedBox(height: 14),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      MenuCard(
                        variant: MenuCardVariant.hero,
                        label: NA.t('coach'),
                        translabel: [FuriText(text: 'コーチ', furigana: 'こーち')],
                        svgAssetPath: 'assets/banners/new_banner.svg',
                        onTap: () => _open(context, Coach()),
                      ),
                      const SizedBox(height: 14),
                      // NAMenuButton(
                      //   destination:
                      //       SettingsScreen(exerciseType: ExerciseType.Manga),
                      //   label: NA.t('manga'),
                      //   translabel: [FuriText(text: '漫画', furigana: 'まんが')],
                      // ),
                      Row(
                        children: [
                          Expanded(
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: MenuCard(
                                variant: MenuCardVariant.square,
                                backgroundColor: MainMenuColors.peachCard,
                                watermarkChar: '数',
                                watermarkColor: MainMenuColors.peachWatermark,
                                textColor: MainMenuColors.darkBrown,
                                furiganaColor: MainMenuColors.mutedBrown,
                                label: NA.t('numbersExercise'),
                                translabel: [
                                  FuriText(text: '数字', furigana: 'すうじ')
                                ],
                                onTap: () => _open(context, NumbersMenu()),
                              ),
                            ),
                          ),
                          const SizedBox(width: 14),
                          Expanded(
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: MenuCard(
                                variant: MenuCardVariant.square,
                                backgroundColor: MainMenuColors.terracotta,
                                watermarkChar: '動',
                                watermarkColor: Colors.white.withOpacity(0.16),
                                textColor: Colors.white,
                                furiganaColor: Colors.white.withOpacity(0.85),
                                label: NA.t('verbs'),
                                translabel: [
                                  FuriText(text: '動詞', furigana: 'どうし')
                                ],
                                onTap: () => _open(
                                  context,
                                  SettingsScreen(
                                      exerciseType: ExerciseType.doushi),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 14),
                      MenuCard(
                        variant: MenuCardVariant.wide,
                        label: NA.t('kanji'),
                        translabel: [FuriText(text: '漢字', furigana: 'かんじ')],
                        onTap: () => _open(context, KanjiMenu()),
                      ),
                      const SizedBox(height: 14),
                    ],
                  ),
                ),
              ),
              const AdCard(),
              const SizedBox(height: 6),
            ],
          ),
        ),
      ),
    );
  }
}

class _MenuHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                appName,
                style: const TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w900,
                  height: 1.0,
                  letterSpacing: -1.0,
                  color: MainMenuColors.darkBrown,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                '日本語を学ぼう',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: MainMenuColors.mutedBrown,
                ),
              ),
            ],
          ),
        ),
        const LoginButton(),
      ],
    );
  }
}
