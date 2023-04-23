import 'package:nalelu/constants.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/lang_data/numbers.dart';
import 'package:nalelu/state/suuji/age/age_exercise_state.dart';

class AgeGenerator {
  static createExercise(int index) {
    NareNumber number = NA.getRandomSaiNumber();

    return AgeExerciseState(
      age: number.digit,
      correctAnswers: [number.written, number.kanji],
    );
  }

  static int getMaxIndex() {
    return AGE_EXERCISE_COUNT;
  }
}
