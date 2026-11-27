import 'package:material_ui/material_ui.dart';

/// Pure helpers for furigana character alignment so layout rules are unit-testable.
class FuriganaLayout {
  const FuriganaLayout._();

  static List<String> splitCharacters(String value) {
    return value.runes.map(String.fromCharCode).toList();
  }

  /// Splits [furigana] across [text] characters when there are multiple base
  /// characters and at least as many furigana characters as base characters.
  /// Returns null when the whole string should sit above the whole text.
  static List<String>? distributeChunks(String text, String furigana) {
    final trimmed = furigana.trim();
    if (trimmed.isEmpty) return null;

    final baseChars = splitCharacters(text);
    final furiChars = splitCharacters(trimmed);

    if (baseChars.length <= 1 || furiChars.length < baseChars.length) {
      return null;
    }

    final chunks = <String>[];
    final basePerChar = furiChars.length ~/ baseChars.length;
    final remainder = furiChars.length % baseChars.length;
    var cursor = 0;

    for (var i = 0; i < baseChars.length; i++) {
      final take = basePerChar + (i < remainder ? 1 : 0);
      chunks.add(furiChars.sublist(cursor, cursor + take).join());
      cursor += take;
    }

    return chunks;
  }
}

class FuriganaLabel extends StatelessWidget {
  const FuriganaLabel({
    required this.text,
    this.furigana,
    required this.textColor,
    required this.furiganaColor,
    required this.fontSize,
    required this.furiganaSize,
  });

  final String text;
  final String? furigana;
  final Color textColor;
  final Color furiganaColor;
  final double fontSize;
  final double furiganaSize;

  @override
  Widget build(BuildContext context) {
    final baseStyle = TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.w800,
      color: textColor,
      height: 1.1,
    );

    final trimmedFurigana = furigana?.trim();
    if (trimmedFurigana == null || trimmedFurigana.isEmpty) {
      return Text(text, style: baseStyle);
    }

    final furiStyle = TextStyle(
      fontSize: furiganaSize,
      fontWeight: FontWeight.w700,
      color: furiganaColor,
      height: 1.1,
    );

    final chunks = FuriganaLayout.distributeChunks(text, trimmedFurigana);
    if (chunks != null) {
      final baseChars = FuriganaLayout.splitCharacters(text);
      return Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          for (var i = 0; i < baseChars.length; i++)
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(chunks[i], style: furiStyle, textAlign: TextAlign.center),
                Text(baseChars[i],
                    style: baseStyle, textAlign: TextAlign.center),
              ],
            ),
        ],
      );
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(trimmedFurigana, style: furiStyle, textAlign: TextAlign.center),
        Text(text, style: baseStyle, textAlign: TextAlign.center),
      ],
    );
  }
}
