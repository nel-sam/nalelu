import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/state/suuji/jikan/jikan_exercise_state.dart';

class JikanGenerator {
  static createExercise(int index) {
    var hour = NA.getRandomHourNumber(min: 0, max: 23);
    var min = NA.getRandomMinuteNumber(min: 1, max: 59);
    var sec = NA.getRandomSecondNumber(min: 0, max: 59);

    return JikanExerciseState(
        hour: hour.digit < 10 ? '0${hour.digit}' : hour.digit.toString(),
        min: min.digit < 10 ? '0${min.digit}' : min.digit.toString(),
        sec: sec.digit < 10 ? '0${sec.digit}' : sec.digit.toString(),
        correctHours: [hour.written, hour.kanji],
        correctMins: [min.written, min.kanji],
        correctSecs: [sec.written, sec.kanji]);
  }
}
