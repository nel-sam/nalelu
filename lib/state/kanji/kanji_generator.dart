import 'package:nalelu/lang_data/kanji.dart';
import 'package:nalelu/state/kanji/kanji_exercise_state.dart';

class KanjiGenerator {
  late List<Kanji> bank;

  KanjiGenerator() {
    bank = kanjiBank;
    //bank.shuffle(); // TODO: Uncomment once all Kanji exercises are set up
  }

  createExercise(int index) {
    return KanjiExerciseState(kanji: bank[index]);
  }

  int getMaxIndex(int value) {
    return value;
  }
}
