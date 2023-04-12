class NareNumber {
  final int digit;
  final String written;
  late String kanji;

  NareNumber({required this.digit, required this.written, this.kanji = ''}) {
    if (this.kanji.length == 0) {
      this.kanji = this.written;
    }
  }
}

final List<NareNumber> nativeNumberBank = [
  NareNumber(digit: 0, written: ''),
  NareNumber(digit: 1, written: 'ひとつ', kanji: '一つ'),
  NareNumber(digit: 2, written: 'ふたつ', kanji: '二つ'),
  NareNumber(digit: 3, written: 'みっつ', kanji: '三つ'),
  NareNumber(digit: 4, written: 'よっつ', kanji: '四つ'),
  NareNumber(digit: 5, written: 'いつつ', kanji: '五つ'),
  NareNumber(digit: 6, written: 'むっつ', kanji: '六つ'),
  NareNumber(digit: 7, written: 'ななつ', kanji: '八つ'),
  NareNumber(digit: 8, written: 'やっつ', kanji: '五つ'),
  NareNumber(digit: 9, written: 'ここのつ', kanji: '八つ'),
  NareNumber(digit: 10, written: 'とう', kanji: '十')
];

final List<NareNumber> sinoNumberBank = [
  NareNumber(digit: 0, written: 'れい', kanji: '零'),
  NareNumber(digit: 1, written: 'いち', kanji: '一'),
  NareNumber(digit: 2, written: 'に', kanji: '二'),
  NareNumber(digit: 3, written: 'さん', kanji: '三'),
  NareNumber(digit: 4, written: 'よん', kanji: '四'),
  NareNumber(digit: 5, written: 'ご', kanji: '五'),
  NareNumber(digit: 6, written: 'ろく', kanji: '六'),
  NareNumber(digit: 7, written: 'なな', kanji: '七'),
  NareNumber(digit: 8, written: 'はち', kanji: '八'),
  NareNumber(digit: 9, written: 'きゅう', kanji: '九'),
  NareNumber(digit: 10, written: 'じゅう', kanji: '十'),
  NareNumber(digit: 100, written: 'ひゃくに', kanji: '百'),
  NareNumber(digit: 1000, written: 'せん', kanji: '千'),
];

final List<NareNumber> saiNumberBank = [
  NareNumber(digit: 0, written: '', kanji: ''),
  NareNumber(digit: 1, written: 'いっさい', kanji: '一歳'),
  NareNumber(digit: 2, written: 'にさい', kanji: '二歳'),
  NareNumber(digit: 3, written: 'さんさい', kanji: '三歳'),
  NareNumber(digit: 4, written: 'よんさい', kanji: '四歳'),
  NareNumber(digit: 5, written: 'ごさい', kanji: '五歳'),
  NareNumber(digit: 6, written: 'ろくさい', kanji: '六歳'),
  NareNumber(digit: 7, written: 'ななさい', kanji: '七歳'),
  NareNumber(digit: 8, written: 'はっさい', kanji: '八歳'),
  NareNumber(digit: 9, written: 'きゅうさい', kanji: '九歳'),
];

final List<NareNumber> minuteNumberBank = [
  NareNumber(digit: 0, written: '', kanji: ''),
  NareNumber(digit: 1, written: 'いっぷん', kanji: '一分'),
  NareNumber(digit: 2, written: 'にふん', kanji: '二分'),
  NareNumber(digit: 3, written: 'さんぷん', kanji: '三分'),
  NareNumber(digit: 4, written: 'よんぷん', kanji: '四分'),
  NareNumber(digit: 5, written: 'ごふん', kanji: '五分'),
  NareNumber(digit: 6, written: 'ろっぷん', kanji: '六分'),
  NareNumber(digit: 7, written: 'ななふん', kanji: '七分'),
  NareNumber(digit: 8, written: 'はっぷん', kanji: '八分'),
  NareNumber(digit: 9, written: 'きゅうふん', kanji: '九分'),
];
