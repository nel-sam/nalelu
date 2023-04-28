import 'package:flutter/material.dart';
import 'package:nalelu/state/manga/models.dart';
import 'package:nalelu/widgets/shared/furigana_text.dart';

class SpeechBubble extends StatelessWidget {
  final Phrase phrase;
  final bool isCorrect;
  final Function(PhrasePart activePhrase) onButtonTap;

  const SpeechBubble(
      {Key? key,
      required this.phrase,
      required this.isCorrect,
      required this.onButtonTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: this.phrase.top,
      left: this.phrase.left,
      child: Expanded(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.black,
              width: 4,
            ),
            borderRadius: BorderRadius.circular(40),
          ),
          child: Wrap(
            children: this
                .phrase
                .phraseParts
                .map((e) => e.isAnswerable && !isCorrect
                    ? ElevatedButton(
                        onPressed: () => onButtonTap(e),
                        child: Icon(Icons.question_mark))
                    : FuriganaText(furigana: e.furiTexts))
                .toList(),
          ),
        ),
      ),
    );
  }
}
