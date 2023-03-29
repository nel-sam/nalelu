import 'package:flutter/material.dart';
import 'package:nareru/hd-helpers.dart';
import 'package:nareru/state/enums.dart';
import 'package:nareru/state/exercise-nav-notifier.dart';
import 'package:nareru/state/suuji/jikan/jikan-notifier.dart';
import 'package:nareru/widgets/shared/ad-card.dart';
import 'package:nareru/widgets/shared/home-button-wrapper.dart';
import 'package:nareru/widgets/shared/nav-header-wrapper.dart';
import 'package:nareru/widgets/shared/question-free-form.dart';
import 'package:nareru/widgets/suuji-exercise/number-chart.dart';
import 'package:nareru/widgets/suuji-exercise/jikan-exercise/clock.dart';
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
        appBar: Nrs.NrsAppBar(title: HD.t('numbers'), context: context),
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
              text: HD.t('numberChart'),
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

          return Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Column(
              children: [
                NavHeaderWrapper(navNotifier: navNotifier),
                Clock(time: '${s.hour}:${s.min}:${s.sec}'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(HD.t('typeTheTime')),
                    NInfoButton(
                      text: HD.t('timeDesc'),
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
                              Container(
                                width: textFieldWidth,
                                child: QuestionFreeForm(
                                  isActive: false,
                                  maxLength: s.correctHour.length,
                                  activeValue: s.userHour,
                                  hintValue: '',
                                  correctValues: [s.correctHour],
                                  onChanged: (String newVal) =>
                                      jikanNotifier.updateHour(newVal),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('시'),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              NAnswerStatusIcon(status: isMinCorrect),
                              Container(
                                width: textFieldWidth,
                                child: QuestionFreeForm(
                                  isActive: false,
                                  maxLength: s.correctMin.length,
                                  activeValue: s.userMin,
                                  hintValue: '',
                                  correctValues: [s.correctMin],
                                  onChanged: (String newVal) =>
                                      jikanNotifier.updateMin(newVal),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('분'),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              NAnswerStatusIcon(status: isSecCorrect),
                              Container(
                                width: textFieldWidth,
                                child: QuestionFreeForm(
                                  isActive: false,
                                  maxLength: s.correctSec.length,
                                  activeValue: s.userSec,
                                  hintValue: '',
                                  correctValues: [s.correctSec],
                                  onChanged: (String newVal) =>
                                      jikanNotifier.updateSec(newVal),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('초'),
                              ),
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
