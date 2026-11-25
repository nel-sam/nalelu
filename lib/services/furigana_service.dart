import 'package:nalelu/furi_text.dart';

const questionBlank = '___';
const unknownTranslationKey = 'unknown';

class FuriganaService {
  static List<FuriText> formattedStringToFuriTexts(String text) {
    // Parse text with (text:furigana) format, capturing trailing whitespace
    final parts = <FuriText>[];
    final regex = RegExp(r'\(([^:]+):([^\)]+)\)(\s*)|([^\(]+)');

    for (final match in regex.allMatches(text)) {
      if (match.group(1) != null) {
        // Has furigana in (text:furigana) format
        final furiText = match.group(1)!;
        final furigana = match.group(2)!;
        final trailingWhitespace = match.group(3) ?? '';

        parts.add(FuriText(
          text: furiText + trailingWhitespace,
          furigana: furigana,
        ));
      } else if (match.group(4) != null) {
        // Plain text - may contain ___ blanks
        _splitPlainText(match.group(4)!, parts);
      }
    }

    return parts;
  }

  static void _splitPlainText(String text, List<FuriText> parts) {
    // Split on newlines first to preserve them as separate items
    final lines = text.split('\n');

    for (int lineIdx = 0; lineIdx < lines.length; lineIdx++) {
      final line = lines[lineIdx];

      // Split on questionBlank first to isolate it
      final blankSegments = line.split(questionBlank);

      for (int segIdx = 0; segIdx < blankSegments.length; segIdx++) {
        final segment = blankSegments[segIdx];

        // Match words (non-whitespace) followed by optional spaces
        final regex = RegExp(r'(\S+[ \t]*)');
        final matches = regex.allMatches(segment);

        for (final match in matches) {
          final word = match.group(1)!;
          parts.add(FuriText(text: word));
        }

        // Add blank after each segment except the last
        if (segIdx < blankSegments.length - 1) {
          parts.add(FuriText(text: questionBlank));
        }
      }

      // Add newline as separate FuriText (except after last line)
      if (lineIdx < lines.length - 1) {
        parts.add(FuriText(text: '\n'));
      }
    }
  }
}
