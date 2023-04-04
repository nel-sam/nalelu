import 'package:flutter/material.dart';
import 'package:nareru/constants.dart';
import 'package:nareru/hd-helpers.dart';
import 'package:nareru/widgets/doushi-exercise/doushi-exercise-1.dart';
import 'package:nareru/widgets/menus/numbers-menu.dart';
import 'package:nrs_flutter_lib/constants.dart';
import 'package:nrs_flutter_lib/nrs_flutter_lib.dart';
import 'package:nrs_flutter_lib/widgets/n_menu_button.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: Nrs.getScreenHeight() / 3.5,
          decoration: BoxDecoration(
            image: DecorationImage(
              opacity: Nrs.isDarkTheme(context) ? 0.7 : 0.9,
              image: AssetImage('assets/banners/stairs.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: FONT_SIZE, left: FONT_SIZE),
            child: Row(
              children: [
                Text(
                  APP_NAME,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Column(
            children: [
              NMenuButton(
                destination: NumbersMenu(),
                label: HD.t('numbersExercise'),
                transLabel: '数字',

              ),
              NMenuButton(
                destination: DoushiExerciseLevel1(),
                label: HD.t('verbs'),
                transLabel: '動詞',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
