import 'package:flutter/material.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/state/enums.dart';
import 'package:nalelu/state/exercise_nav_notifier.dart';
import 'package:nalelu/state/kanji/kanji_notifier.dart';
import 'package:nalelu/widgets/kanji_exercise/kanji_exercise_state_area.dart';
import 'package:nalelu/widgets/shared/ad_card.dart';
import 'package:nalelu/widgets/shared/home_button_wrapper.dart';
import 'package:nalelu/widgets/shared/nav_header_wrapper.dart';
import 'package:nrs_flutter_lib/nrs_flutter_lib.dart';
import 'package:nrs_flutter_lib/widgets/n_footer_menu.dart';
import 'package:provider/provider.dart';

class KanjiExercise extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget getContent(BuildContext context) {
      return ChangeNotifierProvider<ExerciseNavNotifier>(
        create: (context) => ExerciseNavNotifier(ExerciseType.Kanji),
        child: Consumer<ExerciseNavNotifier>(
          builder: (context, navNotifier, child) {
            return Padding(
              padding: EdgeInsets.all(24),
              child: Column(
                children: [
                  NavHeaderWrapper(navNotifier: navNotifier),
                  ChangeNotifierProvider<KanjiNotifier>(
                    create: (context) => KanjiNotifier(navNotifier.getActive),
                    child: Consumer<KanjiNotifier>(
                      builder: (context, kanjiNotifier, child) {
                        return KanjiExerciseStateArea(
                            state: kanjiNotifier.getActive());
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
        appBar: Nrs.NrsAppBar(title: NA.t('kanji'), context: context),
        body: Center(
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    getContent(context),
                    AdCard(),
                  ],
                ),
              ),
            ],
          ),
        ),
        persistentFooterButtons: [
          NFooterMenu(buttons: [
            HomeButtonWrapper(),
          ])
        ],
      ),
    );
  }
}