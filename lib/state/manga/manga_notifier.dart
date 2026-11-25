import 'package:material_ui/material_ui.dart';
import 'package:nalelu/state/manga/manga_exercise_state.dart';

class MangaNotifier with ChangeNotifier {
  late Function() _getStateItem;

  MangaNotifier(Function() getStateItem) {
    _getStateItem = getStateItem;
  }

  MangaExerciseState getActive() {
    return _getStateItem();
  }
}
