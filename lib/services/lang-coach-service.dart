import 'dart:convert';

import 'package:http/http.dart' as Http;
import 'package:nalelu/constants.dart';
import 'package:nalelu/services/coach_question.dart';
import 'package:nalelu/services/coach_result.dart';

class LangCoachException implements Exception {
  final String message;
  final int? statusCode;
  LangCoachException(this.message, {this.statusCode});

  @override
  String toString() => statusCode == null
      ? 'LangCoachException: $message'
      : 'LangCoachException: $message ($statusCode)';
}

class LangCoachService {
  final Http.Client client;
  final String baseUrl;

  LangCoachService({Http.Client? client, String? baseUrl})
      : client = client ?? Http.Client(),
        baseUrl = baseUrl ?? LANG_COACH_API_HOST;

  void dispose() {
    client.close();
  }

  Future<List<CoachQuestion>> getQuestions({String lang = 'jp'}) async {
    final uri = Uri.parse('$baseUrl/api/questions/$lang');
    final decoded = await _send(() => client.get(uri, headers: _headers));

    if (decoded is! List) {
      throw LangCoachException('GET $uri: expected a JSON array');
    }

    return decoded
        .map((item) => CoachQuestion.fromJson(item as Map<String, dynamic>))
        .toList();
  }

  /// Sends the user's answers and returns the coach's written feedback.
  /// [nativeLanguage] is the language the feedback should be written in,
  /// e.g. 'EN' or 'ES'. Results generation can take a while, so this uses a
  /// longer timeout.
  Future<CoachFeedback> postResults(
    List<CoachAnswer> answers, {
    required String nativeLanguage,
    String targetLanguage = 'JP',
  }) async {
    final uri = Uri.parse('$baseUrl/api/results');
    final body = jsonEncode({
      'TargetLanguage': targetLanguage,
      'NativeLanguage': nativeLanguage,
      'Results': answers.map((a) => a.toJson()).toList(),
    });

    final decoded = await _send(
      () => client.post(uri, headers: _headers, body: body),
      timeout: const Duration(seconds: 60),
    );

    if (decoded is! Map<String, dynamic>) {
      throw LangCoachException('POST $uri: expected a JSON object');
    }

    return CoachFeedback.fromJson(decoded);
  }

  static const _headers = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
  };

  /// Runs [request], enforces a timeout, checks for a 2xx status and decodes
  /// the UTF-8 JSON body. Every endpoint goes through here so connection
  /// errors and bad statuses surface as a single [LangCoachException].
  Future<dynamic> _send(
    Future<Http.Response> Function() request, {
    Duration timeout = const Duration(seconds: 10),
  }) async {
    final Http.Response response;
    try {
      response = await request().timeout(timeout);
    } catch (e) {
      throw LangCoachException('Could not reach the server');
    }

    if (response.statusCode == 429) {
      throw LangCoachException('Rate limited', statusCode: response.statusCode);
    }

    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw LangCoachException('Request failed', statusCode: response.statusCode);
    }

    return jsonDecode(utf8.decode(response.bodyBytes));
  }
}
