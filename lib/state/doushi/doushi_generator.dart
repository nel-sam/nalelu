import 'package:nalelu/lang_data/doushi.dart';
import 'package:nalelu/state/doushi/doushi_exercise_state.dart';

class DoushiGenerator {
  late List<Doushi> bank;

  DoushiGenerator() {
    bank = doushiBank;
    //bank.shuffle(); // TODO: Uncomment once all Kanji exercises are set up
  }

  createExercise(int index) {
    return DoushiExerciseState(doushi: bank[index]);
  }
}
