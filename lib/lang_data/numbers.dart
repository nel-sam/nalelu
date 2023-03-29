class HanNumber {
  final int digit;
  final String written;
  late String alternate;

  HanNumber({required this.digit, required this.written, this.alternate = ''}) {
    if (this.alternate.length == 0) {
      this.alternate = this.written;
    }
  }
}

final List<HanNumber> nativeNumberBank = [
  HanNumber(digit: 1, written: 'ひとつ', alternate: '一つ'),
  HanNumber(digit: 2, written: 'ふたつ', alternate: '二つ'),
  HanNumber(digit: 3, written: 'みっつ', alternate: '三つ'),
  HanNumber(digit: 4, written: 'よっつ', alternate: '四つ'),
  HanNumber(digit: 5, written: 'いつつ', alternate: '五つ'),
  HanNumber(digit: 6, written: '여섯'),
  HanNumber(digit: 7, written: '일곱'),
  HanNumber(digit: 8, written: '여덟'),
  HanNumber(digit: 9, written: '아홉'),
  HanNumber(digit: 10, written: '열'),
  HanNumber(digit: 11, written: '열하나', alternate: '열한'),
  HanNumber(digit: 12, written: '열둘', alternate: '열두'),
  HanNumber(digit: 13, written: '열셋', alternate: '열세'),
  HanNumber(digit: 14, written: '열넷', alternate: '열네'),
  HanNumber(digit: 15, written: '열다섯'),
  HanNumber(digit: 16, written: '열여섯'),
  HanNumber(digit: 17, written: '열일곱'),
  HanNumber(digit: 18, written: '열여덟'),
  HanNumber(digit: 19, written: '열아홉'),
  HanNumber(digit: 20, written: '스물'),
  HanNumber(digit: 21, written: '스물하나', alternate: '스물한'),
  HanNumber(digit: 22, written: '스물둘', alternate: '스물두'),
  HanNumber(digit: 23, written: '스물셋', alternate: '스물세'),
  HanNumber(digit: 24, written: '스물넷', alternate: '스물네'),
  HanNumber(digit: 25, written: '스물다섯'),
  HanNumber(digit: 26, written: '스물여섯'),
  HanNumber(digit: 27, written: '스물일곱'),
  HanNumber(digit: 28, written: '스물여덟'),
  HanNumber(digit: 29, written: '스물아홉'),
  HanNumber(digit: 30, written: '서른'),
  HanNumber(digit: 31, written: '서른하나', alternate: '서른한'),
  HanNumber(digit: 32, written: '서른둘', alternate: '서른두'),
  HanNumber(digit: 33, written: '서른셋', alternate: '서른세'),
  HanNumber(digit: 34, written: '서른넷', alternate: '서른네'),
  HanNumber(digit: 35, written: '서른다섯'),
  HanNumber(digit: 36, written: '서른여섯'),
  HanNumber(digit: 37, written: '서른일곱'),
  HanNumber(digit: 38, written: '서른여덟'),
  HanNumber(digit: 39, written: '서른아홉'),
  HanNumber(digit: 40, written: '마흔'),
  HanNumber(digit: 41, written: '마흔하나', alternate: '마흔한'),
  HanNumber(digit: 42, written: '마흔둘', alternate: '마흔두'),
  HanNumber(digit: 43, written: '마흔셋', alternate: '마흔세'),
  HanNumber(digit: 44, written: '마흔넷', alternate: '마흔네'),
  HanNumber(digit: 45, written: '마흔다섯'),
  HanNumber(digit: 46, written: '마흔여섯'),
  HanNumber(digit: 47, written: '마흔일곱'),
  HanNumber(digit: 48, written: '마흔여덟'),
  HanNumber(digit: 49, written: '마흔아홉'),
  HanNumber(digit: 50, written: '쉰'),
  HanNumber(digit: 51, written: '쉰하나', alternate: '쉰한'),
  HanNumber(digit: 52, written: '쉰둘', alternate: '쉰두'),
  HanNumber(digit: 53, written: '쉰셋', alternate: '쉰세'),
  HanNumber(digit: 54, written: '쉰넷', alternate: '쉰네'),
  HanNumber(digit: 55, written: '쉰다섯'),
  HanNumber(digit: 56, written: '쉰여섯'),
  HanNumber(digit: 57, written: '쉰일곱'),
  HanNumber(digit: 58, written: '쉰여덟'),
  HanNumber(digit: 59, written: '쉰아홉'),
  HanNumber(digit: 60, written: '예순'),
  HanNumber(digit: 61, written: '예순하나', alternate: '예순한'),
  HanNumber(digit: 62, written: '예순둘', alternate: '예순두'),
  HanNumber(digit: 63, written: '예순셋', alternate: '예순세'),
  HanNumber(digit: 64, written: '예순넷', alternate: '예순네'),
  HanNumber(digit: 65, written: '예순다섯'),
  HanNumber(digit: 66, written: '예순여섯'),
  HanNumber(digit: 67, written: '예순일곱'),
  HanNumber(digit: 68, written: '예순여덟'),
  HanNumber(digit: 69, written: '예순아홉'),
  HanNumber(digit: 70, written: '일흔'),
  HanNumber(digit: 71, written: '일흔하나', alternate: '일흔한'),
  HanNumber(digit: 72, written: '일흔둘', alternate: '일흔두'),
  HanNumber(digit: 73, written: '일흔셋', alternate: '일흔세'),
  HanNumber(digit: 74, written: '일흔넷', alternate: '일흔네'),
  HanNumber(digit: 75, written: '일흔다섯'),
  HanNumber(digit: 76, written: '일흔여섯'),
  HanNumber(digit: 77, written: '일흔일곱'),
  HanNumber(digit: 78, written: '일흔여덟'),
  HanNumber(digit: 79, written: '일흔아홉'),
  HanNumber(digit: 80, written: '여든'),
  HanNumber(digit: 81, written: '여든하나', alternate: '여든한'),
  HanNumber(digit: 82, written: '여든둘', alternate: '여든두'),
  HanNumber(digit: 83, written: '여든셋', alternate: '여든세'),
  HanNumber(digit: 84, written: '여든넷', alternate: '여든네'),
  HanNumber(digit: 85, written: '여든다섯'),
  HanNumber(digit: 86, written: '여든여섯'),
  HanNumber(digit: 87, written: '여든일곱'),
  HanNumber(digit: 88, written: '여든여덟'),
  HanNumber(digit: 89, written: '여든아홉'),
  HanNumber(digit: 90, written: '아흔'),
  HanNumber(digit: 91, written: '아흔하나', alternate: '아흔한'),
  HanNumber(digit: 92, written: '아흔둘', alternate: '아흔두'),
  HanNumber(digit: 93, written: '아흔셋', alternate: '아흔세'),
  HanNumber(digit: 94, written: '아흔넷', alternate: '아흔네'),
  HanNumber(digit: 95, written: '아흔다섯'),
  HanNumber(digit: 96, written: '아흔여섯'),
  HanNumber(digit: 97, written: '아흔일곱'),
  HanNumber(digit: 98, written: '아흔여덟'),
  HanNumber(digit: 99, written: '아흔아홉'),
];

