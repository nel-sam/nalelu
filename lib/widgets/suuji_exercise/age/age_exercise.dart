import 'package:flutter/material.dart';
import 'package:nareru/na_helpers.dart';
import 'package:nareru/state/enums.dart';
import 'package:nareru/state/exercise_nav_notifier.dart';
import 'package:nareru/state/suuji/age/age_notifier.dart';
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
import 'package:provider/provider.dart';

class AgeExercise extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget getContent(BuildContext context) {
      return ChangeNotifierProvider<ExerciseNavNotifier>(
        create: (context) => ExerciseNavNotifier(ExerciseType.Age),
        child: Consumer<ExerciseNavNotifier>(
          builder: (context, navNotifier, child) {
            var s = navNotifier.getActive();
            bool isHintActive = false;
            return Padding(
              padding: EdgeInsets.all(24),
              child: Column(
                children: [
                  NavHeaderWrapper(navNotifier: navNotifier),
                  Text('なんさいですか?', style: TextStyle(fontSize: 20)),
                  Text(s.age.toString(), style: TextStyle(fontSize: 24)),
                  ChangeNotifierProvider<AgeNotifier>(
                    create: (context) => AgeNotifier(navNotifier.getActive),
                    child: Consumer<AgeNotifier>(
                      builder: (context, ageNotifier, child) {
                        var s = ageNotifier.getStateItem();
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // TODO: Make 3d
                            NAnswerStatusIcon(
                                status: s.getIsCorrect()
                                    ? CorrectStatus.correct
                                    : CorrectStatus.unstarted),
                            !s.correctAnswers.contains(s.userInput)
                                ? HintButton(
                                    onHintActive: (bool onHintActive) =>
                                        isHintActive = onHintActive,
                                    userInput: s.userInput,
                                    correctAnswer: s.correctAnswers[0],
                                    onHintUpdate: (String hint) => {
                                          ageNotifier.updateAge(hint),
                                        })
                                : Container(),
                            !s.correctAnswers.contains(s.userInput)
                                ? Container(
                                    width: 150,
                                    child: NaFreeFormEntryWrapper(
                                      widthType: NFreeFormWidths.half,
                                      hintValue: '',
                                      onChanged: (String newValue) {
                                        ageNotifier.updateAge(newValue);
                                      },
                                      initialValue: s.userInput,
                                      correctValues: s.correctAnswers,
                                    ),
                                  )
                                : Text(s.userInput,
                                    style: TextStyle(fontSize: 28)),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
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
