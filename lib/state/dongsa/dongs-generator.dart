import 'package:nareru/lang_data/dongsa.dart';
import 'package:nareru/state/dongsa/dongsa-exercise-state.dart';

class DongsaGenerator {
  static createExercise(int index) {
    return DongsaExerciseState(dongsa: dongsaBank[index]);
  }

  static int getMaxIndex() {
    return dongsaBank.length - 1;
  }
}
