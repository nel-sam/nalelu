import 'package:nalelu/constants.dart';
import 'package:nalelu/lang_data/manga_words.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/state/manga/manga_exercise_state.dart';

class MangaGenerator {
  static createExercise(int index) {
    MangaWord word1 = NA.getExercise1Words(index);
    MangaWord word2 = NA.getExercise1Words(index);
    MangaWord word3 = NA.getExercise1Words(index);

    return MangaExerciseState(
      correctAnswers1: [word1.written, word1.kanji],
      correctAnswers2: [word2.written, word2.kanji],
      correctAnswers3: [word3.written, word3.kanji],
    );
  }

   static int getMaxIndex() {
    return MANGA_EXERCISE_COUNT;
  }
}
