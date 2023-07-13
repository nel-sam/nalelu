import 'package:flutter/material.dart';
import 'package:nalelu/furi_text.dart';
import 'package:nrs_flutter_lib/constants.dart';

class FuriganaText extends StatelessWidget {
  final double fontSize;
  final List<FuriText> furiTexts;
  final Color? textColor;
  final bool showFurigana;
  final bool isCorrect;
  final String answer;

  const FuriganaText({
    Key? key,
    required this.furiTexts,
    this.fontSize = FONT_SIZE,
    this.textColor,
    this.showFurigana = true,
    this.isCorrect = false,
    this.answer = '',
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
                    showFurigana
                        ? i.furigana == '？' && isCorrect
                            ? subtractChars(answer, furiTexts)
                            : i.furigana
                        : '',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: fontSize * 0.7,
                      fontWeight:
                          i.emphasize ? FontWeight.bold : FontWeight.normal,
                      color: i.emphasize
                          ? isCorrect
                              ? Colors.green
                              : Theme.of(context).colorScheme.primary
                          : textColor,
                    ),
                  ),
                ),
              ),
              Center(
                child: Text(
                  i.text,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: fontSize * 1.2,
                    fontWeight:
                        i.emphasize ? FontWeight.bold : FontWeight.normal,
                    color: i.emphasize
                        ? isCorrect
                            ? Colors.green
                            : Theme.of(context).colorScheme.primary
                        : textColor,
                  ),
                ),
              ),
            ])
        ]);
  }

  String subtractChars(String answer, List<FuriText> furigana) {
    var result = answer;
    RegExp regex;
    for (var i in furiTexts) {
      if (i.emphasize) {
        if (i.furigana == '')
          regex = RegExp(i.text, multiLine: true);
        else
          regex = RegExp(i.furigana, multiLine: true);
        result = result.replaceFirst(regex, '');
      }
    }
    return result;
  }
}
