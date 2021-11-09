import 'package:flutter/material.dart';
import 'package:nareru/state/models/count-exercise-state.dart';
import 'package:nareru/state/models/age-exercise-state.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:nareru/constants.dart';
import 'package:nareru/hd-helpers.dart';
import 'package:nareru/state/suuji.exercise-notifier.dart';
import 'package:nareru/widgets/suuji-exercise/counting/counting-exercise.dart';
import 'package:nareru/widgets/suuji-exercise/number-chart-button.dart';
import 'package:nareru/widgets/suuji-exercise/age/age-exercise.dart';

class SuujiExercise extends StatefulWidget {
  const SuujiExercise({Key? key}) : super(key: key);

  @override
  _SuujiExerciseState createState() => _SuujiExerciseState();
}

class _SuujiExerciseState extends State<SuujiExercise> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    getCarousel(BuildContext context, SuujiExerciseNotifier suujiModel) {
      return Center(
        child: SizedBox(
          height: screenSize.height - 250,
          width: screenSize.width,
          child: PageView.builder(
            itemCount: suujiModel.suujiExerciseState.getAll().length,
            controller: PageController(viewportFraction: 0.9),
            onPageChanged: (int index) => setState(() => _index = index),
            itemBuilder: (_, i) {
              return Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: getExerciseWidget(suujiModel, _index),
                ),
              );
            },
          ),
        ),
      );
    }

    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: Builder(builder: (BuildContext context) => BackButton()),
          elevation: APPBAR_ELEVATION,
          backgroundColor: HD.getAppBarColor(context),
          textTheme: HD.getAppBarTextTheme(context),
          iconTheme: HD.getAppBarIconTheme(context),
          title: Text(AppLocalizations.of(context)!.numbers,
              style: HEADER_TEXT_STYLE),
        ),
        body: ChangeNotifierProvider<SuujiExerciseNotifier>(
          create: (context) => SuujiExerciseNotifier(),
          child: Consumer<SuujiExerciseNotifier>(
            builder: (context, suujiModel, child) => Center(
              child: Column(
                children: [
                  NumberChartButton(),
                  getCarousel(context, suujiModel),
                ],
              ),
            ),
          ),
        ));
  }

  dynamic getExerciseWidget(SuujiExerciseNotifier suujiModel, int indx) {
    final itemfromList = suujiModel.suujiExerciseState.getAll()[indx];

    if (itemfromList is CountExerciseState)
      return CountingExercise(
        state: itemfromList,
        onUserCountSet: suujiModel.onUserCountSet,
      );

    if (itemfromList is AgeExerciseState)
      return AgeExercise(
        state: itemfromList,
        onAgeSet: suujiModel.onAgeSet,
      );
  }
}
