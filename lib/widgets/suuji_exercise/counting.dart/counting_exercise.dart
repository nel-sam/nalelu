import 'package:flutter/material.dart';
import 'package:nareru/na_helpers.dart';
import 'package:nareru/state/enums.dart';
import 'package:nareru/state/exercise_nav_notifier.dart';
import 'package:nareru/state/suuji/count/count_notifier.dart';
import 'package:nareru/widgets/shared/ad_card.dart';
import 'package:nareru/widgets/shared/hint_button.dart';
import 'package:nareru/widgets/shared/home_button_wrapper.dart';
import 'package:nareru/widgets/shared/na_free_form_entry_wrapper.dart';
import 'package:nareru/widgets/shared/nav_header_wrapper.dart';
import 'package:nareru/widgets/suuji_exercise/number_chart.dart';
import 'package:nrs_flutter_lib/enums.dart';
import 'package:nrs_flutter_lib/nrs_flutter_lib.dart';
import 'package:nrs_flutter_lib/widgets/n_answer_status_icon.dart';
import 'package:nrs_flutter_lib/widgets/n_footer_button.dart';
import 'package:nrs_flutter_lib/widgets/n_footer_menu.dart';
import 'package:nrs_flutter_lib/widgets/n_free_form_entry.dart';
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
            bool isHintActive = false;
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
                            !s.correctAnswers.contains(s.userInput)
                                ? HintButton(
                                    onHintActive: (bool onHintActive) =>
                                        isHintActive = onHintActive,
                                    userInput: s.userInput,
                                    correctAnswers: s.correctAnswers[0],
                                    onHintUpdate: (String hint) => {
                                          countNotifier.updateCount(hint),
                                        })
                                : Container(),
                            !s.correctAnswers.contains(s.userInput)
                                ? Container(
                                    width: 80,
                                    child: NaFreeFormEntryWrapper(
                                      widthType: NFreeFormWidths.half,
                                      hintValue: '',
                                      onChanged: (String newValue) =>
                                          countNotifier.updateCount(newValue),
                                      initialValue: s.userInput,
                                      correctValues: s.correctAnswers,
                                    ),
                                  )
                                : Text(s.userInput,
                                    style: TextStyle(fontSize: 28)),
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
