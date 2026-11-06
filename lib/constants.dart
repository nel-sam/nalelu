import 'package:flutter/material.dart';

const AGE_EXERCISE_COUNT = 10;
const MANGA_EXERCISE_COUNT = 10;
const String APP_NAME = "nalelu";

const COUNT_EXERCISE_COUNT = 20;
const JIKAN_EXERCISE_COUNT = 10;

class NAIcons {
  static IconData numbers = Icons.widgets_outlined;
  static IconData verbs = Icons.nordic_walking_outlined;
}

// Override with: flutter run --dart-define=LANG_COACH_API_HOST=http://localhost:5030
const String LANG_COACH_API_HOST = String.fromEnvironment(
  'LANG_COACH_API_HOST',
  defaultValue:
      'https://nrsdev-langapp-api-e9emahf0cefuaegm.westeurope-01.azurewebsites.net/',
);
