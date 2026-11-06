import 'package:flutter/material.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/services/coach_question.dart';
import 'package:nalelu/services/coach_result.dart';
import 'package:nalelu/services/lang-coach-service.dart';
import 'package:nalelu/widgets/coach/coach_error.dart';
import 'package:nalelu/widgets/coach/coach_intro.dart';
import 'package:nalelu/widgets/coach/coach_question_page.dart';
import 'package:nalelu/widgets/coach/coach_results_page.dart';
import 'package:nalelu/widgets/shared/ad_card.dart';
import 'package:nrs_flutter_lib/nrs_flutter_lib.dart';
import 'package:nrs_flutter_lib/widgets/n_spinner.dart';

enum _CoachPage { intro, question, results }

class Coach extends StatefulWidget {
  const Coach({Key? key}) : super(key: key);

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
    super.dispose();
  }

  void _loadQuestions() {
    setState(() {
      _questions = null;
      _loadError = null;
    });

    _service.getQuestions().then((questions) {
      if (!mounted) return;
      setState(() {
        _questions = questions;
        _selected = List<int?>.filled(questions.length, null);
      });
    }).catchError((Object error) {
      if (!mounted) return;
      setState(() => _loadError = error);
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
          question: _questions![i].question,
          correctAnswer: _questions![i].correctAnswer,
          givenAnswer: _questions![i].choices[_selected[i]!],
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: _buildContent()),
          const AdCard(),
        ],
      ),
    );
  }
}
