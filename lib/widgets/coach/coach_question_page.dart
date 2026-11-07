import 'package:flutter/material.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/services/coach_question.dart';
import 'package:nrs_flutter_lib/widgets/n_navigation_header.dart';

class CoachQuestionPage extends StatelessWidget {
  final CoachQuestion question;
  final int? selectedChoice;
  final double progressPercentage;
  final ValueChanged<int?> onSelect;
  final VoidCallback onPrevious;
  final VoidCallback onNext;

  const CoachQuestionPage({
    Key? key,
    required this.question,
    required this.selectedChoice,
    required this.progressPercentage,
    required this.onSelect,
    required this.onPrevious,
    required this.onNext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          NNavigationHeader(
            setPrevious: onPrevious,
            setNext: onNext,
            clear: () => onSelect(null),
            getProgressPercentage: () => progressPercentage,
            previousText: NA.t('previous'),
            nextText: NA.t('next'),
            clearText: NA.t('clear'),
            exerciseText: NA.t('exercise'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Text(
              question.question,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 24),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: question.choices.length,
              itemBuilder: (context, i) {
                final isSelected = selectedChoice == i;
                return Card(
                  child: ListTile(
                    selected: isSelected,
                    leading: Icon(isSelected
                        ? Icons.radio_button_checked
                        : Icons.radio_button_unchecked),
                    title: Text(question.choices[i] == 'unknown' ? NA.t('i_dont_know') : question.choices[i]),
                    onTap: () => onSelect(i),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
