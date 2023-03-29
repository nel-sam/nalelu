import 'package:flutter/material.dart';
import 'package:nareru/hd-helpers.dart';
import 'package:nareru/widgets/shared/ad-card.dart';
import 'package:nareru/widgets/shared/hd-footer-menu.dart';
import 'package:nareru/widgets/suuji-exercise/age/age-exercise.dart';
import 'package:nareru/widgets/suuji-exercise/counting.dart/counting-exercise.dart';
import 'package:nareru/widgets/suuji-exercise/jikan-exercise/jikan-exercise.dart';
import 'package:nrs_flutter_lib/nrs_flutter_lib.dart';
import 'package:nrs_flutter_lib/widgets/n_menu_button.dart';
import 'package:nrs_flutter_lib/widgets/n_menu_header.dart';

class NumbersMenu extends StatelessWidget {
  const NumbersMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: Nrs.NrsAppBar(context: context),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //const AdCard(),
              NMenuHeader(
                  icon: Icons.widgets_outlined,
                  transLabel: HD.t('numbers'),
                  label: '数字'),
              Column(
                children: [
                  NMenuButton(
                    destination: JikanExercise(),
                    label: HD.t('time'),
                    transLabel: '時間',
                  ),
                  NMenuButton(
                    destination: AgeExercise(),
                    label: HD.t('age'),
                    transLabel: '歳',
                  ),
                  NMenuButton(
                    destination: CountingExercise(),
                    label: HD.t('counting'),
                    transLabel: '数える',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      persistentFooterButtons: [HDMenuFooter(activeIndex: 1)],
    );
  }
}