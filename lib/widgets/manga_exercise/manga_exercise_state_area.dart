import 'package:flutter/material.dart';
import 'package:nalelu/state/manga/manga_exercise_state.dart';
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
    final isCorrect = widget.state.mangaWord.answers.answer1 ==
        (widget.state.getUserInput(0));

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
                            widget.state.mangaWord.text1,
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          isCorrect
                              ? Text(widget.state.mangaWord.answers.answer1,
                                  style: TextStyle(fontSize: 12))
                              : IconButton(
                                  icon: const Icon(Icons.lightbulb),
                                  onPressed: () => {
                                        setState(() => {
                                              isTextfieldActive = true,
                                            }),
                                      }),
                          Text(
                            "?",
                            style: TextStyle(fontSize: 12, color: Colors.black),
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
         isTextfieldActive && !isCorrect
  
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  NHintButton(
                      onHintActive: (bool onHintActive) =>
                          isHintActive = onHintActive,
                      userInput: widget.state.getUserInput(0),
                      correctAnswer: widget.state.mangaWord.answers.answer1,
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
                      initialValue: widget.state.getUserInput(0),
                      correctValues: [widget.state.mangaWord.answers.answer1],
                    ),
                  )
                ],
              ) : Container(),
      ],
    );
  }
}
