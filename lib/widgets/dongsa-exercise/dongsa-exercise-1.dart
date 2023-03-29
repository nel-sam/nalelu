import 'package:flutter/material.dart';
import 'package:nareru/hd-helpers.dart';
import 'package:nareru/state/dongsa/dongsa-notifier.dart';
import 'package:nareru/state/enums.dart';
import 'package:nareru/state/exercise-nav-notifier.dart';
import 'package:nareru/widgets/dongsa-exercise/verb-chart.dart';
import 'package:nareru/widgets/dongsa-exercise/verb-input.dart';
import 'package:nareru/widgets/shared/ad-card.dart';
import 'package:nareru/widgets/shared/nav-header-wrapper.dart';
import 'package:nrs_flutter_lib/constants.dart';
import 'package:nrs_flutter_lib/nrs_flutter_lib.dart';
import 'package:nrs_flutter_lib/widgets/n_footer_button.dart';
import 'package:nrs_flutter_lib/widgets/n_footer_menu.dart';
import 'package:nrs_flutter_lib/widgets/n_text_span.dart';
import 'package:provider/provider.dart';

class DongsaExerciseLevel1 extends StatelessWidget {
  const DongsaExerciseLevel1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: ChangeNotifierProvider<ExerciseNavNotifier>(
        create: (context) => ExerciseNavNotifier(ExerciseType.Dongsa),
        child: Consumer<ExerciseNavNotifier>(
          builder: (context, navNotifier, child) => Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: Nrs.NrsAppBar(
                title: '${HD.t('verbs')} 1 (반말)', context: context),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NavHeaderWrapper(navNotifier: navNotifier),
                  Expanded(child: getExercises(context, navNotifier)),
                  //AdCard(),
                ],
              ),
            ),
            persistentFooterButtons: [
              NFooterMenu(
                buttons: [
                  NFooterButton(
                    text: HD.t('verbChart'),
                    icon: Icons.list,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              VerbChart(dongsa: navNotifier.getActive().dongsa),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getExercises(BuildContext context, ExerciseNavNotifier navNotifier) {
    var width = Nrs.getScreenWidth(halfWidth: true) + 80;

    return Container(
      width: width,
      child: ChangeNotifierProvider<DongsaNotifier>(
        create: (context) => DongsaNotifier(navNotifier.getActive),
        child: Consumer<DongsaNotifier>(
          builder: (context, dongsaNotifier, child) {
            var dongsa = dongsaNotifier.getActive().dongsa;

            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    NTextSpan(
                      dongsa.infinitive,
                      textStyle: HD.fontStyleBold(context),
                      textAlign: TextAlign.end,
                    ),
                    SizedBox(width: FONT_SIZE),
                    NTextSpan(dongsa.translation),
                  ],
                ),
                VerbInput(
                  dongsa: dongsa,
                  activeValue: dongsaNotifier.getUserInput(0),
                  label: HD.t('present'),
                  correctValue: dongsa.banmar.present,
                  onChanged: (String newValue) =>
                      dongsaNotifier.updateUserInput(0, newValue),
                ),
                VerbInput(
                  dongsa: dongsa,
                  activeValue: dongsaNotifier.getUserInput(1),
                  label: HD.t('past'),
                  correctValue: dongsa.banmar.past,
                  onChanged: (String newValue) =>
                      dongsaNotifier.updateUserInput(1, newValue),
                ),
                VerbInput(
                  activeValue: dongsaNotifier.getUserInput(2),
                  dongsa: dongsa,
                  label: HD.t('future'),
                  correctValue: '${dongsa.banmar.futureStem} 거야',
                  onChanged: (String newValue) =>
                      dongsaNotifier.updateUserInput(2, newValue),
                ),
                // VerbInput(
                //   activeValue: dongsaNotifier.getUserInput(3),
                //   dongsa: dongsa,
                //   label: HD.t('conditional'),
                //   correctValue: '${dongsa.stem}겠어',
                //   onChanged: (String newValue) =>
                //       dongsaNotifier.updateUserInput(3, newValue),
                // ),
                VerbInput(
                  activeValue: dongsaNotifier.getUserInput(4),
                  dongsa: dongsa,
                  label: HD.t('propositive'),
                  correctValue: '${dongsa.stem}자',
                  onChanged: (String newValue) =>
                      dongsaNotifier.updateUserInput(4, newValue),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
