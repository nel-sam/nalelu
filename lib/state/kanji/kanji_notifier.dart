import 'package:material_ui/material_ui.dart';
import 'package:nalelu/state/kanji/kanji_exercise_state.dart';

class KanjiNotifier with ChangeNotifier {
  late Function() _getStateItem;

  KanjiNotifier(Function() getStateItem) {
    _getStateItem = getStateItem;
  }

  KanjiExerciseState getActive() {
    return _getStateItem();
  }
}
