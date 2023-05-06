import 'package:flutter/material.dart';
import 'package:nalelu/state/manga/models.dart';
import 'package:nalelu/widgets/shared/furigana_text.dart';

class SpeechBubble extends StatelessWidget {
  final Phrase phrase;
  final bool Function(PhrasePart activePhrase) getIsCorrect;
  final Function(PhrasePart activePhrase) onButtonTap;

  const SpeechBubble(
      {Key? key,
      required this.phrase,
      required this.getIsCorrect,
      required this.onButtonTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: LayoutBuilder(builder: (context, constraints) {
        final left = this.phrase.rightPercentage / 100;
        final top = this.phrase.downPercentage / 100;

        return Container(
          alignment: FractionalOffset(left, top),
          child: FractionallySizedBox(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.black,
                  width: 4,
                ),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 4, bottom: 0, left: 18, right: 18),
                child: Wrap(
                  children: this.phrase.phraseParts.map((e) {
                    final isCorrect = getIsCorrect(e);

                    return e.isAnswerable && !isCorrect
                        ? IconButton(
                            onPressed: () => onButtonTap(e),
                            icon: Icon(Icons.circle_outlined,
                                color: Theme.of(context).primaryColor))
                        : Padding(
                            padding: const EdgeInsets.only(bottom: 15.0),
                            child: FuriganaText(
                              furiTexts: e.furiTexts,
                              textColor: e.isAnswerable
                                  ? Theme.of(context).primaryColor
                                  : Colors.black,
                            ),
                          );
                  }).toList(),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
