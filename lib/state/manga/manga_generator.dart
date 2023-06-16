import 'package:nalelu/lang_data/manga.dart';
import 'package:nalelu/state/manga/manga_exercise_state.dart';

class MangaGenerator {
  static createExercise(int index) {
    return MangaExerciseState(mangaExerciseModel: mangaExerciseBank[index]);
  }
}
