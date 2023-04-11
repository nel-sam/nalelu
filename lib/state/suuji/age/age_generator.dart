import 'package:nareru/constants.dart';
import 'package:nareru/na_helpers.dart';
import 'package:nareru/lang_data/numbers.dart';
import 'package:nareru/state/suuji/age/age_exercise_state.dart';

class AgeGenerator {
  static createExercise(int index) {
    NareNumber number = NA.getRandomSaiNumber();

    return AgeExerciseState(
      age: number.digit,
      correctAnswer: number.written,
    );
  }

  static int getMaxIndex() {
    return AGE_EXERCISE_COUNT;
  }
}
