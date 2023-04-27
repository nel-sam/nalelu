import 'package:nalelu/lang_data/manga_word.dart';
import 'package:nalelu/state/manga/manga_exercise_state.dart';

class MangaGenerator {
  static createExercise(int index) {
     return MangaExerciseState(mangaWord: mangaWordsBank[index]);
    // return MangaExerciseState(manga: mangaExercises[index]);
  }

  static int getMaxIndex() {
    return mangaWordsBank.length - 1;
  }
}


