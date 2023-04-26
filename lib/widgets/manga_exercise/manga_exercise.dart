import 'package:flutter/material.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/state/enums.dart';
import 'package:nalelu/state/exercise_nav_notifier.dart';
import 'package:nalelu/state/manga/manga_notifier.dart';
import 'package:nalelu/widgets/manga_exercise/text_entry_activator.dart';
import 'package:nalelu/widgets/shared/ad_card.dart';
import 'package:nalelu/widgets/shared/home_button_wrapper.dart';
import 'package:nalelu/widgets/shared/na_free_form_entry_wrapper.dart';
import 'package:nalelu/widgets/shared/nav_header_wrapper.dart';
import 'package:nalelu/widgets/suuji_exercise/number_chart.dart';
import 'package:nrs_flutter_lib/enums.dart';
import 'package:nrs_flutter_lib/nrs_flutter_lib.dart';
import 'package:nrs_flutter_lib/widgets/n_answer_status_icon.dart';
import 'package:nrs_flutter_lib/widgets/n_footer_button.dart';
import 'package:nrs_flutter_lib/widgets/n_footer_menu.dart';
import 'package:nrs_flutter_lib/widgets/n_free_form_entry.dart';
import 'package:nrs_flutter_lib/widgets/n_hint_button.dart';
import 'package:provider/provider.dart';

class MangaExercise extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget getContent(BuildContext context) {
      return ChangeNotifierProvider<ExerciseNavNotifier>(
        create: (context) => ExerciseNavNotifier(ExerciseType.Manga),
        child: Consumer<ExerciseNavNotifier>(
          builder: (context, navNotifier, child) {
            var s = navNotifier.getActive();
            bool isHintActive = false;
            bool isTextfieldActive = false;
            final mangaWidth = Nrs.getScreenWidth() - 80;
            return Padding(
              padding: EdgeInsets.all(24),
              child: Column(
                children: [
                  NavHeaderWrapper(navNotifier: navNotifier),
                  ChangeNotifierProvider<MangaNotifier>(
                    create: (context) => MangaNotifier(navNotifier.getActive),
                    child: Consumer<MangaNotifier>(
                      builder: (context, mangaNotifier, child) {
                        var s = mangaNotifier.getStateItem();
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Container(
                                    width: mangaWidth,
                                    height: mangaWidth,
                                    child: Stack(
                                      fit: StackFit.expand,
                                      children: <Widget>[
                                        Image(
                                          fit: BoxFit.cover,
                                          image: AssetImage('manga/art_1.jpeg'),
                                        ),
                                        Positioned(
                                          top: mangaWidth * 0.1,
                                          left: mangaWidth * 0.1,
                                          child: Row(
                                            children: [
                                              Text(
                                                "美味しいです",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.black),
                                              ),
                                              !s.correctAnswers
                                                      .contains(s.userInput)
                                                  ? TextEntryActivator(
                                                      onPress: () =>
                                                          isTextfieldActive =
                                                              true)
                                                  : Text(s.userInput,
                                                      style: TextStyle(
                                                          fontSize: 12)),
                                              Text(
                                                "?",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.black),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            isHintActive
                                ? Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      NHintButton(
                                          onHintActive: (bool onHintActive) =>
                                              isHintActive = onHintActive,
                                          userInput: s.userInput,
                                          correctAnswer: s.correctAnswers[0],
                                          onHintUpdate: (String hint) => {
                                                mangaNotifier.updateManga(hint),
                                              }),
                                      Container(
                                        width: 250,
                                        child: NaFreeFormEntryWrapper(
                                          widthType: NFreeFormWidths.half,
                                          hintValue: '',
                                          onChanged: (String newValue) {},
                                          initialValue: s.userInput,
                                          correctValues: s.correctAnswers,
                                        ),
                                      )
                                    ],
                                  )
                                : Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(),
                                      // TODO: Make 3d
                                      NAnswerStatusIcon(
                                          status: s.getIsCorrect()
                                              ? CorrectStatus.correct
                                              : CorrectStatus.unstarted),
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
