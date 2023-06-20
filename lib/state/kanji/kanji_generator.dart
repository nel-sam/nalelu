import 'package:nalelu/lang_data/N5.dart';
import 'package:nalelu/state/kanji/kanji_exercise_state.dart';
import 'package:nalelu/widgets/kanji.dart';

class KanjiGenerator {
  late List<Kanji> bank;

  KanjiGenerator() {
    bank = kanjiN5Bank;
    //bank.shuffle(); // TODO: Uncomment once all Kanji exercises are set up
  }

  createExercise(int index) {
    return KanjiExerciseState(kanji: bank[index]);
  }
}
