import 'package:material_ui/material_ui.dart';
import 'package:nalelu/constants.dart';
import 'package:nalelu/furi_text.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/nal_themes.dart';
import 'package:nalelu/state/enums.dart';
import 'package:nalelu/widgets/auth/login_button.dart';
import 'package:nalelu/widgets/coach/coach.dart';
import 'package:nalelu/widgets/menus/kanji_menu.dart';
import 'package:nalelu/widgets/menus/numbers_menu.dart';
import 'package:nalelu/widgets/shared/ad_card.dart';
import 'package:nalelu/widgets/shared/na_menu_cards.dart';
import 'package:nalelu/widgets/shared/settings_screen.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

  void _open(BuildContext context, Widget destination) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => destination),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final menuColors =
        theme.extension<NaleluMenuColors>() ?? NaleluMenuColors.light;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            children: [
              const SizedBox(height: 8),
              const _MenuHeader(),
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
                                backgroundColor: menuColors.peachCard,
                                watermarkChar: '数',
                                watermarkColor: menuColors.peachWatermark,
                                textColor: colorScheme.onSurface,
                                furiganaColor: colorScheme.onSurfaceVariant,
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
                                backgroundColor: colorScheme.primary,
                                watermarkChar: '動',
                                watermarkColor: menuColors.heroWatermarkOverlay,
                                textColor: colorScheme.onPrimary,
                                furiganaColor: menuColors.heroFurigana,
                                label: NA.t('verbs'),
                                translabel: [
                                  FuriText(text: '動詞', furigana: 'どうし')
                                ],
                                onTap: () => _open(
                                  context,
                                  SettingsScreen(
                                    exerciseType: ExerciseType.Doushi,
                                  ),
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
  const _MenuHeader();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                APP_NAME,
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w900,
                  height: 1.0,
                  letterSpacing: -1.0,
                  color: colorScheme.onSurface,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                '日本語を学ぼう',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: colorScheme.onSurfaceVariant,
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
