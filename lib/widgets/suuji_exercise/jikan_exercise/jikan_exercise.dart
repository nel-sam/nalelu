import 'package:flutter/material.dart';
import 'package:nareru/na_helpers.dart';
import 'package:nareru/state/enums.dart';
import 'package:nareru/state/exercise_nav_notifier.dart';
import 'package:nareru/state/suuji/jikan/jikan_notifier.dart';
import 'package:nareru/widgets/shared/ad_card.dart';
import 'package:nareru/widgets/shared/hint_button.dart';
import 'package:nareru/widgets/shared/home_button_wrapper.dart';
import 'package:nareru/widgets/shared/nav_header_wrapper.dart';
import 'package:nareru/widgets/shared/question_free_form.dart';
import 'package:nareru/widgets/suuji_exercise/jikan_exercise/clock.dart';
import 'package:nareru/widgets/suuji_exercise/number_chart.dart';
import 'package:nrs_flutter_lib/enums.dart';
import 'package:nrs_flutter_lib/nrs_flutter_lib.dart';
import 'package:nrs_flutter_lib/widgets/n_answer_status_icon.dart';
import 'package:nrs_flutter_lib/widgets/n_footer_button.dart';
import 'package:nrs_flutter_lib/widgets/n_footer_menu.dart';
import 'package:nrs_flutter_lib/widgets/n_info_button.dart';
import 'package:provider/provider.dart';

class JikanExercise extends StatelessWidget {
  final double textFieldWidth = 70;

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
      create: (context) => ExerciseNavNotifier(ExerciseType.Jikan),
      child: Consumer<ExerciseNavNotifier>(
        builder: (context, navNotifier, child) {
          var s = navNotifier.getActive();
          bool isHintActive = false;
          return Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Column(
              children: [
                NavHeaderWrapper(navNotifier: navNotifier),
                Clock(time: '${s.hour}:${s.min}:${s.sec}'),
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
                      // TODO: Make status 3d
                      var isHourCorrect = s.correctHour == s.userHour
                          ? CorrectStatus.correct
                          : CorrectStatus.unstarted;
                      var isMinCorrect = s.correctMin == s.userMin
                          ? CorrectStatus.correct
                          : CorrectStatus.unstarted;
                      var isSecCorrect = s.correctSec == s.userSec
                          ? CorrectStatus.correct
                          : CorrectStatus.unstarted;

                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              NAnswerStatusIcon(status: isHourCorrect),
                              s.correctHour != s.userHour
                                  ? HintButton(
                                      onHintActive: (bool onHintActive) =>
                                          isHintActive = onHintActive,
                                      userInput: s.userHour,
                                      correctAnswer: s.correctHour,
                                      onHintUpdate: (String hint) => {
                                            jikanNotifier.updateHour(hint),
                                          })
                                  : Container(),
                              s.correctHour != s.userHour
                                  ? Container(
                                      width: textFieldWidth,
                                      child: QuestionFreeForm(
                                        isActive: isHintActive,
                                        maxLength: s.correctHour.length,
                                        activeValue: s.userHour,
                                        hintValue: '',
                                        correctValues: [s.correctHour],
                                        onChanged: (String newVal) =>
                                            jikanNotifier.updateHour(newVal),
                                      ),
                                    )
                                  : Text(s.correctHour,
                                      style: TextStyle(fontSize: 20)),
                            ],
                          ),
                          Column(
                            children: [
                              NAnswerStatusIcon(status: isMinCorrect),
                              s.correctMin != s.userMin
                                  ? HintButton(
                                      onHintActive: (bool onHintActive) =>
                                          isHintActive = onHintActive,
                                      userInput: s.userMin,
                                      correctAnswer: s.correctMin,
                                      onHintUpdate: (String hint) => {
                                            jikanNotifier.updateMin(hint),
                                          })
                                  : Container(),
                              s.correctMin != s.userMin
                                  ? Container(
                                      width: textFieldWidth,
                                      child: QuestionFreeForm(
                                        isActive: isHintActive,
                                        maxLength: s.correctMin.length,
                                        activeValue: s.userMin,
                                        hintValue: '',
                                        correctValues: [s.correctMin],
                                        onChanged: (String newVal) =>
                                            jikanNotifier.updateMin(newVal),
                                      ),
                                    )
                                  : Text(s.correctMin,
                                      style: TextStyle(fontSize: 20)),
                            ],
                          ),
                          Column(
                            children: [
                              NAnswerStatusIcon(status: isSecCorrect),
                              s.correctSec != s.userSec
                                  ? HintButton(
                                      onHintActive: (bool onHintActive) =>
                                          isHintActive = onHintActive,
                                      userInput: s.userSec,
                                      correctAnswer: s.correctSec,
                                      onHintUpdate: (String hint) => {
                                            jikanNotifier.updateSec(hint),
                                          })
                                  : Container(),
                              s.correctSec != s.userSec
                                  ? Container(
                                      width: textFieldWidth,
                                      child: QuestionFreeForm(
                                        isActive: isHintActive,
                                        maxLength: s.correctSec.length,
                                        activeValue: s.userSec,
                                        hintValue: '',
                                        correctValues: [s.correctSec],
                                        onChanged: (String newVal) =>
                                            jikanNotifier.updateSec(newVal),
                                      ),
                                    )
                                  : Text(s.correctSec,
                                      style: TextStyle(fontSize: 20)),
                            ],
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
}
