import 'package:nareru/state/models/count-exercise-state.dart';

class SuujiExerciseState {
  List<CountExerciseState> countExercises;

  late List<dynamic> _all = [];

  SuujiExerciseState({
    required this.countExercises,
  });

  List<dynamic> getAll() {
    if (_all.length > 0) return _all;

    _all.addAll(countExercises);
    _all.shuffle();
    return _all;
  }
}
