import 'package:flutter/material.dart';
import 'package:nareru/hd-helpers.dart';
import 'package:nareru/state/doushi/doushi-notifier.dart';
import 'package:nareru/state/enums.dart';
import 'package:nareru/state/exercise-nav-notifier.dart';
import 'package:nareru/widgets/doushi-exercise/verb-chart.dart';
import 'package:nareru/widgets/doushi-exercise/verb-input.dart';
import 'package:nareru/widgets/shared/ad-card.dart';
import 'package:nareru/widgets/shared/nav-header-wrapper.dart';
import 'package:nrs_flutter_lib/constants.dart';
import 'package:nrs_flutter_lib/nrs_flutter_lib.dart';
import 'package:nrs_flutter_lib/widgets/n_footer_button.dart';
import 'package:nrs_flutter_lib/widgets/n_footer_menu.dart';
import 'package:nrs_flutter_lib/widgets/n_text_span.dart';
import 'package:provider/provider.dart';

class DoushiExerciseLevel1 extends StatelessWidget {
  const DoushiExerciseLevel1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: ChangeNotifierProvider<ExerciseNavNotifier>(
        create: (context) => ExerciseNavNotifier(ExerciseType.Doushi),
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
                  AdCard(),
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
                              VerbChart(doushi: navNotifier.getActive().doushi),
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
      child: ChangeNotifierProvider<DoushiNotifier>(
        create: (context) => DoushiNotifier(navNotifier.getActive),
        child: Consumer<DoushiNotifier>(
          builder: (context, doushiNotifier, child) {
            var doushi = doushiNotifier.getActive().doushi;

            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    NTextSpan(
                      doushi.infinitive,
                      textStyle: HD.fontStyleBold(context),
                      textAlign: TextAlign.end,
                    ),
                    SizedBox(width: FONT_SIZE),
                    NTextSpan(doushi.translation),
                  ],
                ),
                VerbInput(
                  doushi: doushi,
                  activeValue: doushiNotifier.getUserInput(0),
                  label: HD.t('present'),
                  correctValue: doushi.banmar.present,
                  onChanged: (String newValue) =>
                      doushiNotifier.updateUserInput(0, newValue),
                ),
                VerbInput(
                  doushi: doushi,
                  activeValue: doushiNotifier.getUserInput(1),
                  label: HD.t('past'),
                  correctValue: doushi.banmar.past,
                  onChanged: (String newValue) =>
                      doushiNotifier.updateUserInput(1, newValue),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
