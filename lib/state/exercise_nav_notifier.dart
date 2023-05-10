import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nalelu/state/doushi/doushi_generator.dart';
import 'package:nalelu/state/enums.dart';
import 'package:nalelu/state/kanji/kanji_generator.dart';
import 'package:nalelu/state/manga/manga_generator.dart';
import 'package:nalelu/state/suuji/age/age_generator.dart';
import 'package:nalelu/state/suuji/count/count_generator.dart';
import 'package:nalelu/state/suuji/jikan/jikan_generator.dart';
import 'package:nrs_flutter_lib/constants.dart';

class ExerciseNavNotifier extends ChangeNotifier {
  Timer _debounce = Timer(const Duration(milliseconds: 0), () {});
  int _activeIndex = 0;
  int _maxIndex = 0;
  List _states = [];
  Function onNextOrPrevious = () => {};
  late Function(int) createExercise;

  ExerciseNavNotifier(ExerciseType exerciseType) {
    switch (exerciseType) {
      case ExerciseType.Doushi:
        this._maxIndex = DoushiGenerator.getMaxIndex();
        this.createExercise = DoushiGenerator.createExercise;
        break;
      case ExerciseType.Count:
        this._maxIndex = CountGenerator.getMaxIndex();
        this.createExercise = CountGenerator.createExercise;
        break;
      case ExerciseType.Age:
        this._maxIndex = AgeGenerator.getMaxIndex();
        this.createExercise = AgeGenerator.createExercise;
        break;
      case ExerciseType.Jikan:
        this._maxIndex = JikanGenerator.getMaxIndex();
        this.createExercise = JikanGenerator.createExercise;
        break;
      case ExerciseType.Manga:
        this._maxIndex = MangaGenerator.getMaxIndex();
        this.createExercise = MangaGenerator.createExercise;
        break;
        case ExerciseType.Kanji:
        this._maxIndex = KanjiGenerator.getMaxIndex();
        this.createExercise = KanjiGenerator.createExercise;
        break;
    }

    this._states.add(this.createExercise(this._activeIndex));
  }

  void clearInput() {
    _states[_activeIndex].clear();
    debouncedNotifyListeners();
  }

  debouncedNotifyListeners() {
    if (!_debounce.isActive) {
      _debounce.cancel();
    }

    _debounce = Timer(
        const Duration(milliseconds: DEBOUNCE_TIME), () => notifyListeners());
  }

  getActive() {
    return _states[_activeIndex];
  }

  double getProgressPercentage() {
    return (_activeIndex / _maxIndex) * 100;
  }

  setNext() {
    if (_activeIndex > _maxIndex - 1) {
      _activeIndex = 0;
    } else {
      _activeIndex++;
    }

    if (_activeIndex > _states.length - 1) {
      this._states.add(this.createExercise(this._activeIndex));
    }

    debouncedNotifyListeners();
    onNextOrPrevious();
  }

  setPrevious() {
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
