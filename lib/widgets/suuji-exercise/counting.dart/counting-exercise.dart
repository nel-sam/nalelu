import 'package:flutter/material.dart';
import 'package:nareru/na-helpers.dart';
import 'package:nareru/state/enums.dart';
import 'package:nareru/state/exercise-nav-notifier.dart';
import 'package:nareru/state/suuji/count/count-notifier.dart';
import 'package:nareru/widgets/shared/ad-card.dart';
import 'package:nareru/widgets/shared/home-button-wrapper.dart';
import 'package:nareru/widgets/shared/nav-header-wrapper.dart';
import 'package:nareru/widgets/shared/question-free-form.dart';
import 'package:nareru/widgets/suuji-exercise/number-chart.dart';
import 'package:nrs_flutter_lib/enums.dart';
import 'package:nrs_flutter_lib/nrs_flutter_lib.dart';
import 'package:nrs_flutter_lib/widgets/n_answer_status_icon.dart';
import 'package:nrs_flutter_lib/widgets/n_footer_button.dart';
import 'package:nrs_flutter_lib/widgets/n_footer_menu.dart';
import 'package:nrs_flutter_lib/widgets/n_info_button.dart';
import 'package:nrs_flutter_lib/widgets/n_text_span.dart';
import 'package:provider/provider.dart';

class CountingExercise extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    getContent(BuildContext context) {
      return ChangeNotifierProvider<ExerciseNavNotifier>(
        create: (context) => ExerciseNavNotifier(ExerciseType.Count),
        child: Consumer<ExerciseNavNotifier>(
          builder: (context, navNotifier, child) {
            var activeItem = navNotifier.getActive();
            var label = activeItem.label(context);

            var infoText =
                activeItem.isSino ? NA.t('use_sino') : NA.t('use_native');

            infoText +=
                ' ${label.toLowerCase()}: ${activeItem.correctAnswer}${activeItem.isSino ? '' : ' '}${activeItem.counter}';

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
                        '× ${navNotifier.getActive().count}',
                        style: TextStyle(fontSize: 40),
                      ),
                    ],
                  ),
                  ChangeNotifierProvider<CountNotifier>(
                    create: (context) => CountNotifier(navNotifier.getActive),
                    child: Consumer<CountNotifier>(
                      builder: (context, countNotifier, child) {
                        var s = countNotifier.getStateItem();
                        // TODO: Make 3d
                        var isCorrect = s.getIsCorrect()
                            ? CorrectStatus.correct
                            : CorrectStatus.unstarted;

                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                child: NAnswerStatusIcon(
                              status: isCorrect,
                            )),
                            Container(
                              width: 80,
                              child: QuestionFreeForm(
                                isActive: false,
                                maxLength: s.correctAnswer.length,
                                activeValue: s.userInput,
                                hintValue: '',
                                onChanged: (String newVal) =>
                                    countNotifier.updateCount(newVal),
                                correctValues: [s.correctAnswer],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(navNotifier.getActive().counter,
                                  style: TextStyle(fontSize: 28)),
                            ),
                          ],
                        );
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
              //AdCard(),
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
