import 'package:material_ui/material_ui.dart';
import 'package:nalelu/state/suuji/jikan/jikan_exercise_state.dart';

class JikanNotifier extends ChangeNotifier {
  late Function() _getStateItem;
 
  JikanNotifier(Function() getStateItem) {
    _getStateItem = getStateItem;
  }

  JikanExerciseState getStateItem() {
    return _getStateItem();
  }
}
