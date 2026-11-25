import 'package:flutter_test/flutter_test.dart';
import 'package:nalelu/services/furigana_service.dart';

void main() {
  group('FuriganaService', () {
    test('Furigana service correctly parses text', () async {
      final testText =
          '(新:あた)らしい is the correct word in this context because (古:ふる)い means "old", not "new".';

      final asFuriTexts = FuriganaService.formattedStringToFuriTexts(testText);

      expect(asFuriTexts.length, 4);
      expect(asFuriTexts.first.text, '新');
      expect(asFuriTexts.first.furigana, 'あた');
      expect(asFuriTexts[2].text, '古');
      expect(asFuriTexts[2].furigana, 'ふる');
    });

    test('Longer text', () async {
      final testText =
          '''
1. ます and ましょう

ます makes a neutral statement. ましょう means “let’s” and is used for a suggestion or proposal.

「ここで(休:やす)みます。」means “I rest here” or “I will rest here.”
「ここで(休:やす)みましょう。」means “Let’s rest here.”

You correctly recognized the invitation pattern in 「いきませんか」. Continue practicing the difference between a simple statement and a suggestion.

2. な-adjectives and です

きれい is a な-adjective. When it comes before a noun, use な. When it ends a sentence, use です, not な.

「きれいな(部屋:へや)です。」means “It is a clean room.”
「この(部屋:へや)はきれいです。」means “This room is clean.”

Remember: な-adjective + noun, but な-adjective + です at the end of a sentence.

3. Basic question words

You confused question words with different meanings. Practice these as a group:

いつ means “when.”
「(誕生日:たんじょうび)はいつですか。」

だれ means “who.”
「あれはだれの(傘:かさ)ですか。」

どこ means “where.”
「トイレはどこですか。」

何 means “what.”
「これは(何:なん)ですか。」

For ownership, だれの means “whose,” as in 「(先生:せんせい)のです。」, “It is the teacher’s.”

4. Time に and object を

Use に for a specific time. Use を for the direct object of an action.

「(毎朝:まいあさ)(七時:しちじ)に(朝:あさ)ごはんを(食:た)べます。」
This means “I eat breakfast at seven every morning.”

The pattern is:
time + に
object + を

More examples:
「(八時:はちじ)に(学校:がっこう)へ(行:い)きます。」
「パンを(食:た)べます。」

5. Weather and temperature vocabulary

At 30 degrees, the natural word is 暑い, meaning “hot.” 寒い means “cold.”

「(今日:きょう)は三十度です。とても(暑:あつ)いです。」
「(冬:ふゆ)はとても(寒:さむ)いです。」

Practice 暑い and 寒い together as opposites.''';
      final asFuriTexts = FuriganaService.formattedStringToFuriTexts(testText);

      expect(asFuriTexts.length, 40);
      expect(asFuriTexts[1].text, '休');
      expect(asFuriTexts[1].furigana, 'やす');
      expect(asFuriTexts[3].text, '休');
      expect(asFuriTexts[3].furigana, 'やす');

      asFuriTexts.map(
        (ft) => expect(ft.text.contains('()'), false),
      );

      asFuriTexts.map(
        (ft) => expect(ft.text.contains(')'), false),
      );

      asFuriTexts.map(
        (ft) => expect(ft.text.contains('['), false),
      );

      asFuriTexts.map(
        (ft) => expect(ft.text.contains(']'), false),
      );
    });
  });
}
