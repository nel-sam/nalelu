import 'package:flutter/material.dart';
import 'package:nareru/furi-text.dart';


class FuriganaText extends StatelessWidget {
  final double fontSize;
  final Color labelColor;
  final List<FuriText> furigana;
  final FontWeight fontWeight;

  const FuriganaText({
    Key? key,
    required this.furigana,
    required this.fontSize,
    required this.labelColor,
    required this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      for (var i in furigana)
        Column(children: [
          Text(
            i.furigana,
            style: TextStyle(
              fontSize: fontSize * 0.5,
              color: labelColor,
              fontWeight: fontWeight,
            ),
          ),
          Text(
            i.text,
            style: TextStyle(
              fontSize: 18,
              color: labelColor,
              fontWeight: fontWeight,
            ),
          ),
        ])
    ]);
  }
}