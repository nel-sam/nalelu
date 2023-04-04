import 'package:nareru/lang_data/doushi.dart';
import 'package:nareru/state/doushi/doushi-exercise-state.dart';

class DoushiGenerator {
  static createExercise(int index) {
    return DoushiExerciseState(doushi: doushiBank[index]);
  }

  static int getMaxIndex() {
    return doushiBank.length - 1;
  }
}
