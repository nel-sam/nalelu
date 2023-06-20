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
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Wrap(
                  children: this.phrase.phraseParts.map((e) {
                    final isCorrect = getIsCorrect(e);

                    return e.isAnswerable && !isCorrect
                        ? Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: IconButton(
                              padding: EdgeInsets.zero,
                              constraints: BoxConstraints(),
                              icon: Icon(
                                Icons.create_sharp,
                                color: Theme.of(context).colorScheme.primary,
                                size: 16.0,
                              ),
                              onPressed: () => onButtonTap(e),
                            ),
                          )
                        : FuriganaText(
                            fontSize: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .fontSize!,
                            furiTexts: e.furiTexts,
                            textColor: e.isAnswerable
                                ? Theme.of(context).colorScheme.primary
                                : Colors.black,
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
