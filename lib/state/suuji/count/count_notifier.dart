import 'package:material_ui/material_ui.dart';
import 'package:nalelu/state/suuji/count/count_exercise_state.dart';

class CountNotifier with ChangeNotifier {
  late Function() _getStateItem;

  CountNotifier(Function() getStateItem) {
    _getStateItem = getStateItem;
  }

  CountExerciseState getStateItem() {
    return _getStateItem();
  }
}
