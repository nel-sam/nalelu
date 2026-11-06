import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:nalelu/services/coach_result.dart';
import 'package:nalelu/services/lang-coach-service.dart';

void main() {
  group('LangCoachService', () {
    test('getQuestions parses the question list', () async {
      final client = MockClient((request) async {
        expect(request.method, 'GET');
        expect(request.url.path, '/api/questions/jp');
        return http.Response(
          jsonEncode([
            {
              'question': 'わたし ___ がくせいです。',
              'tested-abilities': ['particles'],
              'correct-answer-index': 0,
              'choices': ['は', 'を', "I don't know"],
            }
          ]),
          200,
          headers: {'content-type': 'application/json; charset=utf-8'},
        );
      });

      final service = LangCoachService(client: client, baseUrl: 'http://x');
      final questions = await service.getQuestions();

      expect(questions, hasLength(1));
      expect(questions.single.question, 'わたし ___ がくせいです。');
      expect(questions.single.correctAnswer, 'は');
      expect(questions.single.testedAbilities, ['particles']);
    });

    test('postResults sends the expected body and parses feedback', () async {
      late Map<String, dynamic> sentBody;
      final client = MockClient((request) async {
        expect(request.method, 'POST');
        expect(request.url.path, '/api/results');
        expect(request.headers['content-type'], startsWith('application/json'));
        sentBody = jsonDecode(request.body) as Map<String, dynamic>;
        return http.Response(
          jsonEncode({'feedback': 'Focus on は.'}),
          200,
          headers: {'content-type': 'application/json; charset=utf-8'},
        );
      });

      final service = LangCoachService(client: client, baseUrl: 'http://x');
      final feedback = await service.postResults(
        [
          const CoachAnswer(
            question: "What is 'hello' in Japanese?",
            correctAnswer: 'こんにちは',
            givenAnswer: 'こんにちわ',
          ),
        ],
        nativeLanguage: 'ES',
      );

      expect(feedback.feedback, 'Focus on は.');
      expect(sentBody, {
        'TargetLanguage': 'JP',
        'NativeLanguage': 'ES',
        'Results': [
          {
            'Question': "What is 'hello' in Japanese?",
            'CorrectAnswer': 'こんにちは',
            'GivenAnswer': 'こんにちわ',
          }
        ]
      });
    });

    test('non-2xx status throws LangCoachException with status code', () async {
      final client = MockClient((_) async => http.Response('nope', 500));
      final service = LangCoachService(client: client, baseUrl: 'http://x');

      await expectLater(
        service.getQuestions(),
        throwsA(isA<LangCoachException>()
            .having((e) => e.statusCode, 'statusCode', 500)),
      );
    });
  });
}
