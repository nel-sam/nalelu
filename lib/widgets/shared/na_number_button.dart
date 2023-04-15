import 'package:flutter/material.dart';
import 'package:nareru/furi_text.dart';
import 'package:nareru/widgets/shared/furigana_text.dart';
import 'package:nrs_flutter_lib/constants.dart';
import 'package:nrs_flutter_lib/nrs_flutter_lib.dart';
import 'package:nrs_flutter_lib/widgets/n_action_arrow.dart';

class NANumberButton extends StatelessWidget {
  final String label;
  final List<FuriText> translabel;

  const NANumberButton({
    Key? key,
    required this.label,
    required this.translabel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDark = Nrs.isDarkTheme(context);
    var appBarColor =
        isDark ? const Color.fromARGB(255, 58, 58, 58) : Nrs.getAppBarColor();
    double radius = 10;
    final labelColor = isDark ? Colors.white : Colors.black;

    return Padding(
      padding: const EdgeInsets.all(4),
      child: Container(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 10,
            primary: appBarColor,
            onSurface: appBarColor,
            padding: const EdgeInsets.all(20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(radius)),
            ),
          ),
          onPressed: () {},
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 10,
                    color: Nrs.getPrimaryColor(context),
                  ),
                ),
                if (translabel.isNotEmpty)
                  FuriganaText(
                      furigana: translabel,
                      fontSize: 14,
                      labelColor: labelColor,
                      fontWeight: FontWeight.bold),
              ]),
        ),
      ),
    );
  }
}
