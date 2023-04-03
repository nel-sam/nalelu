class NareNumber {
  final int digit;
  final String written;
  late String alternate;

  NareNumber({required this.digit, required this.written, this.alternate = ''}) {
    if (this.alternate.length == 0) {
      this.alternate = this.written;
    }
  }
}

final List<NareNumber> nativeNumberBank = [
  NareNumber(digit: 0, written: ''),
  NareNumber(digit: 1, written: 'ひとつ', alternate: '一つ'),
  NareNumber(digit: 2, written: 'ふたつ', alternate: '二つ'),
  NareNumber(digit: 3, written: 'みっつ', alternate: '三つ'),
  NareNumber(digit: 4, written: 'よっつ', alternate: '四つ'),
  NareNumber(digit: 5, written: 'いつつ', alternate: '五つ'),
  NareNumber(digit: 6, written: 'むっつ', alternate: '六つ'),
  NareNumber(digit: 7, written: 'ななつ', alternate: '八つ'),
  NareNumber(digit: 8, written: 'やっつ', alternate: '五つ'),
  NareNumber(digit: 9, written: 'ここのつ', alternate: '八つ'),
  NareNumber(digit: 10, written: 'とう', alternate: '十')
];

final List<NareNumber> sinoNumberBank = [
  NareNumber(digit: 0, written: 'れい', alternate: '零'),
  NareNumber(digit: 1, written: 'いち', alternate: '一'),
  NareNumber(digit: 2, written: 'に', alternate: '二'),
  NareNumber(digit: 3, written: 'さん', alternate: '三'),
  NareNumber(digit: 4, written: 'よん', alternate: '四'),
  NareNumber(digit: 5, written: 'ご', alternate: '五'),
  NareNumber(digit: 6, written: 'ろく', alternate: '六'),
  NareNumber(digit: 7, written: 'なな', alternate: '七'),
  NareNumber(digit: 8, written: 'はち', alternate: '八'),
  NareNumber(digit: 9, written: 'きゅう', alternate: '九'),
  NareNumber(digit: 10, written: 'じゅう', alternate: '十'),
  // NareNumber(digit: 11, written: 'じゅういち', alternate: '十一'),
  // NareNumber(digit: 12, written: 'じゅう', alternate: '十二'),
  NareNumber(digit: 100, written: 'ひゃくに', alternate: '百'),
  NareNumber(digit: 1000, written: 'せん', alternate: '千'),
];

final List<NareNumber> saiNumberBank = [
  NareNumber(digit: 0, written: '', alternate: ''),
  NareNumber(digit: 1, written: 'いっさい', alternate: '一歳'),
  NareNumber(digit: 2, written: 'にさい', alternate: '二歳'),
  NareNumber(digit: 3, written: 'さんさい', alternate: '三歳'),
  NareNumber(digit: 4, written: 'よんさい', alternate: '四歳'),
  NareNumber(digit: 5, written: 'ごさい', alternate: '五歳'),
  NareNumber(digit: 6, written: 'ろくさい', alternate: '六歳'),
  NareNumber(digit: 7, written: 'ななさい', alternate: '七歳'),
  NareNumber(digit: 8, written: 'はっさい', alternate: '八歳'),
  NareNumber(digit: 9, written: 'きゅうさい', alternate: '九歳'),
];

final List<NareNumber> minuteNumberBank = [
  NareNumber(digit: 0, written: '', alternate: ''),
  NareNumber(digit: 1, written: 'いっぷん', alternate: '一分'),
  NareNumber(digit: 2, written: 'にふん', alternate: '二分'),
  NareNumber(digit: 3, written: 'さんぷん', alternate: '三分'),
  NareNumber(digit: 4, written: 'よんぷん', alternate: '四分'),
  NareNumber(digit: 5, written: 'ごふん', alternate: '五分'),
  NareNumber(digit: 6, written: 'ろっぷん', alternate: '六分'),
  NareNumber(digit: 7, written: 'ななふん', alternate: '七分'),
  NareNumber(digit: 8, written: 'はっぷん', alternate: '八分'),
  NareNumber(digit: 9, written: 'きゅうふん', alternate: '九分'),
];
