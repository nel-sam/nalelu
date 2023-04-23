import 'package:nalelu/lang_data/doushi.dart';
import 'package:nalelu/state/doushi/doushi_exercise_state.dart';

class DoushiGenerator {
  static createExercise(int index) {
    return DoushiExerciseState(doushi: doushiBank[index]);
  }

  static int getMaxIndex() {
    return doushiBank.length - 1;
  }
}
