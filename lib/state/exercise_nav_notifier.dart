import 'dart:async';

import 'package:material_ui/material_ui.dart';
import 'package:nalelu/constants.dart';
import 'package:nalelu/state/doushi/doushi_generator.dart';
import 'package:nalelu/state/enums.dart';
import 'package:nalelu/state/kanji/kanji_generator.dart';
import 'package:nalelu/state/manga/manga_generator.dart';
import 'package:nalelu/state/suuji/age/age_generator.dart';
import 'package:nalelu/state/suuji/count/count_generator.dart';
import 'package:nalelu/state/suuji/jikan/jikan_generator.dart';
import 'package:nalelu/widgets/kanji.dart';
import 'package:nrs_flutter_lib/constants.dart';
import '../lang_data/doushi.dart';
import '../lang_data/manga.dart';

class ExerciseNavNotifier extends ChangeNotifier {
  Timer _debounce = Timer(const Duration(milliseconds: 0), () {});
  int _activeIndex = 0;
  int _maxIndex = 0;
  final List _states = [];
  Function onNextOrPrevious = () => {};
  late Function(int) createExercise;

  ExerciseNavNotifier(
      {required ExerciseType exerciseType,
      List<Kanji>? selectedKanjis,
      List<Doushi>? selectedVerbs,
      int maxExerciseCount = 9999,
      bool shuffle = false}) {
    switch (exerciseType) {
      case ExerciseType.doushi:
        _maxIndex = selectedVerbs!.length - 1;
        createExercise = DoushiGenerator(shuffle, selectedVerbs).createExercise;
        break;
      case ExerciseType.count:
        _maxIndex = maxExerciseCount != 9999
            ? maxExerciseCount
            : countExerciseCount - 1;
        createExercise = CountGenerator.createExercise;
        break;
      case ExerciseType.age:
        _maxIndex =
            maxExerciseCount != 9999 ? maxExerciseCount : ageExerciseCount - 1;
        createExercise = AgeGenerator.createExercise;
        break;
      case ExerciseType.jikan:
        _maxIndex = maxExerciseCount != 9999
            ? maxExerciseCount
            : jikanExerciseCount - 1;
        createExercise = JikanGenerator.createExercise;
        break;
      case ExerciseType.manga:
        _maxIndex = maxExerciseCount < mangaExerciseBank.length
            ? maxExerciseCount
            : mangaExerciseBank.length;
        createExercise = MangaGenerator(shuffle).createExercise;
        break;
      case ExerciseType.kanjiN5:
        _maxIndex = selectedKanjis!.length - 1;
        createExercise = KanjiGenerator(shuffle, exerciseType, selectedKanjis)
            .createExercise;
        break;
      case ExerciseType.kanjiN4:
        _maxIndex = selectedKanjis!.length - 1;
        createExercise = KanjiGenerator(shuffle, exerciseType, selectedKanjis)
            .createExercise;
        break;
    }

    _states.add(createExercise(_activeIndex));
  }

  void clearInput() {
    _states[_activeIndex].clear();
    debouncedNotifyListeners();
  }

  void debouncedNotifyListeners() {
    _debounce.cancel();

    _debounce = Timer(
        const Duration(milliseconds: DEBOUNCE_TIME), () => notifyListeners());
  }

  dynamic getActive() {
    return _states[_activeIndex];
  }

  double getProgressPercentage() {
    return (_activeIndex / _maxIndex) * 100;
  }

  void setNext() {
    if (_activeIndex > _maxIndex - 1) {
      _activeIndex = 0;
    } else {
      _activeIndex++;
    }

    if (_activeIndex > _states.length - 1) {
      _states.add(createExercise(_activeIndex));
    }

    debouncedNotifyListeners();
    onNextOrPrevious();
  }

  void setPrevious() {
    if (_states.length <= 1) return;

    if (_activeIndex <= 0) {
      _activeIndex = _states.length - 1;
    } else {
      _activeIndex--;
    }

    debouncedNotifyListeners();
    onNextOrPrevious();
  }
}
