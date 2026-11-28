import 'package:material_ui/material_ui.dart';
import 'package:nalelu/furi_text.dart';
import 'package:nalelu/services/coach_result.dart';
import 'package:nalelu/services/furigana_service.dart';
import 'package:nalelu/widgets/coach/coach.dart';
import 'package:nalelu/widgets/coach/coach_results_page.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

// Mock Coach that shows results page
class _MockCoach extends Coach {
  @override
  final String questionJsonStr;

  const _MockCoach({required this.questionJsonStr});

  @override
  State<Coach> createState() => _MockCoachState();
}

class _MockCoachState extends State<Coach> {
  late List<CoachAnswer> _answers;
  late Future<CoachFeedback> _feedbackFuture;

  @override
  void initState() {
    super.initState();

    // Mock answers
    _answers = [
      const CoachAnswer(
        question: '友達は学生です私___学生です',
        correctAnswer: 'も',
        givenAnswer: 'も',
      ),
      const CoachAnswer(
        question: 'これは___ですかそれは (本:ほん)です',
        correctAnswer: 'なん',
        givenAnswer: 'だれ',
      ),
      const CoachAnswer(
        question: '毎朝七時___起きます',
        correctAnswer: 'に',
        givenAnswer: 'に',
      ),
    ];

    // Mock feedback
    _feedbackFuture = Future.value(() {
      if (widget.questionJsonStr == null) {
        return CoachFeedback(
          feedback: [
            FuriText(
              text: 'questionJsonStr is null よくできました！ This was a great attempt. あなたの',
            ),
            FuriText(text: 'スコア', furigana: 'すこあ'),
            FuriText(text: 'is how you say "your score'),
          ],
        );
      }

      final res = FuriganaService.formattedStringToFuriTexts(
        widget.questionJsonStr!,
      );

      return CoachFeedback(feedback: res);
    }());
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<CoachFeedback>(
      future: _feedbackFuture,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return CoachResultsPage(
            answers: _answers,
            feedbackFuture: Future<CoachFeedback>.value(snapshot.data!),
            onRetry: () {},
          );
        }
        return const CircularProgressIndicator();
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}

@widgetbook.UseCase(name: 'Results Page', type: Coach)
Widget buildCoachResultsUseCase(BuildContext context) {
  return _MockCoach(
    questionJsonStr: '''
1. ます and ましょう

ます makes a neutral statement. ましょう means “let’s” and is used for a suggestion or proposal.

「ここで(休:やす)みます」means “I rest here” or “I will rest here.”
「ここで(休:やす)みましょう」means “Let’s rest here.”

You correctly recognized the invitation pattern in 「いきませんか」. Continue practicing the difference between a simple statement and a suggestion.

2. な-adjectives and です

きれい is a な-adjective. When it comes before a noun, use な. When it ends a sentence, use です, not な.

「きれいな(部屋:へや)です」means “It is a clean room.”
「この(部屋:へや)はきれいです」means “This room is clean.”

Remember: な-adjective + noun, but な-adjective + です at the end of a sentence.

3. Basic question words

You confused question words with different meanings. Practice these as a group:

いつ means “when.”
「(誕生日:たんじょうび)はいつですか」

だれ means “who.”
「あれはだれの(傘:かさ)ですか」

どこ means “where.”
「トイレはどこですか」

何 means “what.”
「これは(何:なん)ですか」

For ownership, だれの means “whose,” as in 「(先生:せんせい)のです」, “It is the teacher’s.”

4. Time に and object を

Use に for a specific time. Use を for the direct object of an action.

「(毎朝:まいあさ)(七時:しちじ)に(朝:あさ)ごはんを(食:た)べます」
This means “I eat breakfast at seven every morning.”

The pattern is:
time + に
object + を

More examples:
「(八時:はちじ)に(学校:がっこう)へ(行:い)きます」
「パンを(食:た)べます」

5. Weather and temperature vocabulary

At 30 degrees, the natural word is 暑い, meaning “hot.” 寒い means “cold.”

「(今日:きょう)は三十度ですとても(暑:あつ)いです」
「(冬:ふゆ)はとても(寒:さむ)いです」

Practice 暑い and 寒い together as opposites.''',
  );
}

// @widgetbook.UseCase(name: 'Default', type: Coach)
// Widget buildCoachFeedbackUseCase(BuildContext context) {
//   return Coach();
// }
