import 'package:nalelu/constants.dart';
import 'package:nalelu/lang_data/manga_words.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/state/manga/manga_exercise_state.dart';

class MangaGenerator {
  static createExercise(int index) {
    MangaWord word = NA.getExercise1Words(index);

    return MangaExerciseState(
      correctAnswers: [word.written, word.kanji],
    );
  }

   static int getMaxIndex() {
    return MANGA_EXERCISE_COUNT;
  }
}
