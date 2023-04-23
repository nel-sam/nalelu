import 'package:flutter/material.dart';
import 'package:nalelu/constants.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/widgets/doushi_exercise/doushi_exercise_1.dart';
import 'package:nalelu/widgets/menus/numbers_menu.dart';
import 'package:nalelu/widgets/shared/home_button_wrapper.dart';
import 'package:nrs_flutter_lib/widgets/n_footer_button.dart';
import 'package:nrs_flutter_lib/widgets/n_footer_menu.dart';

class NAMenuFooter extends StatelessWidget {
  final int activeIndex;

  const NAMenuFooter({
    Key? key,
    required this.activeIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NFooterMenu(
      buttons: [
        HomeButtonWrapper(),
        NFooterButton(
          text: NA.t('numbers'),
          icon: NAIcons.numbers,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NumbersMenu(),
              ),
            );
          },
        ),
        NFooterButton(
          text: NA.t('verbs'),
          icon: NAIcons.verbs,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DoushiExerciseLevel1(),
              ),
            );
          },
        ),
      ],
    );
  }
}
