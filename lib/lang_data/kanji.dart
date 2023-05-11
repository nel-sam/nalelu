var kanjiBank = [
  Kanji(
    kanji: '何',
    onYomi: "カ",
    kunYomi: "なに / なん / なに- / なん-",
    phrases: ['何でうすか', '何れが貴方のペンですか', '何が美味しいですか'],
    answers: ['なん', 'ど', 'なに'],
  ),
  Kanji(
    kanji: '女',
    onYomi: 'ジョ, ニョ, ニョウ',
    kunYomi: 'おんな, め',
    phrases: ['女らしい', 'ギリシャの女神'],
    answers: ['じょ', 'おん', 'め'],
  ),
];

class Kanji {
  final String kanji;
  final String onYomi;
  final String kunYomi;
  final List<String> phrases;
  final List<String> answers;

  Kanji({
    required this.kanji,
    required this.onYomi,
    required this.kunYomi,
    required this.phrases,
    required this.answers,
  });
}
