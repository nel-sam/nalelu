import 'package:flutter/material.dart';
import 'package:nareru/constants.dart';
import 'package:nareru/na-helpers.dart';
import 'package:nareru/widgets/doushi-exercise/doushi-exercise-1.dart';
import 'package:nareru/widgets/menus/numbers-menu.dart';
import 'package:nareru/widgets/shared/home-button-wrapper.dart';
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
