var mangaWordsBank = [
  MangaWord(
    text1: 'おいしです',
    text2: 'おいです',
    text3: 'おいしす',
    answers: Answer(answer1: 'かか', answer2: 'か', answer3: 'か'),
  ),
  MangaWord(
    text1: 'おしです',
    text2: 'おいしす',
    text3: 'いしです',
    answers: Answer(answer1: 'かか', answer2: 'か', answer3: 'か'),
  )
];

class MangaWord {
  final String text1;
  final String text2;
  final String text3;
  final Answer answers;

  MangaWord({
    required this.text1,
    required this.text2,
    required this.text3,
    required this.answers,
  });
}

class Answer {
  final String answer1;
  final String answer2;
  final String answer3;

  Answer({
    required this.answer1,
    required this.answer2,
    required this.answer3,
  });
}

// class MangaExerciseObj {
//   List<MangaWord> parts = [];

//   MangaExerciseObj({required this.parts}) {}
// }

// class MangaWord {
//   final String kana;
//   late String kanji;

//   MangaWord({required this.kana, this.kanji = ''}) {
//     if (this.kanji.length == 0) {
//       this.kanji = this.kana;
//     }
//   }
// }

// final List<MangaExerciseObj> mangaExercises = [
//   MangaExerciseObj(parts: [
//     MangaWord(kana: 'か', kanji: ''),
//     MangaWord(kana: '', kanji: '')
//   ])
// ];
