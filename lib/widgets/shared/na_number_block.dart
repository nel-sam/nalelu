import 'package:flutter/material.dart';
import 'package:nareru/furi_text.dart';
import 'package:nareru/widgets/shared/furigana_text.dart';
import 'package:nrs_flutter_lib/nrs_flutter_lib.dart';

class NANumberBlock extends StatelessWidget {
  final int digit;
  final List<FuriText> furiTexts;

  const NANumberBlock({
    Key? key,
    required this.digit,
    required this.furiTexts,
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
            minimumSize: Size(250, 250),
            backgroundColor: appBarColor,
            disabledForegroundColor: appBarColor.withOpacity(0.38),
            disabledBackgroundColor: appBarColor.withOpacity(0.12),
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
                  digit.toString(),
                  style: TextStyle(
                    fontSize: 18,
                    color: Nrs.getPrimaryColor(context),
                  ),
                ),
                if (furiTexts.isNotEmpty)
                  FuriganaText(
                      furigana: furiTexts,
                      fontSize: digit > 38 ? 15 : 18,
                      labelColor: labelColor,
                      fontWeight: FontWeight.bold),
              ]),
        ),
      ),
    );
  }
}
