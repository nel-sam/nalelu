import 'package:flutter/material.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/state/exercise_nav_notifier.dart';
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
      previousText: NA.t('previous'),
      nextText: NA.t('next'),
      clearText: NA.t('clear'),
      exerciseText: NA.t('exercise)'),
    );
  }
}
