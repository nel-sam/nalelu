import 'package:nalelu/lang_data/manga.dart';
import 'package:nalelu/state/manga/manga_exercise_state.dart';

class MangaGenerator {
  static createExercise(int index) {
    return MangaExerciseState(mangaExerciseModel: mangaWordsBank[index]);
  }

  static int getMaxIndex() {
    return mangaWordsBank.length - 1;
  }
}