final List<HanNumber> sinoNumberBank = [
  HanNumber(digit: 1, written: 'れい', alternate: '零'),
  HanNumber(digit: 1, written: 'いち', alternate: '一'),
  HanNumber(digit: 2, written: 'に', alternate: '二'),
  HanNumber(digit: 3, written: 'さん', alternate: '三'),
  HanNumber(digit: 4, written: 'よん', alternate: '四'),
  HanNumber(digit: 5, written: 'ご', alternate: '五'),
  HanNumber(digit: 6, written: 'ろく', alternate: '六'),
  HanNumber(digit: 7, written: 'なな', alternate: '七'),
  HanNumber(digit: 8, written: 'はち', alternate: '八'),
  HanNumber(digit: 9, written: 'きゅう', alternate: '九'),
  HanNumber(digit: 10, written: 'じゅう', alternate: '十'),
  HanNumber(digit: 100, written: 'ひゃく', alternate: '百'),
  HanNumber(digit: 1000, written: 'せん', alternate: '千'),
];

final List<HanNumber> saiNumberBank = [
  HanNumber(digit: 0, written: '', alternate: ''),
  HanNumber(digit: 1, written: 'いっさい', alternate: '一歳'),
  HanNumber(digit: 2, written: 'にさい', alternate: '二歳'),
  HanNumber(digit: 3, written: 'さんさい', alternate: '三歳'),
  HanNumber(digit: 4, written: 'よんさい', alternate: '四歳'),
  HanNumber(digit: 5, written: 'ごさい', alternate: '五歳'),
  HanNumber(digit: 6, written: 'ろくさい', alternate: '六歳'),
  HanNumber(digit: 7, written: 'ななさい', alternate: '七歳'),
  HanNumber(digit: 8, written: 'はっさい', alternate: '八歳'),
  HanNumber(digit: 9, written: 'きゅうさい', alternate: '九歳'),
];