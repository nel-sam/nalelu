import 'package:nalelu/lang_data/manga.dart';
import 'package:nalelu/state/manga/manga_exercise_state.dart';
import 'package:nalelu/state/manga/models.dart';

class MangaGenerator {
  late List<MangaExerciseModel> bank;

  MangaGenerator(bool isShuffled) {
    bank = [...mangaExerciseBank];

    if (isShuffled) bank.shuffle();
  }

  createExercise(int index) {
    return MangaExerciseState(mangaExerciseModel: bank[index]);
  }
}
