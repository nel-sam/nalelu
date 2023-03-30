import 'package:nareru/constants.dart';
import 'package:nareru/hd-helpers.dart';
import 'package:nareru/lang_data/numbers.dart';
import 'package:nareru/state/suuji/jikan/jikan-exercise-state.dart';
import 'package:nrs_flutter_lib/nrs_flutter_lib.dart';

class JikanGenerator {
  static createExercise(int index) {
    for (int i = 0; i < JIKAN_EXERCISE_COUNT; i++) {
      var hour = HD.getRandomHourNumber(min: 0, max: 13);
      var min = HD.getRandomSinoNumber(min: 1, max: 59);
      var sec = HD.getRandomSinoNumber(min: 1, max: 59);

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
