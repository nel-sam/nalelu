import 'package:flutter/material.dart';
import 'package:nalelu/furi_text.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/state/enums.dart';
import 'package:nalelu/state/exercise_nav_notifier.dart';
import 'package:nalelu/state/suuji/age/age_notifier.dart';
import 'package:nalelu/widgets/shared/ad_card.dart';
import 'package:nalelu/widgets/shared/furigana_text.dart';
import 'package:nalelu/widgets/shared/home_button_wrapper.dart';
import 'package:nalelu/widgets/shared/nav_header_wrapper.dart';
import 'package:nalelu/widgets/suuji_exercise/age/age_exercise_state_area.dart';
import 'package:nalelu/widgets/suuji_exercise/number_chart.dart';
import 'package:nrs_flutter_lib/nrs_flutter_lib.dart';
import 'package:nrs_flutter_lib/widgets/n_footer_button.dart';
import 'package:nrs_flutter_lib/widgets/n_footer_menu.dart';
import 'package:provider/provider.dart';

class AgeExercise extends StatelessWidget {
  final int numberOfAgeExercises;

  AgeExercise({
    required this.numberOfAgeExercises,
  });
  @override
  Widget build(BuildContext context) {
    Widget getContent(BuildContext context) {
      return ChangeNotifierProvider<ExerciseNavNotifier>(
        create: (context) => ExerciseNavNotifier(
            exerciseType: ExerciseType.Age,
            maxExerciseCount: numberOfAgeExercises),
        child: Consumer<ExerciseNavNotifier>(
          builder: (context, navNotifier, child) {
            var s = navNotifier.getActive();
            return Padding(
              padding: EdgeInsets.all(24),
              child: Column(
                children: [
                  NavHeaderWrapper(navNotifier: navNotifier),
                  FuriganaText(furiTexts: [
                    FuriText(text: '何', furigana: 'なん'),
                    FuriText(text: '歳', furigana: 'さい'),
                    FuriText(text: 'ですか')
                  ]),
                  Text(s.age.toString(), style: TextStyle(fontSize: 24)),
                  ChangeNotifierProvider<AgeNotifier>(
                    create: (context) => AgeNotifier(navNotifier.getActive),
                    child: Consumer<AgeNotifier>(
                      builder: (context, ageNotifier, child) {
                        var s = ageNotifier.getStateItem();
                        return AgeExerciseStateArea(state: s);
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      );
    }

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: Nrs.NrsAppBar(title: NA.t('numbers'), context: context),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              getContent(context),
              AdCard(),
            ],
          ),
        ),
        persistentFooterButtons: [
          NFooterMenu(buttons: [
            HomeButtonWrapper(),
            NFooterButton(
              text: NA.t('numberChart'),
              icon: Icons.list,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NumberChart()),
                );
              },
            ),
          ])
        ],
      ),
    );
  }
}
