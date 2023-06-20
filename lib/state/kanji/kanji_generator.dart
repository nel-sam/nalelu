import 'package:nalelu/lang_data/N4.dart';
import 'package:nalelu/lang_data/N5.dart';
import 'package:nalelu/state/enums.dart';
import 'package:nalelu/state/kanji/kanji_exercise_state.dart';
import 'package:nalelu/widgets/kanji.dart';

class KanjiGenerator {
  late List<Kanji> bank;

  KanjiGenerator(bool isShuffled, ExerciseType kanjiType) {
    switch (kanjiType) {
      case ExerciseType.N5:
        bank = kanjiN5Bank;
        break;
      case ExerciseType.N4:
        bank = kanjiN4Bank;
        break;
    }

    if (isShuffled) {
      bank.shuffle();
    }
  }

  createExercise(int index) {
    return KanjiExerciseState(kanji: bank[index]);
  }
}
