// dart format width=80
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:widgetbook/widgetbook.dart' as _widgetbook;
import 'package:widgetbook_workspace/coach.dart' as _widgetbook_workspace_coach;
import 'package:widgetbook_workspace/coach_results_page.dart'
    as _widgetbook_workspace_coach_results_page;
import 'package:widgetbook_workspace/furigana_text.dart'
    as _widgetbook_workspace_furigana_text;
import 'package:widgetbook_workspace/login_page.dart'
    as _widgetbook_workspace_login_page;

final directories = <_widgetbook.WidgetbookNode>[
  _widgetbook.WidgetbookFolder(
    name: 'widgets',
    children: [
      _widgetbook.WidgetbookComponent(
        name: 'LoginPage',
        useCases: [
          _widgetbook.WidgetbookUseCase(
            name: 'Default',
            builder: _widgetbook_workspace_login_page.buildCoachFeedbackUseCase,
          ),
        ],
      ),
      _widgetbook.WidgetbookFolder(
        name: 'coach',
        children: [
          _widgetbook.WidgetbookComponent(
            name: 'Coach',
            useCases: [
              _widgetbook.WidgetbookUseCase(
                name: 'Results Page',
                builder: _widgetbook_workspace_coach.buildCoachResultsUseCase,
              ),
            ],
          ),
          _widgetbook.WidgetbookComponent(
            name: 'CoachResultsPage',
            useCases: [
              _widgetbook.WidgetbookUseCase(
                name: 'Default',
                builder: _widgetbook_workspace_coach_results_page
                    .buildCoachFeedbackUseCase,
              ),
            ],
          ),
        ],
      ),
      _widgetbook.WidgetbookFolder(
        name: 'shared',
        children: [
          _widgetbook.WidgetbookComponent(
            name: 'FuriganaText',
            useCases: [
              _widgetbook.WidgetbookUseCase(
                name: 'Default',
                builder: _widgetbook_workspace_furigana_text
                    .buildCoachFeedbackUseCase,
              ),
            ],
          ),
        ],
      ),
    ],
  ),
];
