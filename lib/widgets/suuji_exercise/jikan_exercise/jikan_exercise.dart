import 'package:flutter/material.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/state/enums.dart';
import 'package:nalelu/state/exercise_nav_notifier.dart';
import 'package:nalelu/state/suuji/jikan/jikan_notifier.dart';
import 'package:nalelu/widgets/shared/ad_card.dart';
import 'package:nalelu/widgets/shared/home_button_wrapper.dart';
import 'package:nalelu/widgets/shared/nav_header_wrapper.dart';
import 'package:nalelu/widgets/suuji_exercise/jikan_exercise/clock.dart';
import 'package:nalelu/widgets/suuji_exercise/jikan_exercise/jikan_exercise_state_area.dart';
import 'package:nalelu/widgets/suuji_exercise/number_chart.dart';
import 'package:nrs_flutter_lib/nrs_flutter_lib.dart';
import 'package:nrs_flutter_lib/widgets/n_footer_button.dart';
import 'package:nrs_flutter_lib/widgets/n_footer_menu.dart';
import 'package:nrs_flutter_lib/widgets/n_info_button.dart';
import 'package:provider/provider.dart';

import '../../shared/tutorial_container.dart';

class JikanExercise extends StatelessWidget {
  final double textFieldWidth = 250;
  final int numberOfJikanExercises;

  JikanExercise({
    required this.numberOfJikanExercises,
  });

  @override
  Widget build(BuildContext context) {
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

  getContent(BuildContext context) {
    return ChangeNotifierProvider<ExerciseNavNotifier>(
      create: (context) => ExerciseNavNotifier(
          exerciseType: ExerciseType.Jikan,
          maxExerciseCount: numberOfJikanExercises),
      child: Consumer<ExerciseNavNotifier>(
        builder: (context, navNotifier, child) {
          var s = navNotifier.getActive();
          return Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Column(
              children: [
                NavHeaderWrapper(navNotifier: navNotifier),
                TutorialContainer(
                  instructions:
                      'This displays a time in hours, minutes, and seconds.',
                  widget: Clock(time: '${s.hour}:${s.min}:${s.sec}'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(NA.t('typeTheTime')),
                    NInfoButton(
                      text: NA.t('timeDesc'),
                    ),
                  ],
                ),
                ChangeNotifierProvider<JikanNotifier>(
                  create: (context) => JikanNotifier(navNotifier.getActive),
                  child: Consumer<JikanNotifier>(
                      builder: (context, jikanNotifier, child) {
                    var s = jikanNotifier.getStateItem();
                    return JikanExerciseStateArea(state: s);
                  }),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
