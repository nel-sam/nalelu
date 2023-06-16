import 'package:flutter/material.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/state/doushi/doushi_notifier.dart';
import 'package:nalelu/state/enums.dart';
import 'package:nalelu/state/exercise_nav_notifier.dart';
import 'package:nalelu/widgets/doushi_exercise/doushi_exercise_state_area.dart';
import 'package:nalelu/widgets/doushi_exercise/verb_chart.dart';
import 'package:nalelu/widgets/shared/ad_card.dart';
import 'package:nalelu/widgets/shared/nav_header_wrapper.dart';
import 'package:nrs_flutter_lib/nrs_flutter_lib.dart';
import 'package:nrs_flutter_lib/widgets/n_footer_button.dart';
import 'package:nrs_flutter_lib/widgets/n_footer_menu.dart';
import 'package:provider/provider.dart';

class DoushiExerciseLevel1 extends StatefulWidget {
  final bool showVerbFurigana;
  final bool showVerbTranslations;
  final int numberOfDoushiExercises;

  const DoushiExerciseLevel1(
      {Key? key,
      required this.showVerbFurigana,
      required this.showVerbTranslations,
      required this.numberOfDoushiExercises})
      : super(key: key);

  @override
  State<DoushiExerciseLevel1> createState() => _DoushiExerciseLevel1State();
}

class _DoushiExerciseLevel1State extends State<DoushiExerciseLevel1> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: ChangeNotifierProvider<ExerciseNavNotifier>(
        create: (context) => ExerciseNavNotifier(
            exerciseType: ExerciseType.Doushi,
            maxExerciseCount: widget.numberOfDoushiExercises),
        child: Consumer<ExerciseNavNotifier>(
          builder: (context, navNotifier, child) => Scaffold(
            appBar: Nrs.NrsAppBar(title: NA.t('verbs'), context: context),
            body: Center(
              child: CustomScrollView(
                slivers: [
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        NavHeaderWrapper(navNotifier: navNotifier),
                        Expanded(
                            child: Container(
                          child: ChangeNotifierProvider<DoushiNotifier>(
                            create: (context) =>
                                DoushiNotifier(navNotifier.getActive),
                            child: Consumer<DoushiNotifier>(
                              builder: (context, doushiNotifier, child) =>
                                  DoushiExerciseStateArea(
                                      state: doushiNotifier.getActive(),
                                      showVerbTranslations:
                                          widget.showVerbTranslations,
                                      showVerbFurigana:
                                          widget.showVerbFurigana),
                            ),
                          ),
                        )),
                        AdCard(),
                      ],
                    ),
                  )
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
}
