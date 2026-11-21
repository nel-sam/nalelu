import 'package:flutter/material.dart';
import 'package:nalelu/state/doushi/doushi_exercise_state.dart';

class DoushiNotifier with ChangeNotifier {
  late Function() _getStateItem;

  DoushiNotifier(Function() getStateItem) {
    _getStateItem = getStateItem;
  }

  DoushiExerciseState getActive() {
    return _getStateItem();
  }
}
