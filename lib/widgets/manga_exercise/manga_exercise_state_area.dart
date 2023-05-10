import 'package:flutter/material.dart';
import 'package:nalelu/state/exercise_nav_notifier.dart';
import 'package:nalelu/state/manga/manga_exercise_state.dart';
import 'package:nalelu/state/manga/models.dart';
import 'package:nalelu/widgets/manga_exercise/speech_bubble.dart';
import 'package:nalelu/widgets/shared/furigana_text.dart';
import 'package:nalelu/widgets/shared/na_free_form_entry_wrapper.dart';
import 'package:nrs_flutter_lib/widgets/n_free_form_entry.dart';

class MangaExerciseStateArea extends StatefulWidget {
  final MangaExerciseState state;
  final ExerciseNavNotifier navNotifier;

  const MangaExerciseStateArea({
    required this.state,
    Key? key,
    required this.navNotifier,
  }) : super(key: key);

  @override
  State<MangaExerciseStateArea> createState() => _MangaExerciseStateAreaState();
}

class _MangaExerciseStateAreaState extends State<MangaExerciseStateArea> {
  PhrasePart? activePhrasePart;
  Phrase? activePhrase;

  Widget build(BuildContext context) {
    // TODO: Is there a better way to do detect next/previous button press?
    widget.navNotifier.onNextOrPrevious = () => activePhrasePart = null;
    const double padding = 8.0;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        activePhrasePart != null && activePhrase != null
            ? Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: padding),
                    child: Text(activePhrase!.translation),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: padding),
                    child: Wrap(
                        children: activePhrase!.phraseParts.map((e) {
                      return e.isAnswerable
                          ? Text(
                              ' ____ ',
                              style: TextStyle(
                                height: 2.3,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            )
                          : FuriganaText(furiTexts: e.furiTexts);
                    }).toList()),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(padding),
                    child: NaFreeFormEntryWrapper(
                      widthType: NFreeFormWidths.half,
                      hintValue: '',
                      onChanged: (String newValue) {
                        widget.state
                            .updateUserInput(activePhrasePart, newValue);

                        final isPhrasePartCorrect =
                            widget.state.isPhrasePartCorrect(activePhrasePart);

                        if (isPhrasePartCorrect) {
                          setState(() {
                            activePhrasePart = null;
                          });
                        }
                      },
                      initialValue: widget.state.getUserInput(activePhrasePart),
                      correctValues:
                          widget.state.getCorrectAnswers(activePhrasePart),
                      onCorrect: () {
                        setState(() {});
                      },
                    ),
                  ),
                ],
              )
            : Container(),
        Stack(
          children: [
            Image(
              fit: BoxFit.cover,
              image: AssetImage(widget.state.mangaExerciseModel.imageUrl),
            ),
            ...widget.state.mangaExerciseModel.phrases.map(
              (p) => SpeechBubble(
                getIsCorrect: widget.state.isPhrasePartCorrect,
                phrase: p,
                onButtonTap: (PhrasePart phrasePart) => {
                  setState(() {
                    activePhrasePart = phrasePart;
                    activePhrase = p;
                  })
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
