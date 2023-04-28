import 'package:flutter/material.dart';
import 'package:nalelu/state/manga/models.dart';
import 'package:nalelu/widgets/shared/furigana_text.dart';

class SpeachBubble extends StatelessWidget {
  final double mangaWidth;
  final Phrase phrase;
  final bool isCorrect;

  const SpeachBubble(
      {Key? key,
      required this.mangaWidth,
      required this.phrase,
      required this.isCorrect})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: this.phrase.top,
      left: this.phrase.left,
      child: Wrap(
        children: this
            .phrase
            .phraseParts
            .map((e) => e.isAnswerable && !isCorrect
                ? ElevatedButton(
                    onPressed: () => {}, child: Icon(Icons.question_mark))
                : FuriganaText(furigana: e.furiTexts))
            .toList(),
      ),
    );

    // Text(
    //   this.state.mangaExerciseModel.text1,
    //   style: TextStyle(fontSize: 12),
    // ),
    // isCorrect
    //     ? Text(widget.state.mangaExerciseModel.answers.answer1,
    //         style: TextStyle(fontSize: 12))
    //     : IconButton(
    //         icon: const Icon(Icons.lightbulb),
    //         onPressed: () => {
    //               setState(() => {
    //                     isTextfieldActive = true,
    //                   }),
    //             }),
    // Text(
    //   "?",
    //   style: TextStyle(fontSize: 12, color: Colors.black),
    // ),
  }
}
