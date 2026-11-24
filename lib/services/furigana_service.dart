import 'package:nalelu/furi_text.dart';

const questionBlank = '___';
const unknownTranslationKey = 'unknown';

class FuriganaService {
  static List<FuriText> formattedStringToFuriTexts(String text) {
    // Parse text with (text:furigana) format, e.g. "(私:わたし)は (友達:ともだち)に"
    final parts = <FuriText>[];
    final regex = RegExp(r'\(([^:]+):([^\)]+)\)|([^\(]+)');

    for (final match in regex.allMatches(text)) {
      if (match.group(1) != null) {
        // Has furigana in (text:furigana) format
        parts.add(FuriText(text: match.group(1)!, furigana: match.group(2)!));
      } else if (match.group(3) != null) {
        // Plain text - may contain ___ blanks
        _splitPlainText(match.group(3)!, parts);
      }
    }

    return parts;
  }

  static void _splitPlainText(String text, List<FuriText> parts) {
    final segments = text.split(questionBlank);
    for (int i = 0; i < segments.length; i++) {
      final trimmed = segments[i].trim();
      if (trimmed.isNotEmpty) {
        parts.add(FuriText(text: trimmed));
      }
      // Add blank after each segment except the last
      if (i < segments.length - 1) {
        parts.add(FuriText(text: questionBlank));
      }
    }
  }
}
