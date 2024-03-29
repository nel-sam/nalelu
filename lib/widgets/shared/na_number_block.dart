import 'package:flutter/material.dart';
import 'package:nalelu/furi_text.dart';
import 'package:nalelu/widgets/shared/furigana_text.dart';

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
    double radius = 10;

    return Padding(
      padding: const EdgeInsets.all(4),
      child: Container(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 10,
            minimumSize: Size(250, 250),
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
                  style: TextStyle(fontSize: 18),
                ),
                if (furiTexts.isNotEmpty)
                  FuriganaText(
                      furiTexts: furiTexts, fontSize: digit > 18 ? 10 : 18),
              ]),
        ),
      ),
    );
  }
}
