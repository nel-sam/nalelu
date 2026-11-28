import 'package:material_ui/material_ui.dart';

const ageExerciseCount = 10;
const mangeExerciseCount = 10;
const String appName = "nalelu";

const countExerciseCount = 20;
const jikanExerciseCount = 10;

class NAIcons {
  static IconData numbers = Icons.widgets_outlined;
  static IconData verbs = Icons.nordic_walking_outlined;
}

// Override with: flutter run --dart-define=LANG_COACH_API_HOST=http://localhost:5030
const String langCoachApiHost = String.fromEnvironment(
  'LANG_COACH_API_HOST',
  defaultValue:
      'https://nrsdev-langapp-api-e9emahf0cefuaegm.westeurope-01.azurewebsites.net/',
);
