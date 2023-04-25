import 'package:flutter/material.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/state/doushi/doushi_notifier.dart';
import 'package:nalelu/state/enums.dart';
import 'package:nalelu/state/exercise_nav_notifier.dart';
import 'package:nalelu/widgets/doushi_exercise/verb_chart.dart';
import 'package:nalelu/widgets/doushi_exercise/verb_input.dart';
import 'package:nalelu/widgets/shared/ad_card.dart';
import 'package:nalelu/widgets/shared/nav_header_wrapper.dart';
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
                title: '${NA.t('verbs')} 1 (ため口)', context: context),
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
                    text: NA.t('verbChart'),
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
                      textStyle: NA.fontStyleBold(context),
                      textAlign: TextAlign.end,
                    ),
                    SizedBox(width: FONT_SIZE),
                    NTextSpan(doushi.translation),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: NTextSpan(
                    NA.t('present'),
                    textAlign: TextAlign.end,
                  ),
                ),
                VerbInput(
                  doushi: doushi,
                  activeValue: doushiNotifier.getUserInput(0),
                  correctValue: doushi.banmar.present,
                  onChanged: (String newValue) =>
                      doushiNotifier.updateUserInput(0, newValue),
                ),
                NTextSpan(
                  NA.t('past'),
                  textAlign: TextAlign.end,
                ),
                VerbInput(
                  doushi: doushi,
                  activeValue: doushiNotifier.getUserInput(1),
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
