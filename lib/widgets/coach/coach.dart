import 'package:material_ui/material_ui.dart';
import 'package:nalelu/furi_text.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/lang_data/coach/coach_questions.dart';
import 'package:nalelu/services/coach_result.dart';
import 'package:nalelu/services/furigana_service.dart';
import 'package:nalelu/services/lang_coach_service.dart';
import 'package:nalelu/widgets/coach/coach_error.dart';
import 'package:nalelu/widgets/coach/coach_intro.dart';
import 'package:nalelu/widgets/coach/coach_question_page.dart';
import 'package:nalelu/widgets/coach/coach_results_page.dart';
import 'package:nalelu/widgets/shared/ad_card.dart';
import 'package:nrs_flutter_lib/nrs_flutter_lib.dart';
import 'package:nrs_flutter_lib/widgets/n_spinner.dart';
import 'package:flutter/services.dart' show rootBundle;

enum _CoachPage { intro, question, results }

class Coach extends StatefulWidget {
  final String? questionJsonStr;

  const Coach({super.key, this.questionJsonStr});

  @override
  State<Coach> createState() => _CoachState();
}

class _CoachState extends State<Coach> {
  final LangCoachService _service = LangCoachService();

  List<CoachQuestion>? _questions;
  Object? _loadError;

  _CoachPage _page = _CoachPage.intro;
  int _index = 0;
  // Index into question.choices for each question; null = not answered yet.
  List<int?> _selected = [];
  List<CoachAnswer> _answers = [];
  Future<CoachFeedback>? _feedbackFuture;

  @override
  void initState() {
    super.initState();
    _loadQuestions();
  }

  @override
  void dispose() {
    _service.dispose();
    _questions = null;
    super.dispose();
  }

  Future<void> _loadQuestions() async {
    setState(() {
      _questions = null;
    });

    String jsonString;

    if (widget.questionJsonStr == null) {
      jsonString =
          await rootBundle.loadString('lib/lang_data/coach/question-data.json');
    } else {
      jsonString = widget.questionJsonStr!;
    }

    getCoachQuestionBank(jsonString).then((questions) {
      final questionCount = 7 + (DateTime.now().millisecondsSinceEpoch % 5);
      final selectedQuestions = questions.toList()..shuffle();

      setState(() {
        _questions = [
          ...selectedQuestions.take(questionCount).map((q) => CoachQuestion(
              questionParts: q.questionParts
                  .map((qp) => FuriText(text: qp.text, furigana: qp.furigana))
                  .toList(),
              correctAnswerIndex: q.correctAnswerIndex,
              choices: [
                ...q.choices,
                [FuriText(text: unknownTranslationKey)]
              ],
              testedAbilities: q.testedAbilities))
        ];
        _selected = List<int?>.filled(_questions!.length, null);
        _loadError = null;
      });
    }).catchError((e) {
      setState(() {
        _loadError = e;
        _questions = null;
      });
    });
  }

  void _start() {
    setState(() {
      _page = _CoachPage.question;
      _index = 0;
    });
  }

  void _select(int? choice) {
    setState(() => _selected[_index] = choice);
  }

  void _previous() {
    setState(() {
      if (_index == 0) {
        _page = _CoachPage.intro;
      } else {
        _index--;
      }
    });
  }

  void _next() {
    if (_selected[_index] == null) {
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(SnackBar(content: Text(NA.t('coach_select_answer'))));
      return;
    }

    setState(() {
      if (_index < _questions!.length - 1) {
        _index++;
      } else {
        _page = _CoachPage.results;
        _submitResults();
      }
    });
  }

  void _submitResults() {
    _answers = [
      for (var i = 0; i < _questions!.length; i++)
        CoachAnswer(
          question: _questions![i].questionParts.map((qp) => qp.text).join(),
          correctAnswer: _questions![i]
              .choices[_questions![i].correctAnswerIndex]
              .map((qp) => qp.text)
              .join(),
          givenAnswer:
              _questions![i].choices[_selected[i]!].map((qp) => qp.text).join(),
        ),
    ];

    // The locale Flutter resolved against supportedLocales ('en' or 'es'),
    // i.e. the language the user is reading the app in right now.
    final nativeLanguage =
        Localizations.localeOf(context).languageCode.toUpperCase();

    _feedbackFuture =
        _service.postResults(_answers, nativeLanguage: nativeLanguage);
  }

  double _progressPercentage() {
    final last = _questions!.length - 1;
    return last == 0 ? 100 : (_index / last) * 100;
  }

  Widget _buildContent() {
    if (_loadError != null) {
      return CoachError(
        message: NA.t('coach_load_error'),
        error: _loadError,
        onRetry: _loadQuestions,
      );
    }
    if (_questions == null) {
      return const NSpinner();
    }

    switch (_page) {
      case _CoachPage.intro:
        return CoachIntro(onNext: _start);
      case _CoachPage.question:
        return CoachQuestionPage(
          question: _questions![_index],
          selectedChoice: _selected[_index],
          progressPercentage: _progressPercentage(),
          onSelect: _select,
          onPrevious: _previous,
          onNext: _next,
          nextEnabled: _selected[_index] != null,
        );
      case _CoachPage.results:
        return CoachResultsPage(
          answers: _answers,
          feedbackFuture: _feedbackFuture!,
          onRetry: () => setState(_submitResults),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: Nrs.NrsAppBar(title: NA.t('coach'), context: context),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: _buildContent()),
            AdCard(),
          ],
        ),
      ),
    );
  }
}
