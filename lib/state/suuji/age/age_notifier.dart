import 'package:material_ui/material_ui.dart';
import 'package:nalelu/state/suuji/age/age_exercise_state.dart';

class AgeNotifier extends ChangeNotifier {
  late Function() _getStateItem;

  AgeNotifier(Function() getStateItem) {
    _getStateItem = getStateItem;
  }

  AgeExerciseState getStateItem() {
    return _getStateItem();
  }
}
