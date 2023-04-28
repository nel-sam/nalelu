import 'package:flutter/material.dart';
import 'package:nalelu/state/manga/manga_exercise_state.dart';
import 'package:nalelu/widgets/manga_exercise/speech_bubble.dart';
import 'package:nalelu/widgets/shared/na_free_form_entry_wrapper.dart';
import 'package:nrs_flutter_lib/nrs_flutter_lib.dart';
import 'package:nrs_flutter_lib/widgets/n_free_form_entry.dart';
import 'package:nrs_flutter_lib/widgets/n_hint_button.dart';

class MangaExerciseStateArea extends StatefulWidget {
  final MangaExerciseState state;

  const MangaExerciseStateArea({required this.state, Key? key})
      : super(key: key);

  @override
  State<MangaExerciseStateArea> createState() => _MangaExerciseStateAreaState();
}

class _MangaExerciseStateAreaState extends State<MangaExerciseStateArea> {
  @override
  bool isHintActive = false;
  bool isTextfieldActive = false;
  final mangaWidth = Nrs.getScreenWidth() - 80;

  Widget build(BuildContext context) {
    // TODO: Update this once we start using proper lists
    final isCorrect = widget.state.isCorrect(0);
    int activeIndex = 0;

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
                      image:
                          AssetImage(widget.state.mangaExerciseModel.imageUrl),
                    ),
                    ...widget.state.mangaExerciseModel.phrases.map(
                      (e) => SpeechBubble(
                        isCorrect: false, // TODO: Figure this out later
                        phrase: e,
                        onButtonTap: () => {
                          setState(() {
                            activeIndex = widget
                                .state.mangaExerciseModel.phrases
                                .indexOf(e);
                            isTextfieldActive = true;
                          })
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        isTextfieldActive && !isCorrect
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  NHintButton(
                      onHintActive: (bool onHintActive) =>
                          isHintActive = onHintActive,
                      userInput: widget.state.getUserInput(activeIndex),
                      correctAnswer:
                          widget.state.getCorrectAnswers(activeIndex),
                      onHintUpdate: (String hint) => {
                            setState(() => {
                                  widget.state.updateUserInput(0, hint),
                                }),
                          }),
                  Container(
                    width: 200,
                    child: NaFreeFormEntryWrapper(
                      widthType: NFreeFormWidths.half,
                      hintValue: '',
                      onChanged: (String newValue) {
                        setState(() {
                          widget.state.updateUserInput(0, newValue);
                        });
                      },
                      initialValue: widget.state.getUserInput(activeIndex),
                      correctValues: [
                        widget.state.getCorrectAnswers(activeIndex)
                      ],
                    ),
                  )
                ],
              )
            : Container(),
      ],
    );
  }
}
