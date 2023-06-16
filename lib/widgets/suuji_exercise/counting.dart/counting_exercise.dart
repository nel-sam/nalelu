import 'package:flutter/material.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/state/enums.dart';
import 'package:nalelu/state/exercise_nav_notifier.dart';
import 'package:nalelu/state/suuji/count/count_notifier.dart';
import 'package:nalelu/widgets/shared/ad_card.dart';
import 'package:nalelu/widgets/shared/home_button_wrapper.dart';
import 'package:nalelu/widgets/shared/nav_header_wrapper.dart';
import 'package:nalelu/widgets/suuji_exercise/counting.dart/counting_exercise_state_area.dart';
import 'package:nalelu/widgets/suuji_exercise/number_chart.dart';
import 'package:nrs_flutter_lib/nrs_flutter_lib.dart';
import 'package:nrs_flutter_lib/widgets/n_footer_button.dart';
import 'package:nrs_flutter_lib/widgets/n_footer_menu.dart';
import 'package:nrs_flutter_lib/widgets/n_info_button.dart';
import 'package:nrs_flutter_lib/widgets/n_text_span.dart';
import 'package:provider/provider.dart';

class CountingExercise extends StatelessWidget {
  final int numberOfCountingExercises;

  CountingExercise({
    required this.numberOfCountingExercises,
  });

  @override
  Widget build(BuildContext context) {
    getContent(BuildContext context) {
      return ChangeNotifierProvider<ExerciseNavNotifier>(
        create: (context) => ExerciseNavNotifier(
            exerciseType: ExerciseType.Count,
            maxExerciseCount: numberOfCountingExercises),
        child: Consumer<ExerciseNavNotifier>(
          builder: (context, navNotifier, child) {
            var activeItem = navNotifier.getActive();
            var label = activeItem.label;

            var infoText =
                activeItem.isSino ? NA.t('use_sino') : NA.t('use_native');

            infoText +=
                ' ${label.toLowerCase()}: ${activeItem.correctAnswers}${activeItem.isSino ? '' : ' '}${activeItem.counter}';

            return Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  NavHeaderWrapper(navNotifier: navNotifier),
                  Column(
                    children: [
                      Icon(navNotifier.getActive().icon, size: 90),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          NTextSpan(label,
                              textStyle: NA.fontStyleBold(context)),
                          NInfoButton(text: infoText),
                        ],
                      ),
                      Text(
                        '${navNotifier.getActive().count}${navNotifier.getActive().counter}',
                        style: TextStyle(fontSize: 40),
                      ),
                    ],
                  ),
                  ChangeNotifierProvider<CountNotifier>(
                    create: (context) => CountNotifier(navNotifier.getActive),
                    child: Consumer<CountNotifier>(
                      builder: (context, countNotifier, child) {
                        var s = countNotifier.getStateItem();
                        return CountingExerciseStateArea(state: s);
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
