import 'package:nalelu/lang_data/kanji.dart';
import 'package:nalelu/state/kanji/kanji_exercise_state.dart';

class KanjiGenerator {
  static createExercise(int index) {
    return KanjiExerciseState(kanji: kanjiBank[index]);
  }

  static int getMaxIndex() {
    return kanjiBank.length - 1;
  }
}
