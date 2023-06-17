import 'package:nalelu/lang_data/manga.dart';
import 'package:nalelu/state/manga/manga_exercise_state.dart';
import 'package:nalelu/state/manga/models.dart';

class MangaGenerator {
  late List<MangaExerciseModel> bank;

  MangaGenerator() {
    bank = mangaExerciseBank;
    // bank.shuffle(); // TODO: Uncomment once all Kanji exercises are set up
  }

  createExercise(int index) {
    return MangaExerciseState(mangaExerciseModel: bank[index]);
  }
}
