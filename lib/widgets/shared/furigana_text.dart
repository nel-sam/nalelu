import 'package:flutter/material.dart';
import 'package:nalelu/furi_text.dart';
import 'package:nrs_flutter_lib/constants.dart';

class FuriganaText extends StatelessWidget {
  final double fontSize;
  final List<FuriText> furiTexts;
  final FontWeight? fontWeight;
  final Color? textColor;

  const FuriganaText({
    Key? key,
    required this.furiTexts,
    this.fontSize = FONT_SIZE,
    this.fontWeight = FontWeight.normal,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (var i in furiTexts)
            Column(mainAxisSize: MainAxisSize.max, children: [
              Container(
                height: i.furigana.length == 0 ? fontSize * 1.0 : fontSize,
                child: Center(
                  child: Text(
                    i.furigana,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: fontSize * 0.7,
                      fontWeight: fontWeight,
                      color: textColor,
                    ),
                  ),
                ),
              ),
              Center(
                child: Text(
                  i.text,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: fontSize,
                    fontWeight: fontWeight,
                    color: textColor,
                  ),
                ),
              ),
            ])
        ]);
  }
}
