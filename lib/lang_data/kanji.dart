import 'package:nalelu/furi_text.dart';
import 'package:nalelu/na_helpers.dart';

var kanjiBank = [
  // Kanji(
  //     translation: NA.t('一'),
  //     kanji: '一',
  //     onYomi: 'イチ',
  //     kunYomi: 'ひと, ひとつ',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '一人ぼっちとうきょう',  emphasize: true),
  //           ],
  //           answer: 'ひとり'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: 'わたしは一ばんかっこいい',  emphasize: true),
  //           ],
  //           answer: 'いち'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: 'ビイルを一つください',  emphasize: true)
  //           ],
  //           answer: 'ひと'),
  //     ]),
  // Kanji(
  //     translation: NA.t('二'),
  //     kanji: '二',
  //     onYomi: 'ニ',
  //     kunYomi: 'ふた, ふたつ',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '二プラス二',  emphasize: true),
  //           ],
  //           answer: 'に'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: 'リンゴを二つ食べる',  emphasize: true),
  //           ],
  //           answer: 'ふた'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: 'わたしわ三十二さいです',  emphasize: true),
  //           ],
  //           answer: 'に'),
  //     ]),
  // Kanji(
  //     translation: NA.t('三'),
  //     kanji: '三',
  //     onYomi: 'サン, ゾウ',
  //     kunYomi: 'み, みつ, みっつ',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '三月は寒いです',  emphasize: true),
  //           ],
  //           answer: 'さん'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '三つのビデオゲームがあります',  emphasize: true),
  //           ],
  //           answer: 'みっ'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: 'オレンジを三つもっています',  emphasize: true),
  //           ],
  //           answer: 'みっ'),
  //     ]),
  // Kanji(
  //     translation: NA.t('四'),
  //     kanji: '四',
  //     onYomi: 'シ',
  //     kunYomi: 'よ, よつ, よっつ',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '四月は暑いです',  emphasize: true),
  //           ],
  //           answer: 'し'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: 'クリスマスまであと四日',  emphasize: true),
  //           ],
  //           answer: 'よっ'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: 'メッシは四ゴールをきめた',  emphasize: true),
  //           ],
  //           answer: 'よん'),
  //     ]),
  // Kanji(
  //     translation: NA.t('五'),
  //     kanji: '五',
  //     onYomi: 'ゴ',
  //     kunYomi: 'いつ, いつつ',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: 'ほしが五つあります',  emphasize: true),
  //           ],
  //           answer: 'いつ'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '五月は好きな月です',  emphasize: true),
  //           ],
  //           answer: 'ご'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '五百円かせいだ',  emphasize: true),
  //           ],
  //           answer: 'ご'),
  //     ]),
  // Kanji(
  //     translation: NA.t('六'),
  //     kanji: '六',
  //     onYomi: 'ロク',
  //     kunYomi: 'む, むつ, むっつ',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '六つ',  emphasize: true),
  //           ],
  //           answer: 'むっ'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '六月',  emphasize: true),
  //           ],
  //           answer: 'ろく'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '六日',  emphasize: true),
  //           ],
  //           answer: 'むい'),
  //     ]),
  // Kanji(
  //     translation: NA.t('七'),
  //     kanji: '七',
  //     onYomi: 'シチ',
  //     kunYomi: 'なな, なの',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '七つ',  emphasize: true),
  //           ],
  //           answer: 'なな'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '七月',  emphasize: true),
  //           ],
  //           answer: 'しち'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '七日',  emphasize: true),
  //           ],
  //           answer: 'なの'),
  //     ]),
  // Kanji(
  //     translation: NA.t('八'),
  //     kanji: '八',
  //     onYomi: 'ハチ',
  //     kunYomi: 'や, やつ, やっつ',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '八つ',  emphasize: true),
  //           ],
  //           answer: 'やっ'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '八月',  emphasize: true),
  //           ],
  //           answer: 'はち'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '八日',  emphasize: true),
  //           ],
  //           answer: 'よう'),
  //     ]),
  // Kanji(
  //     translation: NA.t('九'),
  //     kanji: '九',
  //     onYomi: 'キュウ, ク',
  //     kunYomi: 'ここの, ここのつ',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '九つ',  emphasize: true),
  //           ],
  //           answer: 'ここの'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '九月',  emphasize: true),
  //           ],
  //           answer: 'く'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '九日',  emphasize: true),
  //           ],
  //           answer: 'ここの'),
  //     ]),
  // Kanji(
  //     translation: NA.t('十'),
  //     kanji: '十',
  //     onYomi: 'ジュウ',
  //     kunYomi: 'とお',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '十月',  emphasize: true),
  //           ],
  //           answer: 'じゅう'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '十日',  emphasize: true),
  //           ],
  //           answer: 'とお'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '十分な',  emphasize: true),
  //           ],
  //           answer: 'じゅう'),
  //     ]),
  // Kanji(
  //     translation: NA.t('百'),
  //     kanji: '百',
  //     onYomi: 'ヒャク',
  //     kunYomi: 'もも',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '百',  emphasize: true),
  //           ],
  //           answer: 'ひゃく'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '三百',  emphasize: true),
  //           ],
  //           answer: 'びゃく'),
  //     ]),
  // Kanji(
  //     translation: NA.t('千'),
  //     kanji: '千',
  //     onYomi: 'セン',
  //     kunYomi: 'ち',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '千',  emphasize: true),
  //           ],
  //           answer: 'せん'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '三千',  emphasize: true),
  //           ],
  //           answer: 'ぜん'),
  //     ]),
  // Kanji(
  //     translation: NA.t('万'),
  //     kanji: '万',
  //     onYomi: 'マン, バン',
  //     kunYomi: 'よろず',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '一万',  emphasize: true),
  //           ],
  //           answer: 'まん'),
  //     ]),
  // Kanji(
  //     translation: NA.t('円'),
  //     kanji: '円',
  //     onYomi: 'エン',
  //     kunYomi: 'まる, まるい, まど, まどか',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '円',  emphasize: true),
  //           ],
  //           answer: 'えん'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '四万円',  emphasize: true),
  //           ],
  //           answer: 'えん'),
  //     ]),
  // Kanji(
  //     translation: NA.t('日'),
  //     kanji: '日',
  //     onYomi: 'ニチ, ジツ',
  //     kunYomi: 'ひ, か, かつ, かれる',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '日本',  emphasize: true),
  //           ],
  //           answer: 'に'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '日',  emphasize: true),
  //           ],
  //           answer: 'ひ'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '休日',  emphasize: true),
  //           ],
  //           answer: 'じつ'),
  //     ]),
  // Kanji(
  //     translation: NA.t('月'),
  //     kanji: '月',
  //     onYomi: 'ゲツ, ガツ',
  //     kunYomi: 'つき',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '月曜日',  emphasize: true),
  //           ],
  //           answer: 'げつ'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '一月',  emphasize: true),
  //           ],
  //           answer: 'がつ'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '今月',  emphasize: true),
  //           ],
  //           answer: 'げつ'),
  //     ]),
  // Kanji(
  //     translation: NA.t('火'),
  //     kanji: '火',
  //     onYomi: 'カ',
  //     kunYomi: 'ひ, ほのお',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '火曜日',  emphasize: true),
  //           ],
  //           answer: 'か'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '火山',  emphasize: true),
  //           ],
  //           answer: 'か'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '火',  emphasize: true),
  //           ],
  //           answer: 'ひ'),
  //     ]),
  // Kanji(
  //     translation: NA.t('水'),
  //     kanji: '水',
  //     onYomi: 'スイ',
  //     kunYomi: 'みず, みずうみ',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '水曜日',  emphasize: true),
  //           ],
  //           answer: 'すい'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '水',  emphasize: true),
  //           ],
  //           answer: 'みず'),
  //     ]),
  // Kanji(
  //     translation: NA.t('木'),
  //     kanji: '木',
  //     onYomi: 'ボク, モク',
  //     kunYomi: 'き, こ',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '木',  emphasize: true),
  //           ],
  //           answer: 'き'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '木曜日',  emphasize: true),
  //           ],
  //           answer: 'もく'),
  //     ]),
  // Kanji(
  //     translation: NA.t('金'),
  //     kanji: '金',
  //     onYomi: 'キン, コン, ゴン',
  //     kunYomi: 'かね, かな, がね',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: 'お金',  emphasize: true),
  //           ],
  //           answer: 'かね'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '金',  emphasize: true),
  //           ],
  //           answer: 'きん'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '金曜日',  emphasize: true),
  //           ],
  //           answer: 'きん'),
  //     ]),
  // Kanji(
  //     translation: NA.t('土'),
  //     kanji: '土',
  //     onYomi: 'ド, ト',
  //     kunYomi: 'つち',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '土',  emphasize: true),
  //           ],
  //           answer: 'つち'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '土曜日',  emphasize: true),
  //           ],
  //           answer: 'ど'),
  //     ]),
  // Kanji(
  //     translation: NA.t('曜'),
  //     kanji: '曜',
  //     onYomi: 'ヨウ',
  //     kunYomi: '',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '月曜日',  emphasize: true),
  //           ],
  //           answer: 'よう'),
  //     ]),
  // Kanji(
  //     translation: NA.t('年'),
  //     kanji: '年',
  //     onYomi: 'ネン',
  //     kunYomi: 'とし',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '年',  emphasize: true),
  //           ],
  //           answer: 'とし'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '二千年',  emphasize: true),
  //           ],
  //           answer: 'ねん'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '来年',  emphasize: true),
  //           ],
  //           answer: 'ねん'),
  //     ]),
  // Kanji(
  //     translation: NA.t('上'),
  //     kanji: '上',
  //     onYomi: 'ジョウ, ショウ',
  //     kunYomi: 'うえ, あがる, あげる, のぼる, のぼせる, のぼす',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '上がる',  emphasize: true),
  //           ],
  //           answer: 'あ'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '水上スキー',  emphasize: true),
  //           ],
  //           answer: 'じょう'),
  //     ]),
  // Kanji(
  //     translation: NA.t('下'),
  //     kanji: '下',
  //     onYomi: 'カ, ゲ',
  //     kunYomi: 'した, しも, もと, さがる, さげる, くだる, くだす, くださる',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '下がる',  emphasize: true),
  //           ],
  //           answer: 'さ'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '上下',  emphasize: true),
  //           ],
  //           answer: 'げ'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '下',  emphasize: true),
  //           ],
  //           answer: 'した'),
  //     ]),
  // Kanji(
  //     translation: NA.t('中'),
  //     kanji: '中',
  //     onYomi: 'チュウ',
  //     kunYomi: 'なか',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '一日中',  emphasize: true),
  //           ],
  //           answer: 'じゅう'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '中',  emphasize: true),
  //           ],
  //           answer: 'なか'),
  //     ]),
  // Kanji(
  //     translation: NA.t('外'),
  //     kanji: '外',
  //     onYomi: 'ガイ',
  //     kunYomi: 'そと, ほか, はずす, はずれる',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '外国',  emphasize: true),
  //           ],
  //           answer: 'がい'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '外',  emphasize: true),
  //           ],
  //           answer: 'そと'),
  //     ]),
  // Kanji(
  //     translation: NA.t('前'),
  //     kanji: '前',
  //     onYomi: 'ゼン',
  //     kunYomi: 'まえ',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '前',  emphasize: true),
  //           ],
  //           answer: 'まえ'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '三日前',  emphasize: true),
  //           ],
  //           answer: 'まえ'),
  //     ]),
  // Kanji(
  //     translation: NA.t('後'),
  //     kanji: '後',
  //     onYomi: 'ゴ, コウ',
  //     kunYomi: 'うしろ, あと, のち',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '後',  emphasize: true),
  //           ],
  //           answer: 'あと'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '後ろ',  emphasize: true),
  //           ],
  //           answer: 'うし'),
  //     ]),
  // Kanji(
  //     translation: NA.t('右'),
  //     kanji: '右',
  //     onYomi: 'ウ, ユウ',
  //     kunYomi: 'みぎ',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '右',  emphasize: true),
  //           ],
  //           answer: 'みぎ'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '右手',  emphasize: true),
  //           ],
  //           answer: 'みぎ'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '左右',  emphasize: true),
  //           ],
  //           answer: 'ゆう'),
  //     ]),
  // Kanji(
  //     translation: NA.t('左'),
  //     kanji: '左',
  //     onYomi: 'サ, シャ',
  //     kunYomi: 'ひだり',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '左',  emphasize: true),
  //           ],
  //           answer: 'ひだり'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '左手',  emphasize: true),
  //           ],
  //           answer: 'ひだり'),
  //     ]),
  // Kanji(
  //     translation: NA.t('大'),
  //     kanji: '大',
  //     onYomi: 'ダイ, タイ',
  //     kunYomi: 'おお, おお(きい)',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '大きい',  emphasize: true),
  //           ],
  //           answer: 'おお'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '大学',  emphasize: true),
  //           ],
  //           answer: 'だい'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '大会',  emphasize: true),
  //           ],
  //           answer: 'たい'),
  //     ]),
  // Kanji(
  //     translation: NA.t('小'),
  //     kanji: '小',
  //     onYomi: 'ショウ',
  //     kunYomi: 'ちい(さい), こ, こ, お, さ',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '小さい',  emphasize: true),
  //           ],
  //           answer: 'ちい'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '小川',  emphasize: true),
  //           ],
  //           answer: 'お'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '小犬',  emphasize: true),
  //           ],
  //           answer: 'こ'),
  //     ]),
  // Kanji(
  //     translation: NA.t('長'),
  //     kanji: '長',
  //     onYomi: 'チョウ',
  //     kunYomi: 'なが, なが(い)',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '長い',  emphasize: true),
  //           ],
  //           answer: 'なが'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '学長',  emphasize: true),
  //           ],
  //           answer: 'ちょう'),
  //     ]),
  // Kanji(
  //     translation: NA.t('短'),
  //     kanji: '短',
  //     onYomi: 'タン',
  //     kunYomi: 'みじか, みじか(い)',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '短い',  emphasize: true),
  //           ],
  //           answer: 'みじか'),
  //     ]),
  // Kanji(
  //     translation: NA.t('高'),
  //     kanji: '高',
  //     onYomi: 'コウ',
  //     kunYomi: 'たかい, たか, だか, たか.まる, たか.める',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '高い',  emphasize: true),
  //           ],
  //           answer: 'たか'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '円高',  emphasize: true),
  //           ],
  //           answer: 'だか'),
  //     ]),
  // Kanji(
  //     translation: NA.t('安'),
  //     kanji: '安',
  //     onYomi: 'アン',
  //     kunYomi: 'やすい, やすまる, やす, やす.らか',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '安い',  emphasize: true),
  //           ],
  //           answer: 'やす'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '安全',  emphasize: true),
  //           ],
  //           answer: 'あん'),
  //     ]),
  // Kanji(
  //     translation: NA.t('新'),
  //     kanji: '新',
  //     onYomi: 'しん, さん',
  //     kunYomi: 'アタラシイ',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '新しい',  emphasize: true),
  //           ],
  //           answer: 'あたら'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '新人',  emphasize: true),
  //           ],
  //           answer: 'しん'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '新年',  emphasize: true),
  //           ],
  //           answer: 'しん'),
  //     ]),
  // Kanji(
  //     translation: NA.t('古'),
  //     kanji: '古',
  //     onYomi: 'こ',
  //     kunYomi: 'フルイ',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '古い',  emphasize: true),
  //           ],
  //           answer: 'ふる'),
  //     ]),
  // Kanji(
  //     translation: NA.t('暑'),
  //     kanji: '暑',
  //     onYomi: 'しょ',
  //     kunYomi: 'アツイ',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '暑い',  emphasize: true),
  //           ],
  //           answer: 'あつ'),
  //     ]),
  // Kanji(
  //     translation: NA.t('寒'),
  //     kanji: '寒',
  //     onYomi: 'かん',
  //     kunYomi: 'サムイ',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '寒い',  emphasize: true),
  //           ],
  //           answer: 'さむ'),
  //     ]),
  // Kanji(
  //     translation: NA.t('明'),
  //     kanji: '明',
  //     onYomi: 'メイ, ミョウ',
  //     kunYomi: 'あかり, あかるい, あかるむ, あからむ, あきらか, あける, あく, あくる, あかす',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '明かり',  emphasize: true),
  //           ],
  //           answer: 'あ'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '明き',  emphasize: true),
  //           ],
  //           answer: 'あ'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '明日',  emphasize: true),
  //           ],
  //           answer: 'あした'),
  //     ]),
  // Kanji(
  //     translation: NA.t('暗'),
  //     kanji: '暗',
  //     onYomi: 'アン',
  //     kunYomi: 'くらい',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '暗い',  emphasize: true),
  //           ],
  //           answer: 'くらい'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '暗れる',  emphasize: true),
  //           ],
  //           answer: 'く'),
  //     ]),
  // Kanji(
  //     translation: NA.t('忙'),
  //     kanji: '忙',
  //     onYomi: 'ボウ',
  //     kunYomi: 'いそがしい',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '忙しい',  emphasize: true),
  //           ],
  //           answer: 'いそが'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '大忙し',  emphasize: true),
  //           ],
  //           answer: 'いそが'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '忙しげ',  emphasize: true),
  //           ],
  //           answer: 'せわ'),
  //     ]),
  Kanji(
      translation: NA.t('静'),
      kanji: '静',
      onYomi: 'セイ, ジョウ',
      kunYomi: 'しず, しず(か), しず(まる), しず(める)',
      phraseAnswers: [
        PhraseAnswer(
            // 静かな所が好きです
            translation: NA.t('shizukanatokorogasukidesu'),
            phraseParts: [
              FuriText(text: '静か', emphasize: true),
              FuriText(text: 'な'),
              FuriText(text: '所', furigana: 'ところ'),
              FuriText(text: 'が'),
              FuriText(text: '好', furigana: 'す'),
              FuriText(text: 'きです'),
            ],
            answer: 'しずか'),
        PhraseAnswer(
            // 静電気は危険ですか？
            translation: NA.t('seidenkihakikendesuka'),
            phraseParts: [
              FuriText(text: '静電気', emphasize: true),
              FuriText(text: 'は'),
              FuriText(text: '危険', furigana: 'きけん'),
              FuriText(text: 'ですか？'),
            ],
            answer: 'しず'),
      ]),
  Kanji(
      translation: NA.t('難'),
      kanji: '難',
      onYomi: 'ナン',
      kunYomi: 'むずか(しい), (あり)が(とう)',
      phraseAnswers: [
        PhraseAnswer(
            // 宿題は難しすぎる
            translation: NA.t('shukudaihamuzukashiisugiru'),
            phraseParts: [
              FuriText(text: '宿題', furigana: 'しゅくだい'),
              FuriText(text: 'は'),
              FuriText(text: '難しい', furigana: 'むずかしい', emphasize: true),
              FuriText(text: 'すぎる'),
            ],
            answer: 'むずかしい'),
        PhraseAnswer(
            // この問題は難しいです
            translation: NA.t('kitekuretearigatou'),
            phraseParts: [
              FuriText(text: '来', furigana: 'き'),
              FuriText(text: 'て'),
              FuriText(text: 'くれて'),
              FuriText(text: '有', furigana: 'あ', emphasize: true),
              FuriText(text: 'り', emphasize: true),
              FuriText(text: '難う', furigana: 'が', emphasize: true),
              FuriText(text: 'う', emphasize: true),
            ],
            answer: 'ありがとう'),
      ]),
  Kanji(
      translation: NA.t('簡'),
      kanji: '簡',
      onYomi: 'カン, ケン',
      kunYomi: 'えらぶ',
      phraseAnswers: [
        PhraseAnswer(
            // 簡単なことだよ
            translation: NA.t('kantannakotodayo'),
            phraseParts: [
              FuriText(text: '簡単', furigana: '？？たん', emphasize: true),
              FuriText(text: 'なことだよ')
            ],
            answer: 'かんたん'),
      ]),
  Kanji(
      translation: NA.t('好'),
      kanji: '好',
      onYomi: 'コウ',
      kunYomi: 'このむ, この(む)',
      phraseAnswers: [
        PhraseAnswer(
            // お好み焼き食べたことある？
            translation: NA.t('kokonimiyakitabekotoaru'),
            phraseParts: [
              FuriText(text: 'お好み焼き', emphasize: true),
              FuriText(text: '食', furigana: 'た'),
              FuriText(text: 'べたことある？'),
            ],
            answer: 'おこのみやき'),
        PhraseAnswer(
            // お好み焼き食べたことある？
            translation: NA.t('koredaisuki'),
            phraseParts: [
              FuriText(text: 'これ'),
              FuriText(text: '大好き', furigana: 'だい？？', emphasize: true),
            ],
            answer: 'だいすき'),
        PhraseAnswer(
            // お好み焼き食べたことある？
            translation: NA.t('osushihadaikoubutsudesu'),
            phraseParts: [
              FuriText(text: 'おすしは'),
              FuriText(text: '大好物', furigana: 'だい？？ぶつ', emphasize: true),
              FuriText(text: 'です'),
            ],
            answer: 'だいこうぶつ'),
      ]),
  Kanji(
      translation: NA.t('嫌'),
      kanji: '嫌',
      onYomi: 'ケン',
      kunYomi: 'きら(う), きら(い), いや',
      phraseAnswers: [
        PhraseAnswer(
            // これは嫌い？
            translation: NA.t('korehakira'),
            phraseParts: [
              FuriText(text: 'これは'),
              FuriText(text: '嫌い', emphasize: true),
              FuriText(text: '？'),
            ],
            answer: 'きらい'),
        PhraseAnswer(
            // その人本当に嫌だ
            translation: NA.t('sonohitohontouniiyada'),
            phraseParts: [
              FuriText(text: 'その'),
              FuriText(text: '人', furigana: 'ひと'),
              FuriText(text: '本当', furigana: 'ほんとう'),
              FuriText(text: 'に'),
              FuriText(text: '嫌', emphasize: true),
              FuriText(text: 'だ'),
            ],
            answer: 'いや'),
      ]),
  Kanji(
      translation: NA.t('多'),
      kanji: '多',
      onYomi: 'タ',
      kunYomi: 'おお(い), まさ(に), まさ(る)',
      phraseAnswers: [
        PhraseAnswer(
            // 本当に人が多いい
            translation: NA.t('hontounihitogaooii'),
            phraseParts: [
              FuriText(text: '本当', furigana: 'ほんとう'),
              FuriText(text: 'に'),
              FuriText(text: '人', furigana: 'ひと'),
              FuriText(text: 'が'),
              FuriText(text: '多いい', emphasize: true),
            ],
            answer: 'おおいい'),
        PhraseAnswer(
            // 彼は多分来ない
            translation: NA.t('karehatabunkonai'),
            phraseParts: [
              FuriText(text: '彼', furigana: 'かれ'),
              FuriText(text: 'は'),
              FuriText(text: '多分', emphasize: true),
              FuriText(text: '来', furigana: 'こ'),
              FuriText(text: 'ない'),
            ],
            answer: 'た'),
      ]),
  Kanji(
      translation: NA.t('少'),
      kanji: '少',
      onYomi: 'ショウ',
      kunYomi: 'すく(ない), すこ(し)',
      phraseAnswers: [
        PhraseAnswer(
            // 少しだけちょうだい
            translation: NA.t('sukosidakechoudai'),
            phraseParts: [
              FuriText(text: '少し', emphasize: true),
              FuriText(text: 'だけちょうだい'),
            ],
            answer: 'すこし'),
        PhraseAnswer(
            // 少年マンガがありますか？
            translation: NA.t('shounenmangagaarimasuka'),
            phraseParts: [
              FuriText(text: '少年', furigana: '？？ねん', emphasize: true),
              FuriText(text: 'マンガ', furigana: 'manga'),
              FuriText(text: 'がありますか？')
            ],
            answer: 'しょうねん'),
        PhraseAnswer(
            // あるけど少ないよ
            translation: NA.t('arukedosukunaiyo'),
            phraseParts: [
              FuriText(text: 'あるけど'),
              FuriText(text: '少ない', emphasize: true),
              FuriText(text: 'よ'),
            ],
            answer: '少ない'),
      ]),
  Kanji(
      translation: NA.t('色'),
      kanji: '色',
      onYomi: 'ショク',
      kunYomi: 'いろ',
      phraseAnswers: [
        PhraseAnswer(
            // 一番好きな色はなに？
            translation: NA.t('itibansukinairohanani'),
            phraseParts: [
              FuriText(text: '一番', furigana: 'いちばん'),
              FuriText(text: '好', furigana: 'す'),
              FuriText(text: 'きな'),
              FuriText(text: '色', emphasize: true),
              FuriText(text: 'はなに？'),
            ],
            answer: 'いろ'),
      ]),
  Kanji(
      translation: NA.t('黒'),
      kanji: '黒',
      onYomi: 'コク',
      kunYomi: 'くろ, くろ(い)',
      phraseAnswers: [
        PhraseAnswer(
            // 僕のTシャツは黒い
            translation: NA.t('bokunotshatuhakuroi'),
            phraseParts: [
              FuriText(text: '僕', furigana: 'ぼく'),
              FuriText(text: 'の'),
              FuriText(text: 'Tシャツ', furigana: 'T-shirt'),
              FuriText(text: 'は'),
              FuriText(text: '黒い', emphasize: true),
            ],
            answer: 'くろい'),
        PhraseAnswer(
            // オバマ大統領は黒人です
            translation: NA.t('obamadaitouryouhakokujindesu'),
            phraseParts: [
              FuriText(text: 'オバマ', furigana: 'Obama'),
              FuriText(text: '大統領', furigana: 'だいとうりょう'),
              FuriText(text: 'は'),
              FuriText(text: '黒人', emphasize: true),
              FuriText(text: 'です'),
            ],
            answer: 'こくじん'),
      ]),
  Kanji(
      translation: NA.t('白'),
      kanji: '白',
      onYomi: 'ハク, ビャク',
      kunYomi: 'しろ',
      phraseAnswers: [
        PhraseAnswer(
            // 白い車はどう？
            translation: NA.t('shiroikurumahadou'),
            phraseParts: [
              FuriText(text: '白い', emphasize: true),
              FuriText(text: '車', furigana: 'くるま'),
              FuriText(text: 'はどう？')
            ],
            answer: 'しろい'),
        PhraseAnswer(
            // ノルウェーは白人が多いい
            translation: NA.t('noruweihahakujinngaooii'),
            phraseParts: [
              FuriText(text: 'ノルウェー', furigana: 'Norway'),
              FuriText(text: 'は'),
              FuriText(text: '白人', emphasize: true),
              FuriText(text: 'が'),
              FuriText(text: '多', furigana: 'おお'),
              FuriText(text: 'いい'),
            ],
            answer: 'はくじん'),
      ]),
  Kanji(
      translation: NA.t('赤'),
      kanji: '赤',
      onYomi: 'セキ, シャク',
      kunYomi: 'あか(い)',
      phraseAnswers: [
        PhraseAnswer(
            // 赤い目が赤いよ
            translation: NA.t('megaakaiyo'),
            phraseParts: [
              FuriText(text: '目', furigana: 'め'),
              FuriText(text: 'が'),
              FuriText(text: '赤い', emphasize: true),
              FuriText(text: 'よ'),
            ],
            answer: 'あかい'),
        PhraseAnswer(
            // 赤ちゃんが小さい
            translation: NA.t('akachangachiisai'),
            phraseParts: [
              FuriText(text: '赤ちゃん', emphasize: true),
              FuriText(text: 'が'),
              FuriText(text: '小', furigana: 'ち'),
              FuriText(text: 'さい'),
            ],
            answer: 'あかちゃん'),
        PhraseAnswer(
            // 赤色が好き？
            translation: NA.t('kiirogasuki'),
            phraseParts: [
              FuriText(text: '赤色', furigana: '？？いろ', emphasize: true),
              FuriText(text: 'がすき？'),
            ],
            answer: 'あかいろ'),
      ]),
  Kanji(
      translation: NA.t('青'),
      kanji: '青',
      onYomi: 'セイ, ショウ',
      kunYomi: 'あお, あお, あお(い)',
      phraseAnswers: [
        PhraseAnswer(
            // 海はすごく青いよね？
            translation: NA.t('umihasugokuaoiyone'),
            phraseParts: [
              FuriText(text: '海', furigana: 'うみ'),
              FuriText(text: 'はすごく'),
              FuriText(text: '青い', emphasize: true),
              FuriText(text: 'よね？'),
            ],
            answer: 'あおい'),
        PhraseAnswer(
            // 青春期とは何歳まで?
            translation: NA.t('seinshunkitohanisaimadedesuka'),
            phraseParts: [
              FuriText(text: '青春期', furigana: '？？しゅんき'),
              FuriText(text: 'とは'),
              FuriText(text: '何歳', furigana: 'なんさい'),
              FuriText(text: 'までですか？'),
            ],
            answer: 'せいしゅんき'),
      ]),
  Kanji(
      translation: NA.t('黄'),
      kanji: '黄',
      onYomi: 'コウ',
      kunYomi: 'き, こ',
      phraseAnswers: [
        PhraseAnswer(
            // わたしの歯が黄色い
            translation: NA.t('watashinohagakiiroi'),
            phraseParts: [
              FuriText(text: 'わたしの'),
              FuriText(text: '歯', furigana: 'は'),
              FuriText(text: 'が'),
              FuriText(text: '黄色', furigana: '？いろ', emphasize: true),
              FuriText(text: 'い', emphasize: true)
            ],
            answer: 'きいろい'),
      ]),
  Kanji(
      translation: NA.t('紫'),
      kanji: '紫',
      onYomi: 'シ',
      kunYomi: 'むらさき',
      phraseAnswers: [
        PhraseAnswer(
            // 紫色がかわいい
            translation: NA.t('murasakiirogakawaii'),
            phraseParts: [
              FuriText(text: '紫色', furigana: '？？？？いろ', emphasize: true),
              FuriText(text: 'が'),
              FuriText(text: 'かわいい')
            ],
            answer: 'むらさきいろ'),
      ]),
  Kanji(
      translation: NA.t('茶'),
      kanji: '茶',
      onYomi: 'チャ, サ',
      kunYomi: 'ちゃ',
      phraseAnswers: [
        PhraseAnswer(
            // お茶を毎朝飲みます
            translation: NA.t('ochawomaiasanomimasu'),
            phraseParts: [
              FuriText(text: 'お茶', emphasize: true),
              FuriText(text: 'を'),
              FuriText(text: '毎朝', furigana: 'まいあさ'),
              FuriText(text: '飲', furigana: 'の'),
              FuriText(text: 'みます'),
            ],
            answer: 'おちゃ'),
        PhraseAnswer(
            // 茶色い家がいい
            translation: NA.t('chairoiiegaii'),
            phraseParts: [
              FuriText(text: '茶色', furigana: '？いろ', emphasize: true),
              FuriText(text: 'い', emphasize: true),
              FuriText(text: '家', furigana: 'いえ'),
              FuriText(text: 'がいい'),
            ],
            answer: 'ちゃいろい'),
      ]),
  Kanji(
      translation: NA.t('食'),
      kanji: '食',
      onYomi: 'ショク, ジキ',
      kunYomi: 'く(う), く(らう), た(べる)',
      phraseAnswers: [
        PhraseAnswer(
            // よく食べるね
            translation: NA.t('yokutaberune'),
            phraseParts: [
              FuriText(text: 'よく'),
              FuriText(text: '食べる', emphasize: true),
              FuriText(text: 'ね'),
            ],
            answer: 'た'),
        PhraseAnswer(
            // 食べ物ぜんぜんない
            translation: NA.t('tabemonozenzennai'),
            phraseParts: [
              FuriText(text: '食べ物', emphasize: true),
              FuriText(text: 'ぜんぜんない')
            ],
            answer: 'た'),
        PhraseAnswer(
            // 和食が好き？
            translation: NA.t('washokugasuki'),
            phraseParts: [
              FuriText(text: '和食', furigana: 'わ？？', emphasize: true),
              FuriText(text: 'がすき？')
            ],
            answer: 'わしょく'),
      ]),
  Kanji(
      translation: NA.t('飲'),
      kanji: '飲',
      onYomi: 'イン',
      kunYomi: 'の(む)',
      phraseAnswers: [
        PhraseAnswer(
            // 飲み物を買いました
            translation: NA.t('nomimotokaimashita'),
            phraseParts: [
              FuriText(text: '飲み物', emphasize: true),
              FuriText(text: 'を'),
              FuriText(text: '買', furigana: 'か'),
              FuriText(text: 'いました'),
            ],
            answer: 'のみもの'),
        PhraseAnswer(
            // 飲みに行こう
            translation: NA.t('nominikou'),
            phraseParts: [
              FuriText(text: '飲み', emphasize: true),
              FuriText(text: 'に'),
              FuriText(text: '行', furigana: 'い'),
              FuriText(text: 'こう'),
            ],
            answer: 'の'),
      ]),
  Kanji(
      translation: NA.t('買'),
      kanji: '買',
      onYomi: 'バイ',
      kunYomi: 'かう, かい',
      phraseAnswers: [
        PhraseAnswer(
            // 買い物がすき？
            translation: NA.t('kaimonogasuki'),
            phraseParts: [
              FuriText(text: '買い物', furigana: '？？もの', emphasize: true),
              FuriText(text: 'がすき？')
            ],
            answer: 'かいもの'),
        PhraseAnswer(
            // 近くに販売機がある？
            translation: NA.t('konochikakunihanbaikigaaru'),
            phraseParts: [
              FuriText(text: '近', furigana: 'ちか'),
              FuriText(text: 'くに'),
              FuriText(text: '販売機', furigana: 'はん？？き', emphasize: true),
              FuriText(text: 'がある？')
            ],
            answer: 'はんばいき'),
        PhraseAnswer(
            // 何を買うの？
            translation: NA.t('naniwokauno'),
            phraseParts: [
              FuriText(text: '何', furigana: 'なに'),
              FuriText(text: 'を'),
              FuriText(text: '買う', emphasize: true),
              FuriText(text: 'の？'),
            ],
            answer: 'かう'),
      ]),
  Kanji(
      translation: NA.t('見'),
      kanji: '見',
      onYomi: 'ケン',
      kunYomi: 'み',
      phraseAnswers: [
        PhraseAnswer(
            // 何を見てるの？
            translation: NA.t('sorewomieru'),
            phraseParts: [
              FuriText(text: 'それを'),
              FuriText(text: '見える', emphasize: true),
              FuriText(text: '？'),
            ],
            answer: 'みえる'),
        PhraseAnswer(
            // 花見しよう
            translation: NA.t('hanamishiyou'),
            phraseParts: [
              FuriText(text: '花見', emphasize: true),
              FuriText(text: 'しよう')
            ],
            answer: 'み'),
        PhraseAnswer(
            // わたしの意見
            translation: NA.t('watashinoiken'),
            phraseParts: [
              FuriText(text: 'わたしの'),
              FuriText(text: '意見', furigana: 'い？？', emphasize: true),
            ],
            answer: 'いけん'),
      ]),
  Kanji(
      translation: NA.t('聞'),
      kanji: '聞',
      onYomi: 'ブン, モン',
      kunYomi: 'きく, きこえる',
      phraseAnswers: [
        PhraseAnswer(
            // ちゃんと聞いて
            translation: NA.t('chantokiite'),
            phraseParts: [
              FuriText(text: 'ちゃんと'),
              FuriText(text: '聞いて', emphasize: true),
            ],
            answer: 'きいて'),
        PhraseAnswer(
            // 何かを聞こえた
            translation: NA.t('nanikawokikoeta'),
            phraseParts: [
              FuriText(text: '何', furigana: 'なに'),
              FuriText(text: 'かを'),
              FuriText(text: '聞こえた', emphasize: true),
            ],
            answer: 'きこえた'),
      ]),
  Kanji(
      translation: NA.t('話'),
      kanji: '話',
      onYomi: 'ワ',
      kunYomi: 'はなす, はなし',
      phraseAnswers: [
        PhraseAnswer(
            // どういう話ですか？
            translation: NA.t('douiuhanashidesuka'),
            phraseParts: [
              FuriText(text: 'どういう'),
              FuriText(text: '話', emphasize: true),
              FuriText(text: 'ですか？')
            ],
            answer: 'はなし'),
        PhraseAnswer(
            // 母に電話した
            translation: NA.t('hahanidenwashita'),
            phraseParts: [
              FuriText(text: '母', furigana: 'はは'),
              FuriText(text: 'に'),
              FuriText(text: '電話', furigana: 'でん？', emphasize: true),
              FuriText(text: 'した')
            ],
            answer: 'わだい'),
        PhraseAnswer(
            // 友達と会話したい
            translation: NA.t('tomodathitokaiwashitai'),
            phraseParts: [
              FuriText(text: '友達', furigana: 'ともだち'),
              FuriText(text: 'と'),
              FuriText(text: '会話', furigana: 'かい？', emphasize: true),
              FuriText(text: 'したい')
            ],
            answer: 'かいわ'),
      ]),
  Kanji(
      translation: NA.t('読'),
      kanji: '読',
      onYomi: 'ドク, トク',
      kunYomi: 'よむ',
      phraseAnswers: [
        PhraseAnswer(
            // 毎日新聞を読む
            translation: NA.t('mainichishinbunwoyomu'),
            phraseParts: [
              FuriText(text: '毎日', furigana: 'まいにち'),
              FuriText(text: '新聞', furigana: 'しんぶん'),
              FuriText(text: 'を'),
              FuriText(text: '読む', emphasize: true),
            ],
            answer: 'よむ'),
        PhraseAnswer(
            // この漢字の読み方わからない
            translation: NA.t('konokanjinoyomikatawakaranai'),
            phraseParts: [
              FuriText(text: 'この'),
              FuriText(text: '漢字', furigana: 'かんじ'),
              FuriText(text: 'の'),
              FuriText(text: '読み方', emphasize: true),
              FuriText(text: 'わからない'),
            ],
            answer: 'よみかた'),
        PhraseAnswer(
            //　本の読者
            translation: NA.t('honnodokusha'),
            phraseParts: [
              FuriText(text: '本', furigana: 'ほん'),
              FuriText(text: 'の'),
              FuriText(text: '読者', furigana: '？？しゃ', emphasize: true),
            ],
            answer: 'どくしゃ'),
        PhraseAnswer(
            // JLPTの読解は難しいです
            translation: NA.t('jlptnodokkaihamuzukasiidesu'),
            phraseParts: [
              FuriText(text: 'JLPT'),
              FuriText(text: 'の'),
              FuriText(text: '読解', furigana: '？？かい', emphasize: true),
              FuriText(text: 'は'),
              FuriText(text: '難', furigana: 'む'),
              FuriText(text: 'しいです'),
            ],
            answer: 'どっかい'),
      ]),

  Kanji(
      translation: NA.t('書'),
      kanji: '書',
      onYomi: 'ショ',
      kunYomi: 'かく',
      phraseAnswers: [
        PhraseAnswer(
            // 辞書を使ったよ
            translation: NA.t('jishowotsukattayo'),
            phraseParts: [
              FuriText(text: '辞書', furigana: 'じ？', emphasize: true),
              FuriText(text: 'を'),
              FuriText(text: '使', furigana: 'つ'),
              FuriText(text: 'ったよ'),
            ],
            answer: 'じしょ'),
        PhraseAnswer(
            // どこに書くの？
            translation: NA.t('dokonikakuno'),
            phraseParts: [
              FuriText(text: 'どこに'),
              FuriText(text: '書く', emphasize: true),
              FuriText(text: 'の？'),
            ],
            answer: '書く'),
      ]),
  Kanji(
      translation: NA.t('入'),
      kanji: '入',
      onYomi: 'ニュウ',
      kunYomi: 'いる, いる, いれる, いれ',
      phraseAnswers: [
        PhraseAnswer(
            // これは入口じゃない
            translation: NA.t('korehairiguchijanai'),
            phraseParts: [
              FuriText(text: 'これは'),
              FuriText(text: '入口', furigana: '？？ぐち', emphasize: true),
              FuriText(text: 'じゃない'),
            ],
            answer: 'いりぐち'),
        PhraseAnswer(
            // 名前を入力してください
            translation: NA.t('namaewonyuuryokushitekudasai'),
            phraseParts: [
              FuriText(text: '名前', furigana: 'なまえ'),
              FuriText(text: 'を'),
              FuriText(text: '入力', emphasize: true),
              FuriText(text: 'してください'),
            ],
            answer: 'にゅうりょく'),
        PhraseAnswer(
            //　家の中に入れてくれる？
            translation: NA.t('ienonakaniiretekureru'),
            phraseParts: [
              FuriText(text: '家', furigana: 'いえ'),
              FuriText(text: 'の'),
              FuriText(text: '中', furigana: 'なか'),
              FuriText(text: 'に'),
              FuriText(text: '入れて', emphasize: true),
              FuriText(text: 'くれる？'),
            ],
            answer: 'いれて'),
      ]),
  Kanji(
      translation: NA.t('出'),
      kanji: '出',
      onYomi: 'シュツ',
      kunYomi: 'でる, でる, だす, だす, だれる, だれる',
      phraseAnswers: [
        PhraseAnswer(
            // 玄関から出て
            translation: NA.t('genkankaradete'),
            phraseParts: [
              FuriText(text: '玄関', furigana: 'げんかん'),
              FuriText(text: 'から'),
              FuriText(text: '出て', emphasize: true),
            ],
            answer: 'でて'),
        PhraseAnswer(
            // 本を出しましょう
            translation: NA.t('honnwodashimashou'),
            phraseParts: [
              FuriText(text: '本', furigana: 'ほん'),
              FuriText(text: 'を'),
              FuriText(text: '出しましょう', emphasize: true),
            ],
            answer: 'だしましょう'),
        PhraseAnswer(
            // 今日は出かけるよ!
            translation: NA.t('moudekakeruyo'),
            phraseParts: [
              FuriText(text: 'もう'),
              FuriText(text: '出かける', emphasize: true),
              FuriText(text: 'よ!'),
            ],
            answer: 'でかける'),
      ]),
  Kanji(
      translation: NA.t('立'),
      kanji: '立',
      onYomi: 'リツ, リュウ',
      kunYomi: 'た(つ), たつ',
      phraseAnswers: [
        PhraseAnswer(
            // ここに立ってください
            translation: NA.t('kokonitattekudasai'),
            phraseParts: [
              FuriText(text: 'ここに'),
              FuriText(text: '立って', emphasize: true),
              FuriText(text: 'ください'),
            ],
            answer: 'たって'),
        PhraseAnswer(
            // 国立大学
            translation: NA.t('kokuritsudaigaku'),
            phraseParts: [
              FuriText(text: '国立', furigana: 'こく？？', emphasize: true),
              FuriText(text: '大学', furigana: 'だいがく'),
            ],
            answer: 'こくりつ'),
      ]),
  Kanji(
      translation: NA.t('座'),
      kanji: '座',
      onYomi: 'ザ',
      kunYomi: 'すわ(る)',
      phraseAnswers: [
        PhraseAnswer(
            // ここに座って
            translation: NA.t('kokonisuwatte'),
            phraseParts: [
              FuriText(text: 'ここに'),
              FuriText(text: '座って', emphasize: true),
            ],
            answer: 'すわって'),
        PhraseAnswer(
            // 新幹線の座席
            translation: NA.t('shinkansennozaseki'),
            phraseParts: [
              FuriText(text: '新幹線', furigana: 'しんかんせん'),
              FuriText(text: 'の'),
              FuriText(text: '座席', furigana: 'ざ？？', emphasize: true),
            ],
            answer: 'ざせき'),
        PhraseAnswer(
            // 銀行口座がありません
            translation: NA.t('ginkoukouzagaarimasen'),
            phraseParts: [
              FuriText(text: '銀行', furigana: 'ぎんこう'),
              FuriText(text: '口座', furigana: 'こう？', emphasize: true),
              FuriText(text: 'がありません'),
            ],
            answer: 'こうざ'),
      ]),
  Kanji(
      translation: NA.t('休'),
      kanji: '休',
      onYomi: 'キュウ',
      kunYomi: 'やす(む), やす.まる, やす(める)',
      phraseAnswers: [
        PhraseAnswer(
            // お休みなさい
            translation: NA.t('oyasuminasai'),
            phraseParts: [
              FuriText(text: 'お'),
              FuriText(text: '休み', emphasize: true),
              FuriText(text: 'なさい'),
            ],
            answer: 'やす'),
        PhraseAnswer(
            // ゆっくり休んでね
            translation: NA.t('yukkuriyasunde'),
            phraseParts: [
              FuriText(text: 'ゆっくり'),
              FuriText(text: '休んで', emphasize: true),
              FuriText(text: 'ね')
            ],
            answer: 'やすんで'),
        PhraseAnswer(
            // 今日は休日です
            translation: NA.t('kyouhakyuujitsudesu'),
            phraseParts: [
              FuriText(text: '今日', furigana: 'きょう'),
              FuriText(text: 'は'),
              FuriText(text: '休日', emphasize: true),
              FuriText(text: 'です'),
            ],
            answer: 'きゅうじつ'),
      ]),
  Kanji(
      translation: NA.t('行'),
      kanji: '行',
      onYomi: 'コウ, ギョウ, アン',
      kunYomi: 'い(く), ゆ(く), おこな(う)',
      phraseAnswers: [
        PhraseAnswer(
            // どこに行くの？
            translation: NA.t('dokoniikuno'),
            phraseParts: [
              FuriText(text: 'どこに'),
              FuriText(text: '行く', emphasize: true),
              FuriText(text: 'の？'),
            ],
            answer: 'いく'),
        // PhraseAnswer(
        //     translation: NA.t('okonaukotogadekimasu'),
        //     phraseParts: [
        //       FuriText(text: '行う', emphasize: true),
        //       FuriText(text: 'ことができます'),
        //     ],
        //     answer: 'おこなう'),
        PhraseAnswer(
            // 通行禁止
            translation: NA.t('tsuukoukinshi'),
            phraseParts: [
              FuriText(text: '通行', emphasize: true),
              FuriText(text: '禁止', furigana: 'きんし'),
            ],
            answer: 'つうこう'),
      ]),
  Kanji(
      translation: NA.t('来'),
      kanji: '来',
      onYomi: 'ライ, タイ',
      kunYomi: 'く(る), きた(る), きた(す), き(たす), き(たる), き',
      phraseAnswers: [
        PhraseAnswer(
            // 来月は５月です
            translation: NA.t('raigetsuhagogatsudesu'),
            phraseParts: [
              FuriText(text: '来月', emphasize: true),
              FuriText(text: 'は'),
              FuriText(text: '５月', furigana: 'ごがつ'),
              FuriText(text: 'です'),
            ],
            answer: 'らいげつ'),
        PhraseAnswer(
            // 明日来日します
            translation: NA.t('ashitarainichishimasu'),
            phraseParts: [
              FuriText(text: '明日', furigana: 'あした'),
              FuriText(text: '来日', emphasize: true),
              FuriText(text: 'します'),
            ],
            answer: 'らいにち'),
        PhraseAnswer(
            // 早く来てね
            translation: NA.t('hayakukitene'),
            phraseParts: [
              FuriText(text: '早', furigana: 'はや'),
              FuriText(text: 'く'),
              FuriText(text: '来て', emphasize: true),
              FuriText(text: 'ね'),
            ],
            answer: 'きて'),
      ]),
  Kanji(
      translation: NA.t('帰'),
      kanji: '帰',
      onYomi: 'キ',
      kunYomi: 'かえ, がえ',
      phraseAnswers: [
        PhraseAnswer(
            // お帰りなさい
            translation: NA.t('okaerinasai'),
            phraseParts: [
              FuriText(text: 'お帰り', emphasize: true),
              FuriText(text: 'なさい'),
            ],
            answer: 'おかえり'),
        PhraseAnswer(
            // おねえさんは帰国しました
            translation: NA.t('oneesanhakikokushimashita'),
            phraseParts: [
              FuriText(text: 'おねえさんは'),
              FuriText(text: '帰国', emphasize: true),
              FuriText(text: 'しました'),
            ],
            answer: 'きこく'),
        PhraseAnswer(
            // ただの日帰り旅行だったよ
            translation: NA.t('tadanohigaeriryokoudattayo'),
            phraseParts: [
              FuriText(text: 'ただの'),
              FuriText(text: '日帰り', emphasize: true),
              FuriText(text: '旅行', furigana: 'りょこう'),
              FuriText(text: 'だったよ'),
            ],
            answer: 'ひがえり'),
      ]),
  Kanji(
      translation: NA.t('開'),
      kanji: '開',
      onYomi: 'カイ',
      kunYomi: 'あ(く), あ(ける), ひら(く), ひら(ける), さか(る), さか(ん)',
      phraseAnswers: [
        PhraseAnswer(
            // 目を開けて
            phraseParts: [
              FuriText(text: '目', furigana: 'め'),
              FuriText(text: 'を'),
              FuriText(text: '開けて', emphasize: true),
            ],
            answer: 'あけて',
            translation: NA.t('mewoakete')),
        PhraseAnswer(
            // 何時に開く？
            translation: NA.t('nanjiniaku'),
            phraseParts: [
              FuriText(text: '何時', furigana: 'なんじ'),
              FuriText(text: 'に'),
              FuriText(text: '開く', emphasize: true),
              FuriText(text: '？'),
            ],
            answer: 'あく'),
        PhraseAnswer(
            // メニューを開いて
            translation: NA.t('menuwohiraite'),
            phraseParts: [
              FuriText(text: 'メニューを'),
              FuriText(text: '開いて', emphasize: true),
            ],
            answer: 'ひらいて'),
      ]),
  Kanji(
      translation: NA.t('閉'),
      kanji: '閉',
      onYomi: 'ヘイ',
      kunYomi: 'と(じる), と(ざす), し(める), し(まる)',
      phraseAnswers: [
        PhraseAnswer(
            // お店が閉まる
            translation: NA.t('omisegashimaru'),
            phraseParts: [
              FuriText(text: 'お'),
              FuriText(text: '店', furigana: 'みせ'),
              FuriText(text: 'が', furigana: ''),
              FuriText(text: '閉まる', emphasize: true),
            ],
            answer: 'しまる'),
        PhraseAnswer(
            // 目を閉じて
            translation: NA.t('mewotojiru'),
            phraseParts: [
              FuriText(text: '目', furigana: 'め'),
              FuriText(text: 'を'),
              FuriText(text: '閉じて', emphasize: true),
            ],
            answer: 'とじて'),
        PhraseAnswer(
            // お店が閉店しました
            translation: NA.t('omisegahaitenshimashita'),
            phraseParts: [
              FuriText(text: 'お'),
              FuriText(text: '店', furigana: 'みせ'),
              FuriText(text: 'が'),
              FuriText(text: '閉店', furigana: '？？てん', emphasize: true),
              FuriText(text: 'しました'),
            ],
            answer: 'へいてん'),
      ]),
  Kanji(
      translation: NA.t('山'),
      kanji: '山',
      onYomi: 'サン',
      kunYomi: 'やま',
      phraseAnswers: [
        PhraseAnswer(
            // その山が大きいです
            translation: NA.t('sonoyamagaookiidesu'),
            phraseParts: [
              FuriText(text: 'その'),
              FuriText(text: '山', emphasize: true),
              FuriText(text: 'が'),
              FuriText(text: '大', furigana: 'おお'),
              FuriText(text: 'きいです')
            ],
            answer: 'やま'),
        PhraseAnswer(
            // 山田さんは近い？
            translation: NA.t('fujisanhachikai'),
            phraseParts: [
              FuriText(text: '富士山', furigana: 'ふじ？？', emphasize: true),
              FuriText(text: 'は'),
              FuriText(text: '近', furigana: 'ち'),
              FuriText(text: 'い？')
            ],
            answer: 'ふじさん'),
      ]),
  Kanji(
      translation: NA.t('今'),
      kanji: '今',
      onYomi: 'コン',
      kunYomi: 'いま, きょう',
      phraseAnswers: [
        PhraseAnswer(
            // 今日はさむいね
            translation: NA.t('kongetsuhasamuine'),
            phraseParts: [
              FuriText(text: '今月', furigana: '？？げつ', emphasize: true),
              FuriText(text: 'は'),
              FuriText(text: 'さむいね')
            ],
            answer: 'こんげつ'),
        PhraseAnswer(
            // 今何時ですか？
            translation: NA.t('imahananjidesuka'),
            phraseParts: [
              FuriText(text: '今', emphasize: true),
              FuriText(text: '何時', furigana: 'なんじ'),
              FuriText(text: 'ですか？')
            ],
            answer: 'いま'),
        PhraseAnswer(
            // 今日は月曜日だよ
            translation: NA.t('kyouhagetsuyoubidayo'),
            phraseParts: [
              FuriText(text: '今日', emphasize: true),
              FuriText(text: 'は'),
              FuriText(text: '月曜日', furigana: 'げつようび'),
              FuriText(text: 'だよ'),
            ],
            answer: 'きょう'),
      ]),
  Kanji(
      translation: NA.t('川'),
      kanji: '川',
      onYomi: 'セン',
      kunYomi: 'かわ、がわ',
      phraseAnswers: [
        PhraseAnswer(
            // 川に行きましょう
            translation: NA.t('kawaniikimashou'),
            phraseParts: [
              FuriText(text: '川', emphasize: true),
              FuriText(text: 'に'),
              FuriText(text: '行', furigana: 'い'),
              FuriText(text: 'きましょう'),
            ],
            answer: 'かわ'),
        PhraseAnswer(
            // 山川さん
            translation: NA.t('yamawakasan'),
            phraseParts: [
              FuriText(text: '山川', emphasize: true),
              FuriText(text: 'さん'),
            ],
            answer: 'やまかわ'),
        PhraseAnswer(
            // 品川駅にいるよ
            translation: NA.t('shinagawaekiniiruyo'),
            phraseParts: [
              FuriText(text: '品川', furigana: 'しな？？', emphasize: true),
              FuriText(text: '駅', furigana: 'えき'),
              FuriText(text: 'にいるよ'),
            ],
            answer: 'しながわ'),
      ]),
  Kanji(
      translation: NA.t('田'),
      kanji: '田',
      onYomi: 'デン', // No useful words found
      kunYomi: 'た、いなか',
      phraseAnswers: [
        PhraseAnswer(
            // 山田さん
            translation: NA.t('yamadasan'),
            phraseParts: [
              FuriText(text: '山田', emphasize: true),
              FuriText(text: 'さん'),
            ],
            answer: 'やまだ'),
        PhraseAnswer(
            // 田舎に住んでいる
            translation: NA.t('inakanisunderu'),
            phraseParts: [
              FuriText(
                  text: '田舎',
                  emphasize:
                      true), // This uses a non-N5 kanji but there's no way around this
              FuriText(text: 'に'),
              FuriText(text: '住', furigana: 'す'),
              FuriText(text: 'んでいる'),
            ],
            answer: 'いなか'),
        PhraseAnswer(
            // 成田空港
            translation: NA.t('naritakuukou'),
            phraseParts: [
              FuriText(text: '成田', furigana: 'なり？', emphasize: true),
              FuriText(text: '空港', furigana: 'くうこう'),
            ],
            answer: 'なりた'),
      ]),
  Kanji(
    translation: NA.t('分'),
    kanji: '分',
    onYomi: 'フン, ブン, プン',
    kunYomi: 'わける, わかる',
    phraseAnswers: [
      PhraseAnswer(
          // 真ん中から分ける
          translation: NA.t('mannakakarawakeru'),
          phraseParts: [
            FuriText(text: '真ん中', furigana: 'まんなか'),
            FuriText(text: 'から'),
            FuriText(text: '分ける', emphasize: true)
          ],
          answer: 'わける'),
      PhraseAnswer(
          // あと十分待ってね
          translation: NA.t('atojuppunmattene'),
          phraseParts: [
            FuriText(text: 'あと'),
            FuriText(text: '十分', emphasize: true),
            FuriText(text: 'まってね'),
          ],
          answer: 'じゅうぷん'),
      PhraseAnswer(
          // 日本語が分かる
          translation: NA.t('nihonngogawakaru'),
          phraseParts: [
            FuriText(text: '日本語', furigana: 'にほんご'),
            FuriText(text: 'が'),
            FuriText(text: '分かる', emphasize: true),
          ],
          answer: 'わかる'),
    ],
  ),
];

class Kanji {
  final String kanji;
  final String onYomi;
  final String kunYomi;
  final String translation;
  List<PhraseAnswer> phraseAnswers;

  Kanji({
    required this.translation,
    required this.kanji,
    required this.onYomi,
    required this.kunYomi,
    required this.phraseAnswers,
  });
}

class PhraseAnswer {
  final List<FuriText> phraseParts;
  final String answer;
  final String translation;

  PhraseAnswer({
    required this.phraseParts,
    required this.answer,
    required this.translation,
  });
}
