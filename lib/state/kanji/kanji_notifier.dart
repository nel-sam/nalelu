import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nrs_flutter_lib/constants.dart';

class KanjiNotifier with ChangeNotifier {
  late Function() _getStateItem;
  Timer _debounce = Timer(const Duration(milliseconds: 0), () {});

  KanjiNotifier(Function() getStateItem) {
    _getStateItem = getStateItem;
  }

  clearInput() {
    _getStateItem().userInput.clear();
    deboucedNotifyListeners();
  }

  deboucedNotifyListeners() {
    if (!_debounce.isActive) {
      _debounce.cancel();
    }

    _debounce = Timer(
        const Duration(milliseconds: DEBOUNCE_TIME), () => notifyListeners());
  }

  getActive() {
    return _getStateItem();
  }
}
