class MangaWord {
  final String written;
  late String kanji;

  MangaWord({required this.written, this.kanji = ''}) {
    if (this.kanji.length == 0) {
      this.kanji = this.written;
    }
  }
}

final List<MangaWord> exercise1 = [
  MangaWord(written: 'か', kanji: ''),
  MangaWord(written: '', kanji: ''),
];
