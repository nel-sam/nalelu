import 'package:flutter/material.dart';
import 'package:nalelu/state/manga/models.dart';
import 'package:nalelu/widgets/shared/furigana_text.dart';
import 'package:nrs_flutter_lib/nrs_flutter_lib.dart';

class SpeechBubble extends StatelessWidget {
  final double mangaWidth;
  final Phrase phrase;
  final bool Function(PhrasePart activePhrase) getIsCorrect;
  final Function(PhrasePart activePhrase) onButtonTap;

  const SpeechBubble(
      {Key? key,
      required this.mangaWidth,
      required this.phrase,
      required this.getIsCorrect,
      required this.onButtonTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: this.mangaWidth * (this.phrase.downPercentage / 100),
      left: this.mangaWidth * (this.phrase.rightPercentage / 100),
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
          padding: const EdgeInsets.all(8),
          child: Wrap(
            children: this.phrase.phraseParts.map((e) {
              final isCorrect = getIsCorrect(e);

              return e.isAnswerable && !isCorrect
                  ? IconButton(
                      onPressed: () => onButtonTap(e),
                      icon: Icon(Icons.circle_outlined))
                  : FuriganaText(
                      furigana: e.furiTexts,
                      labelColor:
                          e.isAnswerable ? Nrs.getPrimaryColor(context) : null,
                    );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
