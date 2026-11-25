import 'package:material_ui/material_ui.dart';
import 'package:nalelu/furi_text.dart';
import 'package:nalelu/services/coach_result.dart';
import 'package:nalelu/services/furigana_service.dart';
import 'package:nalelu/widgets/coach/coach_results_page.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Default', type: CoachResultsPage)
Widget buildCoachFeedbackUseCase(BuildContext context) {
  final Future<CoachFeedback> feedbackFuture = Future(
    () => CoachFeedback(
      feedback: [
        FuriText(text: '青', furigana: 'あお'),
        FuriText(text: 'い'),
        FuriText(text: ' is the correct answer.'),
      ],
    ),
  );

  final answers = [
    CoachAnswer(
      question: 'これは$questionBlankです。',
      correctAnswer: '',
      givenAnswer: '',
    ),
  ];

  return CoachResultsPage(
    answers: answers,
    feedbackFuture: feedbackFuture,
    onRetry: () {},
  );
}
