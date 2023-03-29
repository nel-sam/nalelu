import 'package:flutter/material.dart';
import 'package:nareru/constants.dart';
import 'package:nareru/hd-helpers.dart';
import 'package:nareru/widgets/dongsa-exercise/dongsa-exercise-1.dart';
import 'package:nareru/widgets/menus/numbers-menu.dart';
import 'package:nareru/widgets/shared/home-button-wrapper.dart';
import 'package:nrs_flutter_lib/widgets/n_footer_button.dart';
import 'package:nrs_flutter_lib/widgets/n_footer_menu.dart';

class HDMenuFooter extends StatelessWidget {
  final int activeIndex;

  const HDMenuFooter({
    Key? key,
    required this.activeIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NFooterMenu(
      buttons: [
        HomeButtonWrapper(),
        NFooterButton(
          text: HD.t('numbers'),
          icon: HDIcons.numbers,
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
          text: HD.t('verbs'),
          icon: HDIcons.verbs,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DongsaExerciseLevel1(),
              ),
            );
          },
        ),
      ],
    );
  }
}
