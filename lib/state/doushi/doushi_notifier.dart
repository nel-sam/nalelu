import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nrs_flutter_lib/constants.dart';

class DoushiNotifier with ChangeNotifier {
  late Function() _getStateItem;
  Timer _debounce = Timer(const Duration(milliseconds: 0), () {});

  DoushiNotifier(Function() getStateItem) {
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

  getUserInput(int index) {
    return _getStateItem().getUserInput(index);
  }

  updateUserInput(int index, String newValue) {
    _getStateItem().updateUserInput(index, newValue);
    deboucedNotifyListeners();
  }
}
