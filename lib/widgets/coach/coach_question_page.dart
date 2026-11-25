import 'package:material_ui/material_ui.dart';
import 'package:nalelu/furi_text.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/lang_data/coach/coach_questions.dart';
import 'package:nalelu/services/furigana_service.dart';
import 'package:nalelu/widgets/shared/furigana_text.dart';
import 'package:nrs_flutter_lib/widgets/n_navigation_header.dart';

class CoachQuestionPage extends StatefulWidget {
  final CoachQuestion question;
  final int? selectedChoice;
  final double progressPercentage;
  final ValueChanged<int?> onSelect;
  final VoidCallback onPrevious;
  final VoidCallback onNext;
  final bool nextEnabled;
  final bool previousEnabled;
  final bool clearEnabled;

  const CoachQuestionPage({
    Key? key,
    required this.question,
    required this.selectedChoice,
    required this.progressPercentage,
    required this.onSelect,
    required this.onPrevious,
    required this.onNext,
    this.nextEnabled = true,
    this.previousEnabled = true,
    this.clearEnabled = true,
  }) : super(key: key);

  @override
  State<CoachQuestionPage> createState() => _CoachQuestionPageState();
}

class _CoachQuestionPageState extends State<CoachQuestionPage> {
  int startReplaceIndex = -1;
  int replaceLength = 1;

  void clearReplaceState() {
    startReplaceIndex = -1;
    replaceLength = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          NNavigationHeader(
            setPrevious: () {
              clearReplaceState();
              widget.onPrevious();
            },
            setNext: () {
              clearReplaceState();
              widget.onNext();
            },
            clear: () {
              replaceBlankWith([FuriText(text: questionBlank)]);
              widget.onSelect(null);
              clearReplaceState();
            },
            getProgressPercentage: () => widget.progressPercentage,
            previousText: NA.t('previous'),
            nextText: NA.t('next'),
            clearText: NA.t('clear'),
            exerciseText: NA.t('exercise'),
            nextEnabled: widget.nextEnabled,
            previousEnabled: widget.previousEnabled,
            clearEnabled: widget.clearEnabled,
          ),
          FuriganaText(furiTexts: widget.question.questionParts),
          Expanded(
            child: ListView.builder(
              itemCount: widget.question.choices.length,
              itemBuilder: (context, i) {
                final isSelected = widget.selectedChoice == i;
                return Card(
                  child: ListTile(
                    leading: Icon(isSelected
                        ? Icons.radio_button_checked
                        : Icons.radio_button_unchecked),
                    title: widget.question.choices[i].first.text ==
                            unknownTranslationKey
                        ? Text(NA.t('i_dont_know'))
                        : FuriganaText(furiTexts: widget.question.choices[i]),
                    onTap: () {
                      if (widget.question.choices[i].first.text ==
                          unknownTranslationKey) {
                        replaceBlankWith([FuriText(text: questionBlank)]);
                      } else {
                        final replaceWith = widget.question.choices[i].map(
                          (c) => FuriText(
                              text: c.text,
                              furigana: c.furigana,
                              emphasize: true),
                        );

                        replaceBlankWith(replaceWith);
                      }

                      widget.onSelect(i);
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void replaceBlankWith(Iterable<FuriText> replaceWith) {
    // Cleanup previous replacements
    startReplaceIndex = widget.question.questionParts
        .indexWhere((qp) => qp.emphasize == true || qp.text == questionBlank);

    if (widget.question.questionParts[startReplaceIndex].text == questionBlank) {
      replaceLength = 1;
    }

    // Remove old replacements in reverse order
    for (int i = replaceLength - 1; i >= 0; i--) {
      widget.question.questionParts.removeAt(startReplaceIndex + i);
    }

    // Insert new ones
    widget.question.questionParts.insertAll(
      startReplaceIndex,
      replaceWith,
    );

    replaceLength = replaceWith.length;
  }
}
