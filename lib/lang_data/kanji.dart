var kanjiBank = [
  Kanji(
    phrase: '何でうすか',
    answers: ['なん'],
  ),
   Kanji(
    phrase: '彼女はかわいい',
    answers: ['かのじょ'],
  ),
];

class Kanji {
  final String phrase;
  final List<String> answers;

  Kanji({
    required this.phrase,
    required this.answers,
  });
}
