import 'package:nalelu/state/enums.dart';
import 'package:nalelu/state/kanji/kanji_exercise_state.dart';
import 'package:nalelu/widgets/kanji.dart';

class KanjiGenerator {
  late List<Kanji> bank;

  KanjiGenerator(
      bool isShuffled, ExerciseType kanjiType, List<Kanji> selectedKanjis) {
    switch (kanjiType) {
      case ExerciseType.kanjiN5:
        bank = [...selectedKanjis];
        break;
      case ExerciseType.kanjiN4:
        bank = [...selectedKanjis];
        break;
      case ExerciseType.doushi:
        // TODO: refactor so this is not needed anymore
        throw UnimplementedError();
      case ExerciseType.count:
        // TODO: refactor so this is not needed anymore
        throw UnimplementedError();
      case ExerciseType.age:
        // TODO: refactor so this is not needed anymore
        throw UnimplementedError();
      case ExerciseType.jikan:
        // TODO: refactor so this is not needed anymore
        throw UnimplementedError();
      case ExerciseType.manga:
        // TODO: refactor so this is not needed anymore
        throw UnimplementedError();
    }
    shufflePhrases();

    if (isShuffled) {
      bank.shuffle();
    }
  }

  KanjiExerciseState createExercise(int index) {
    return KanjiExerciseState(kanji: bank[index]);
  }

  void shufflePhrases() {
    for (var kanji in bank) {
      kanji.phraseAnswers.shuffle();
    }
  }
}
