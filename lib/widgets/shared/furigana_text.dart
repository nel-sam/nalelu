import 'package:flutter/material.dart';
import 'package:nalelu/furi_text.dart';
import 'package:nrs_flutter_lib/constants.dart';

class FuriganaText extends StatelessWidget {
  final double fontSize;
  final Color? labelColor;
  final List<FuriText> furigana;
  final FontWeight? fontWeight;

  const FuriganaText({
    Key? key,
    required this.furigana,
    this.fontSize = FONT_SIZE,
    this.labelColor,
    this.fontWeight = FontWeight.normal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (var i in furigana)
            Column(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    height: fontSize * 0.7,
                    child: Text(
                      i.furigana,
                      style: TextStyle(
                        fontSize: fontSize * 0.5,
                        color: labelColor,
                        fontWeight: fontWeight,
                      ),
                    ),
                  ),
                  Text(
                    i.text,
                    style: TextStyle(
                      fontSize: fontSize,
                      color: labelColor,
                      fontWeight: fontWeight,
                    ),
                  ),
                ])
        ]);
  }
}
