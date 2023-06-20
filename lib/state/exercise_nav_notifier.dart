import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nalelu/constants.dart';
import 'package:nalelu/lang_data/N4.dart';
import 'package:nalelu/state/doushi/doushi_generator.dart';
import 'package:nalelu/state/enums.dart';
import 'package:nalelu/state/kanji/kanji_generator.dart';
import 'package:nalelu/state/manga/manga_generator.dart';
import 'package:nalelu/state/suuji/age/age_generator.dart';
import 'package:nalelu/state/suuji/count/count_generator.dart';
import 'package:nalelu/state/suuji/jikan/jikan_generator.dart';
import 'package:nrs_flutter_lib/constants.dart';

import '../lang_data/doushi.dart';
import '../lang_data/N5.dart';
import '../lang_data/manga.dart';

class ExerciseNavNotifier extends ChangeNotifier {
  Timer _debounce = Timer(const Duration(milliseconds: 0), () {});
  int _activeIndex = 0;
  int _maxIndex = 0;
  List _states = [];
  Function onNextOrPrevious = () => {};
  late Function(int) createExercise;

  ExerciseNavNotifier(
      {required ExerciseType exerciseType,
      int maxExerciseCount = 9999,
      bool verbShuffle = false,
      bool kanjiShuffle = false}) {
    switch (exerciseType) {
      case ExerciseType.Doushi:
        this._maxIndex = maxExerciseCount < doushiBank.length
            ? maxExerciseCount
            : doushiBank.length - 1;
        this.createExercise = new DoushiGenerator(verbShuffle).createExercise;
        break;
      case ExerciseType.Count:
        this._maxIndex = maxExerciseCount != 9999
            ? maxExerciseCount
            : COUNT_EXERCISE_COUNT - 1;
        this.createExercise = CountGenerator.createExercise;
        break;
      case ExerciseType.Age:
        this._maxIndex = maxExerciseCount != 9999
            ? maxExerciseCount
            : AGE_EXERCISE_COUNT - 1;
        this.createExercise = AgeGenerator.createExercise;
        break;
      case ExerciseType.Jikan:
        this._maxIndex = maxExerciseCount != 9999
            ? maxExerciseCount
            : JIKAN_EXERCISE_COUNT - 1;
        this.createExercise = JikanGenerator.createExercise;
        break;
      case ExerciseType.Manga:
        this._maxIndex = maxExerciseCount < mangaExerciseBank.length
            ? maxExerciseCount
            : mangaExerciseBank.length - 1;
        this.createExercise = new MangaGenerator().createExercise;
        break;
      case ExerciseType.N5:
        this._maxIndex = maxExerciseCount < kanjiN5Bank.length
            ? maxExerciseCount
            : kanjiN5Bank.length - 1;
        this.createExercise =
            new KanjiGenerator(kanjiShuffle, exerciseType).createExercise;
        break;
      case ExerciseType.N4:
        this._maxIndex = maxExerciseCount < kanjiN4Bank.length
            ? maxExerciseCount
            : kanjiN4Bank.length - 1;
        this.createExercise =
            new KanjiGenerator(kanjiShuffle, exerciseType).createExercise;
        break;
      case ExerciseType.Kanji:
        // TODO: Handle this case.
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
