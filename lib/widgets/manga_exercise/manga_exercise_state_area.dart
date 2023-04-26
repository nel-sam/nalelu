import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:nalelu/state/manga/manga_exercise_state.dart';
import 'package:nalelu/widgets/shared/na_free_form_entry_wrapper.dart';
import 'package:nrs_flutter_lib/enums.dart';
import 'package:nrs_flutter_lib/nrs_flutter_lib.dart';
import 'package:nrs_flutter_lib/widgets/n_answer_status_icon.dart';
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
    var isAnswer1Correct =
        widget.state.correctAnswers1.contains(widget.state.userInput1)
            ? CorrectStatus.correct
            : CorrectStatus.unstarted;
    var isAnswer2Correct =
        widget.state.correctAnswers2.contains(widget.state.userInput2)
            ? CorrectStatus.correct
            : CorrectStatus.unstarted;
    var isAnswer3Correct =
        widget.state.correctAnswers3.contains(widget.state.userInput2)
            ? CorrectStatus.correct
            : CorrectStatus.unstarted;

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
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          !widget.state.correctAnswers1
                                  .contains(widget.state.userInput1)
                              ? IconButton(
                                  icon: const Icon(Icons.lightbulb),
                                  onPressed: () => {
                                        setState(() => {
                                              isTextfieldActive = true,
                                            }),
                                      })
                              : Text(widget.state.userInput1,
                                  style: TextStyle(fontSize: 12)),
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
        !widget.state.correctAnswers1.contains(widget.state.userInput1) &&
                isTextfieldActive
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  NHintButton(
                      onHintActive: (bool onHintActive) =>
                          isHintActive = onHintActive,
                      userInput: widget.state.userInput2,
                      correctAnswer: widget.state.correctAnswers1[0],
                      onHintUpdate: (String hint) => {
                            setState(() => {
                                  widget.state.updateAnswer1(hint),
                                }),
                          }),
                  Container(
                    width: 250,
                    child: NaFreeFormEntryWrapper(
                      widthType: NFreeFormWidths.half,
                      hintValue: '',
                      onChanged: (String newValue) {},
                      initialValue: widget.state.userInput1,
                      correctValues: widget.state.correctAnswers1,
                    ),
                  )
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(),
                ],
              ),
        widget.state.getIsCorrect()
            ? NAnswerStatusIcon(
                status: widget.state.getIsCorrect()
                    ? CorrectStatus.correct
                    : CorrectStatus.unstarted)
            : Container(),
      ],
    );
  }
}
