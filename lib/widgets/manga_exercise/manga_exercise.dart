import 'package:flutter/material.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/state/enums.dart';
import 'package:nalelu/state/exercise_nav_notifier.dart';
import 'package:nalelu/state/manga/manga_notifier.dart';
import 'package:nalelu/widgets/manga_exercise/manga_exercise_state_area.dart';
import 'package:nalelu/widgets/shared/ad_card.dart';
import 'package:nalelu/widgets/shared/nav_header_wrapper.dart';
import 'package:nrs_flutter_lib/nrs_flutter_lib.dart';
import 'package:provider/provider.dart';

class MangaExercise extends StatelessWidget {
  const MangaExercise({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: ChangeNotifierProvider<ExerciseNavNotifier>(
        create: (context) => ExerciseNavNotifier(ExerciseType.Manga),
        child: Consumer<ExerciseNavNotifier>(
          builder: (context, navNotifier, child) => Scaffold(
            appBar: Nrs.NrsAppBar(title: '${NA.t('Manga')}', context: context),
            body: Center(
              child: CustomScrollView(slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      NavHeaderWrapper(navNotifier: navNotifier),
                      ChangeNotifierProvider<MangaNotifier>(
                        create: (context) =>
                            MangaNotifier(navNotifier.getActive),
                        child: Consumer<MangaNotifier>(
                          builder: (context, mangaNotifier, child) =>
                              MangaExerciseStateArea(
                            state: mangaNotifier.getActive(),
                            navNotifier: navNotifier,
                          ),
                        ),
                      ),
                      AdCard(),
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
