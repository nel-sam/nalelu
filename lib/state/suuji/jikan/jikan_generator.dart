import 'package:nareru/constants.dart';
import 'package:nareru/na_helpers.dart';
import 'package:nareru/state/suuji/jikan/jikan_exercise_state.dart';

class JikanGenerator {
  static createExercise(int index) {
    for (int i = 0; i < JIKAN_EXERCISE_COUNT; i++) {
      var hour = NA.getRandomHourNumber(min: 0, max: 13);
      var min = NA.getRandomMinuteNumber(min: 1, max: 59);
      var sec = NA.getRandomSecondNumber(min: 0, max: 59);

      return JikanExerciseState(
        hour: hour.digit < 10 ? '0${hour.digit}' : hour.digit.toString(),
        min: min.digit < 10 ? '0${min.digit}' : min.digit.toString(),
        sec: sec.digit < 10 ? '0${sec.digit}' : sec.digit.toString(),
        correctHour: hour.written,
        correctMin: min.written,
        correctSec: sec.written,
      );
    }
  }

  static int getMaxIndex() {
    return JIKAN_EXERCISE_COUNT;
  }
}
