import 'package:flutter/material.dart';
import 'package:nareru/state/models/age-exercise-state.dart';
import 'package:nareru/state/models/count-exercise-state.dart';
import 'package:nareru/state/models/jikan-exercise-state.dart';
import 'package:nareru/state/models/suuji-exercise-state.dart';

class SuujiExerciseNotifier with ChangeNotifier {
  late SuujiExerciseState suujiExerciseState;

  SuujiExerciseNotifier() {
    List<CountExerciseState> countExerciseState = [
      CountExerciseState(
          icon: Icons.person, count: 3, correctAnswer: 'さんにん', counter: '人'),
    ];

    List<AgeExerciseState> ageExerciseState = [
      AgeExerciseState(age: 37, correctAnswer: 'さんじゅうななさい', counter: '歳')
    ];

    List<JikanExerciseState> jikanExerciseState = [
      JikanExerciseState(
          hour: '05',
          min: '43',
          sec: '12',
          correctHour: 'ごじ',
          correctMin: 'よんじゅっさんぷん',
          correctSec: 'じゅうにびょう',
          hourState: true,
          minuteState: true,
          secondState: true),
      JikanExerciseState(
          hour: '02',
          min: '09',
          sec: '08',
          correctHour: 'にじ',
          correctMin: 'きゅうふん',
          correctSec: 'はちびょう',
          hourState: true,
          minuteState: true,
          secondState: true)
    ];

    suujiExerciseState = SuujiExerciseState(
      countExercises: countExerciseState,
      ageExercises: ageExerciseState,
      jikanExercises: jikanExerciseState,
    );
  }

  onAgeSet(AgeExerciseState state, String userInput) {
    state.userInput = userInput;
    notifyListeners();
  }

  onUserCountSet(CountExerciseState state, String userInput) {
    state.userInput = userInput;
    notifyListeners();
  }

  setUserHour(JikanExerciseState siganExerciseState, String userHour) {
    siganExerciseState.userHour = userHour;
    notifyListeners();
  }

  setUserMin(JikanExerciseState siganExerciseState, String userMin) {
    siganExerciseState.userMin = userMin;
    notifyListeners();
  }

  setUserSec(JikanExerciseState siganExerciseState, String userSec) {
    siganExerciseState.userSec = userSec;
    notifyListeners();
  }
}
