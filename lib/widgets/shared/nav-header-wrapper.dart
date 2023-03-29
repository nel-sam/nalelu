import 'package:flutter/material.dart';
import 'package:nareru/hd-helpers.dart';
import 'package:nareru/state/exercise-nav-notifier.dart';
import 'package:nrs_flutter_lib/widgets/n_navigation_header.dart';

class NavHeaderWrapper extends StatelessWidget {
  final ExerciseNavNotifier navNotifier;

  const NavHeaderWrapper({
    Key? key,
    required this.navNotifier,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NNavigationHeader(
      setPrevious: navNotifier.setPrevious,
      setNext: navNotifier.setNext,
      clear: navNotifier.clearInput,
      getProgressPercentage: navNotifier.getProgressPercentage,
      previousText: HD.t('previous'),
      nextText: HD.t('next'),
      clearText: HD.t('clear'),
      exerciseText: HD.t('exercise)'),
    );
  }
}
