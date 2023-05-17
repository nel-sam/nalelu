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
  //             FuriText(text: '一人ぼっちとうきょう', furigana: '', emphasize: true),
  //           ],
  //           answer: 'ひとり'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: 'わたしは一ばんかっこいい', furigana: '', emphasize: true),
  //           ],
  //           answer: 'いち'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: 'ビイルを一つください', furigana: '', emphasize: true)
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
  //             FuriText(text: '二プラス二', furigana: '', emphasize: true),
  //           ],
  //           answer: 'に'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: 'リンゴを二つ食べる', furigana: '', emphasize: true),
  //           ],
  //           answer: 'ふた'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: 'わたしわ三十二さいです', furigana: '', emphasize: true),
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
  //             FuriText(text: '三月は寒いです', furigana: '', emphasize: true),
  //           ],
  //           answer: 'さん'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '三つのビデオゲームがあります', furigana: '', emphasize: true),
  //           ],
  //           answer: 'みっ'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: 'オレンジを三つもっています', furigana: '', emphasize: true),
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
  //             FuriText(text: '四月は暑いです', furigana: '', emphasize: true),
  //           ],
  //           answer: 'し'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: 'クリスマスまであと四日', furigana: '', emphasize: true),
  //           ],
  //           answer: 'よっ'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: 'メッシは四ゴールをきめた', furigana: '', emphasize: true),
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
  //             FuriText(text: 'ほしが五つあります', furigana: '', emphasize: true),
  //           ],
  //           answer: 'いつ'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '五月は好きな月です', furigana: '', emphasize: true),
  //           ],
  //           answer: 'ご'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '五百円かせいだ', furigana: '', emphasize: true),
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
  //             FuriText(text: '六つ', furigana: '', emphasize: true),
  //           ],
  //           answer: 'むっ'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '六月', furigana: '', emphasize: true),
  //           ],
  //           answer: 'ろく'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '六日', furigana: '', emphasize: true),
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
  //             FuriText(text: '七つ', furigana: '', emphasize: true),
  //           ],
  //           answer: 'なな'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '七月', furigana: '', emphasize: true),
  //           ],
  //           answer: 'しち'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '七日', furigana: '', emphasize: true),
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
  //             FuriText(text: '八つ', furigana: '', emphasize: true),
  //           ],
  //           answer: 'やっ'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '八月', furigana: '', emphasize: true),
  //           ],
  //           answer: 'はち'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '八日', furigana: '', emphasize: true),
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
  //             FuriText(text: '九つ', furigana: '', emphasize: true),
  //           ],
  //           answer: 'ここの'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '九月', furigana: '', emphasize: true),
  //           ],
  //           answer: 'く'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '九日', furigana: '', emphasize: true),
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
  //             FuriText(text: '十月', furigana: '', emphasize: true),
  //           ],
  //           answer: 'じゅう'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '十日', furigana: '', emphasize: true),
  //           ],
  //           answer: 'とお'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '十分な', furigana: '', emphasize: true),
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
  //             FuriText(text: '百', furigana: '', emphasize: true),
  //           ],
  //           answer: 'ひゃく'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '三百', furigana: '', emphasize: true),
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
  //             FuriText(text: '千', furigana: '', emphasize: true),
  //           ],
  //           answer: 'せん'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '三千', furigana: '', emphasize: true),
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
  //             FuriText(text: '一万', furigana: '', emphasize: true),
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
  //             FuriText(text: '円', furigana: '', emphasize: true),
  //           ],
  //           answer: 'えん'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '四万円', furigana: '', emphasize: true),
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
  //             FuriText(text: '日本', furigana: '', emphasize: true),
  //           ],
  //           answer: 'に'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '日', furigana: '', emphasize: true),
  //           ],
  //           answer: 'ひ'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '休日', furigana: '', emphasize: true),
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
  //             FuriText(text: '月曜日', furigana: '', emphasize: true),
  //           ],
  //           answer: 'げつ'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '一月', furigana: '', emphasize: true),
  //           ],
  //           answer: 'がつ'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '今月', furigana: '', emphasize: true),
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
  //             FuriText(text: '火曜日', furigana: '', emphasize: true),
  //           ],
  //           answer: 'か'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '火山', furigana: '', emphasize: true),
  //           ],
  //           answer: 'か'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '火', furigana: '', emphasize: true),
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
  //             FuriText(text: '水曜日', furigana: '', emphasize: true),
  //           ],
  //           answer: 'すい'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '水', furigana: '', emphasize: true),
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
  //             FuriText(text: '木', furigana: '', emphasize: true),
  //           ],
  //           answer: 'き'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '木曜日', furigana: '', emphasize: true),
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
  //             FuriText(text: 'お金', furigana: '', emphasize: true),
  //           ],
  //           answer: 'かね'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '金', furigana: '', emphasize: true),
  //           ],
  //           answer: 'きん'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '金曜日', furigana: '', emphasize: true),
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
  //             FuriText(text: '土', furigana: '', emphasize: true),
  //           ],
  //           answer: 'つち'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '土曜日', furigana: '', emphasize: true),
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
  //             FuriText(text: '月曜日', furigana: '', emphasize: true),
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
  //             FuriText(text: '年', furigana: '', emphasize: true),
  //           ],
  //           answer: 'とし'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '二千年', furigana: '', emphasize: true),
  //           ],
  //           answer: 'ねん'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '来年', furigana: '', emphasize: true),
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
  //             FuriText(text: '上がる', furigana: '', emphasize: true),
  //           ],
  //           answer: 'あ'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '水上スキー', furigana: '', emphasize: true),
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
  //             FuriText(text: '下がる', furigana: '', emphasize: true),
  //           ],
  //           answer: 'さ'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '上下', furigana: '', emphasize: true),
  //           ],
  //           answer: 'げ'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '下', furigana: '', emphasize: true),
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
  //             FuriText(text: '一日中', furigana: '', emphasize: true),
  //           ],
  //           answer: 'じゅう'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '中', furigana: '', emphasize: true),
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
  //             FuriText(text: '外国', furigana: '', emphasize: true),
  //           ],
  //           answer: 'がい'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '外', furigana: '', emphasize: true),
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
  //             FuriText(text: '前', furigana: '', emphasize: true),
  //           ],
  //           answer: 'まえ'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '三日前', furigana: '', emphasize: true),
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
  //             FuriText(text: '後', furigana: '', emphasize: true),
  //           ],
  //           answer: 'あと'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '後ろ', furigana: '', emphasize: true),
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
  //             FuriText(text: '右', furigana: '', emphasize: true),
  //           ],
  //           answer: 'みぎ'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '右手', furigana: '', emphasize: true),
  //           ],
  //           answer: 'みぎ'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '左右', furigana: '', emphasize: true),
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
  //             FuriText(text: '左', furigana: '', emphasize: true),
  //           ],
  //           answer: 'ひだり'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '左手', furigana: '', emphasize: true),
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
  //             FuriText(text: '大きい', furigana: '', emphasize: true),
  //           ],
  //           answer: 'おお'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '大学', furigana: '', emphasize: true),
  //           ],
  //           answer: 'だい'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '大会', furigana: '', emphasize: true),
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
  //             FuriText(text: '小さい', furigana: '', emphasize: true),
  //           ],
  //           answer: 'ちい'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '小川', furigana: '', emphasize: true),
  //           ],
  //           answer: 'お'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '小犬', furigana: '', emphasize: true),
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
  //             FuriText(text: '長い', furigana: '', emphasize: true),
  //           ],
  //           answer: 'なが'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '学長', furigana: '', emphasize: true),
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
  //             FuriText(text: '短い', furigana: '', emphasize: true),
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
  //             FuriText(text: '高い', furigana: '', emphasize: true),
  //           ],
  //           answer: 'たか'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '円高', furigana: '', emphasize: true),
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
  //             FuriText(text: '安い', furigana: '', emphasize: true),
  //           ],
  //           answer: 'やす'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '安全', furigana: '', emphasize: true),
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
  //             FuriText(text: '新しい', furigana: '', emphasize: true),
  //           ],
  //           answer: 'あたら'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '新人', furigana: '', emphasize: true),
  //           ],
  //           answer: 'しん'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '新年', furigana: '', emphasize: true),
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
  //             FuriText(text: '古い', furigana: '', emphasize: true),
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
  //             FuriText(text: '暑い', furigana: '', emphasize: true),
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
  //             FuriText(text: '寒い', furigana: '', emphasize: true),
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
  //             FuriText(text: '明かり', furigana: '', emphasize: true),
  //           ],
  //           answer: 'あ'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '明き', furigana: '', emphasize: true),
  //           ],
  //           answer: 'あ'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '明日', furigana: '', emphasize: true),
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
  //             FuriText(text: '暗い', furigana: '', emphasize: true),
  //           ],
  //           answer: 'くらい'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '暗れる', furigana: '', emphasize: true),
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
  //             FuriText(text: '忙しい', furigana: '', emphasize: true),
  //           ],
  //           answer: 'いそが'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '大忙し', furigana: '', emphasize: true),
  //           ],
  //           answer: 'いそが'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '忙しげ', furigana: '', emphasize: true),
  //           ],
  //           answer: 'せわ'),
  //     ]),
  // Kanji(
  //     translation: NA.t('静'),
  //     kanji: '静',
  //     onYomi: 'セイ, ジョウ',
  //     kunYomi: 'しず, しず(か), しず(まる), しず(める)',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '静か', furigana: '', emphasize: true),
  //           ],
  //           answer: 'しず'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '静まる', furigana: '', emphasize: true),
  //           ],
  //           answer: 'しず'),
  //     ]),
  // Kanji(
  //     translation: NA.t('難'),
  //     kanji: '難',
  //     onYomi: 'ナン',
  //     kunYomi: 'かたい, がたい',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '難しい', furigana: '', emphasize: true),
  //           ],
  //           answer: 'むずか'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '難', furigana: '', emphasize: true),
  //           ],
  //           answer: 'なん'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '難い', furigana: '', emphasize: true),
  //           ],
  //           answer: 'にく'),
  //     ]),
  // Kanji(
  //     translation: NA.t('簡'),
  //     kanji: '簡',
  //     onYomi: 'カン',
  //     kunYomi: 'えらぶ, かんたん',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '簡明', furigana: '', emphasize: true),
  //           ],
  //           answer: 'かん'),
  //     ]),
  // Kanji(
  //     translation: NA.t('好'),
  //     kanji: '好',
  //     onYomi: 'コウ',
  //     kunYomi: 'このむ, この(む)',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '好い', furigana: '', emphasize: true),
  //           ],
  //           answer: 'よ'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '大好き', furigana: '', emphasize: true),
  //           ],
  //           answer: 'す'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '好む', furigana: '', emphasize: true),
  //           ],
  //           answer: 'この'),
  //     ]),
  // Kanji(
  //     translation: NA.t('嫌'),
  //     kanji: '嫌',
  //     onYomi: 'ケン',
  //     kunYomi: 'きらう, ぎら(い)',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '嫌い', furigana: '', emphasize: true),
  //           ],
  //           answer: 'きら'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '嫌う', furigana: '', emphasize: true),
  //           ],
  //           answer: 'きら'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '嫌', furigana: '', emphasize: true),
  //           ],
  //           answer: 'いや'),
  //     ]),
  // Kanji(
  //     translation: NA.t('多'),
  //     kanji: '多',
  //     onYomi: 'タ',
  //     kunYomi: 'おお(い), まさ(に), まさ(る)',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '多分', furigana: '', emphasize: true),
  //           ],
  //           answer: 'た'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '多大', furigana: '', emphasize: true),
  //           ],
  //           answer: 'た'),
  //     ]),
  // Kanji(
  //     translation: NA.t('少'),
  //     kanji: '少',
  //     onYomi: 'ショウ',
  //     kunYomi: 'すく.ない, すこ(し)',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '少し', furigana: '', emphasize: true),
  //           ],
  //           answer: 'すこ'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '少年', furigana: '', emphasize: true),
  //           ],
  //           answer: 'しょう'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '少女', furigana: '', emphasize: true),
  //           ],
  //           answer: 'しょう'),
  //     ]),
  // Kanji(
  //     translation: NA.t('色'),
  //     kanji: '色',
  //     onYomi: 'ショク',
  //     kunYomi: 'いろ',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '色', furigana: '', emphasize: true),
  //           ],
  //           answer: 'いろ'),
  //     ]),
  // Kanji(
  //     translation: NA.t('黒'),
  //     kanji: '黒',
  //     onYomi: 'コク',
  //     kunYomi: 'くろ, くろ(い)',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '黒い', furigana: '', emphasize: true),
  //           ],
  //           answer: 'くろ'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '黒色', furigana: '', emphasize: true),
  //           ],
  //           answer: 'くろ'),
  //     ]),
  // Kanji(
  //     translation: NA.t('白'),
  //     kanji: '白',
  //     onYomi: 'ハク, ビャク',
  //     kunYomi: 'しろ',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '明白', furigana: '', emphasize: true),
  //           ],
  //           answer: 'はく'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '白い', furigana: '', emphasize: true),
  //           ],
  //           answer: 'しろ'),
  //     ]),
  // Kanji(
  //     translation: NA.t('赤'),
  //     kanji: '赤',
  //     onYomi: 'セキ, シャク',
  //     kunYomi: 'あか, あか.い, あか.らむ, あか(らめる)',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '赤い', furigana: '', emphasize: true),
  //           ],
  //           answer: 'あか'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '赤ちゃん', furigana: '', emphasize: true),
  //           ],
  //           answer: 'あか'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '赤色', furigana: '', emphasize: true),
  //           ],
  //           answer: 'あか'),
  //     ]),
  // Kanji(
  //     translation: NA.t('青'),
  //     kanji: '青',
  //     onYomi: 'セイ, ショウ',
  //     kunYomi: 'あお, あお, あお(い)',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '青い', furigana: '', emphasize: true),
  //           ],
  //           answer: '青'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '青色', furigana: '', emphasize: true),
  //           ],
  //           answer: 'あお'),
  //     ]),
  // Kanji(
  //     translation: NA.t('黄'),
  //     kanji: '黄',
  //     onYomi: 'コウ',
  //     kunYomi: 'き, こ',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '黄金', furigana: '', emphasize: true),
  //           ],
  //           answer: 'おう'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '着色', furigana: '', emphasize: true),
  //           ],
  //           answer: 'き'),
  //     ]),
  // Kanji(
  //     translation: NA.t('紫'),
  //     kanji: '紫',
  //     onYomi: 'シ',
  //     kunYomi: 'むらさき',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '紫色', furigana: '', emphasize: true),
  //           ],
  //           answer: 'むらさき'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '大紫', furigana: '', emphasize: true),
  //           ],
  //           answer: 'むらさき'),
  //     ]),
  // Kanji(
  //     translation: NA.t('茶'),
  //     kanji: '茶',
  //     onYomi: 'チャ, サ',
  //     kunYomi: 'ちゃ',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: 'お茶', furigana: '', emphasize: true),
  //           ],
  //           answer: 'ちゃ'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '茶色', furigana: '', emphasize: true),
  //           ],
  //           answer: 'ちゃ'),
  //     ]),
  // Kanji(
  //     translation: NA.t('食'),
  //     kanji: '食',
  //     onYomi: 'ショク, ジキ',
  //     kunYomi: 'く(う), く(らう), た(べる)',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '食べる', furigana: '', emphasize: true),
  //           ],
  //           answer: 'た'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '食べ物', furigana: '', emphasize: true),
  //           ],
  //           answer: 'た'),
  //     ]),
  // Kanji(
  //     translation: NA.t('飲'),
  //     kanji: '飲',
  //     onYomi: 'イン',
  //     kunYomi: 'の(む)',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '飲み物', furigana: '', emphasize: true),
  //           ],
  //           answer: 'の'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '飲み', furigana: '', emphasize: true),
  //           ],
  //           answer: 'の'),
  //     ]),
  // Kanji(
  //     translation: NA.t('買'),
  //     kanji: '買',
  //     onYomi: 'バイ',
  //     kunYomi: 'かう',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '買い物', furigana: '', emphasize: true),
  //           ],
  //           answer: 'か'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '買い手', furigana: '', emphasize: true),
  //           ],
  //           answer: 'か'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '買う', furigana: '', emphasize: true),
  //           ],
  //           answer: 'か'),
  //     ]),
  // Kanji(
  //     translation: NA.t('見'),
  //     kanji: '見',
  //     onYomi: 'ケン',
  //     kunYomi: 'みる, みえる, みせる',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '見える', furigana: '', emphasize: true),
  //           ],
  //           answer: 'み'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '見る', furigana: '', emphasize: true),
  //           ],
  //           answer: 'み'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '一見', furigana: '', emphasize: true),
  //           ],
  //           answer: 'けん'),
  //     ]),
  // Kanji(
  //     translation: NA.t('聞'),
  //     kanji: '聞',
  //     onYomi: 'ブン, モン',
  //     kunYomi: 'きく, きこえる',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '聞く', furigana: '', emphasize: true),
  //           ],
  //           answer: 'き'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '聞こえる', furigana: '', emphasize: true),
  //           ],
  //           answer: 'き'),
  //     ]),
  // Kanji(
  //     translation: NA.t('話'),
  //     kanji: '話',
  //     onYomi: 'ワ',
  //     kunYomi: 'はなす, はなし',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '話す', furigana: '', emphasize: true),
  //           ],
  //           answer: 'はな'),
  //     ]),
  // Kanji(
  //     translation: NA.t('読'),
  //     kanji: '読',
  //     onYomi: 'ドク, トク',
  //     kunYomi: 'よむ',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '読み', furigana: '', emphasize: true),
  //           ],
  //           answer: 'よ'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '読む', furigana: '', emphasize: true),
  //           ],
  //           answer: 'よ'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '読み方', furigana: '', emphasize: true),
  //           ],
  //           answer: 'よ'),
  //     ]),
  // Kanji(
  //     translation: NA.t('書'),
  //     kanji: '書',
  //     onYomi: 'ショ',
  //     kunYomi: 'かく',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '書', furigana: '', emphasize: true),
  //           ],
  //           answer: 'ふみ'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '文書', furigana: '', emphasize: true),
  //           ],
  //           answer: 'しょ'),
  //     ]),
  // Kanji(
  //     translation: NA.t('入'),
  //     kanji: '入',
  //     onYomi: 'ニュウ',
  //     kunYomi: 'いる, いる, いれる, いれ',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '入', furigana: '', emphasize: true),
  //           ],
  //           answer: 'いり'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '入力', furigana: '', emphasize: true),
  //           ],
  //           answer: 'にゅう'),
  //     ]),
  // Kanji(
  //     translation: NA.t('出'),
  //     kanji: '出',
  //     onYomi: 'シュツ',
  //     kunYomi: 'でる, でる, だす, だす, だれる, だれる',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '出る', furigana: '', emphasize: true),
  //           ],
  //           answer: 'で'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '出し', furigana: '', emphasize: true),
  //           ],
  //           answer: 'だ'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '出かける', furigana: '', emphasize: true),
  //           ],
  //           answer: 'で'),
  //     ]),
  // Kanji(
  //     translation: NA.t('立'),
  //     kanji: '立',
  //     onYomi: 'リツ, リュウ',
  //     kunYomi: 'た(つ), た(ち), た(てる), たて, たてあ(げる), たつ',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '立ち', furigana: '', emphasize: true),
  //           ],
  //           answer: 'た'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '立つ', furigana: '', emphasize: true),
  //           ],
  //           answer: 'た'),
  //     ]),
  // Kanji(
  //     translation: NA.t('座'),
  //     kanji: '座',
  //     onYomi: 'ザ',
  //     kunYomi: 'すわ(る)',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '座る', furigana: '', emphasize: true),
  //           ],
  //           answer: 'すわ'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '一座', furigana: '', emphasize: true),
  //           ],
  //           answer: 'ざ'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '口座', furigana: '', emphasize: true),
  //           ],
  //           answer: 'ざ'),
  //     ]),
  // Kanji(
  //     translation: NA.t('休'),
  //     kanji: '休',
  //     onYomi: 'キュウ',
  //     kunYomi: 'やす(む), やす.まる, やす(める)',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '休み', furigana: '', emphasize: true),
  //           ],
  //           answer: 'やす'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '休む', furigana: '', emphasize: true),
  //           ],
  //           answer: 'やす'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '休日', furigana: '', emphasize: true),
  //           ],
  //           answer: 'きゅう'),
  //     ]),
  // Kanji(
  //     translation: NA.t('行'),
  //     kanji: '行',
  //     onYomi: 'コウ, ギョウ, アン',
  //     kunYomi: 'い(く), ゆ(く), おこな(う)',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '行き', furigana: '', emphasize: true),
  //           ],
  //           answer: 'い'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '行方', furigana: '', emphasize: true),
  //           ],
  //           answer: 'ゆく'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '行う', furigana: '', emphasize: true),
  //           ],
  //           answer: 'おこな'),
  //     ]),
  // Kanji(
  //     translation: NA.t('来'),
  //     kanji: '来',
  //     onYomi: 'ライ, タイ',
  //     kunYomi: 'く(る), きた(る), きた(す), き(たす), き(たる), き',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '来月', furigana: '', emphasize: true),
  //           ],
  //           answer: 'らい'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '来日', furigana: '', emphasize: true),
  //           ],
  //           answer: 'らい'),
  //     ]),
  // Kanji(
  //     translation: NA.t('帰'),
  //     kanji: '帰',
  //     onYomi: 'キ',
  //     kunYomi: 'かえ(る), かえ(す)',
  //     phraseAnswers: [
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '帰り', furigana: '', emphasize: true),
  //           ],
  //           answer: 'かえ'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '帰国', furigana: '', emphasize: true),
  //           ],
  //           answer: 'き'),
  //       PhraseAnswer(
  //           translation: NA.t(''),
  //           phraseParts: [
  //             FuriText(text: '日帰り', furigana: '', emphasize: true),
  //           ],
  //           answer: 'がえ'),
  //     ]),
  Kanji(
      translation: NA.t('開'),
      kanji: '開',
      onYomi: 'カイ',
      kunYomi: 'あ(く), あ(ける), ひら(く), ひら(ける), さか(る), さか(ん)',
      phraseAnswers: [
        PhraseAnswer(phraseParts: [
          FuriText(text: '目', furigana: 'め'),
          FuriText(text: 'を'),
          FuriText(text: '開けて', furigana: '', emphasize: true),
        ], answer: 'あけて', translation: NA.t('mewoakete')),
        // TODO: Finish this
        // PhraseAnswer(
        //     translation: NA.t(''),
        //     phraseParts: [
        //       FuriText(text: '開く', furigana: '', emphasize: true),
        //     ],
        //     answer: 'あく'),
        // PhraseAnswer(
        //     translation: NA.t(''),
        //     phraseParts: [
        //       FuriText(text: '開く', furigana: '', emphasize: true),
        //     ],
        //     answer: 'ひらく'),
      ]),
  Kanji(
      translation: NA.t('閉'),
      kanji: '閉',
      onYomi: 'ヘイ',
      kunYomi: 'と(じる), と(ざす), し(める), し(まる)',
      phraseAnswers: [
        PhraseAnswer(
            translation: NA.t('omisegashimaru'),
            phraseParts: [
              FuriText(text: 'お'),
              FuriText(text: '店', furigana: 'みせ'),
              FuriText(text: 'が', furigana: ''),
              FuriText(text: '閉まる', furigana: '', emphasize: true),
            ],
            answer: 'しまる'),
        PhraseAnswer(
            translation: NA.t('mewotojiru'),
            phraseParts: [
              FuriText(text: '目', furigana: 'め'),
              FuriText(text: 'を'),
              FuriText(text: '閉じて', furigana: '', emphasize: true),
            ],
            answer: 'とじて'),
        PhraseAnswer(
            translation: NA.t('omisegahaitenshimashita'),
            phraseParts: [
              FuriText(text: 'お'),
              FuriText(text: '店', furigana: 'みせ'),
              FuriText(text: 'が'),
              FuriText(text: '閉店', furigana: '? てん', emphasize: true),
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
            translation: NA.t('sonoyamagaookiidesu'),
            phraseParts: [
              FuriText(text: 'その'),
              FuriText(text: '山', furigana: '', emphasize: true),
              FuriText(text: 'が'),
              FuriText(text: '大', furigana: 'おお'),
              FuriText(text: 'きいです')
            ],
            answer: 'やま'),
        PhraseAnswer(
            translation: NA.t(''),
            phraseParts: [
              FuriText(text: '富士山', furigana: 'ふじ ?', emphasize: true),
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
            translation: NA.t('kongetsuhasamuine'),
            phraseParts: [
              FuriText(
                  text: '今月',
                  furigana: '? げつ',
                  emphasize: true), 
              FuriText(text: 'は'),
              FuriText(text: 'さむいね')
            ],
            answer: 'こんげつ'),
        PhraseAnswer(
            translation: NA.t('imahananjidesuka'),
            phraseParts: [
              FuriText(text: '今', emphasize: true),
              FuriText(text: '何時', furigana: 'なんじ'),
              FuriText(text: 'ですか？')
            ],
            answer: 'いま'),
        PhraseAnswer(
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
            translation: NA.t('kawaniikimashou'),
            phraseParts: [
              FuriText(text: '川', emphasize: true),
              FuriText(text: 'に'),
              FuriText(text: '行', furigana: 'い'),
              FuriText(text: 'きましょう'),
            ],
            answer: 'かわ'),
        PhraseAnswer(
            translation: NA.t('yamawakasan'),
            phraseParts: [
              FuriText(text: '山川', emphasize: true),
              FuriText(text: 'さん'),
            ],
            answer: 'やまかわ'),
        PhraseAnswer(
            translation: NA.t('shinagawaekiniiruyo'),
            phraseParts: [
              FuriText(text: '品川', furigana: 'しな ?', emphasize: true),
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
            translation: NA.t('yamadasan'),
            phraseParts: [
              FuriText(text: '山田', emphasize: true),
              FuriText(text: 'さん'),
            ],
            answer: 'やまだ'),
        PhraseAnswer(
            translation: NA.t('inakanisunderu'),
            phraseParts: [
              FuriText(
                  text: '田舎',
                  emphasize:
                      true), // This uses a non-N5 kanji but there's no way around this
              FuriText(text: 'にすんでいる'),
            ],
            answer: 'いなか'),
        PhraseAnswer(
            translation: NA.t('naritakuukou'),
            phraseParts: [
              FuriText(text: '成田', furigana: 'なり__', emphasize: true),
              FuriText(text: '成田', furigana: 'なり ?', emphasize: true),
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
          translation: NA.t('mannakakarawakeru'),
          phraseParts: [
            FuriText(text: '真ん中', furigana: 'まんなか'),
            FuriText(text: 'から'),
            FuriText(text: '分ける', emphasize: true)
          ],
          answer: 'わける'),
      PhraseAnswer(
          translation: NA.t('atojuppunmattene'),
          phraseParts: [
            FuriText(text: 'あと'),
            FuriText(text: '十分', emphasize: true),
            FuriText(text: 'まってね'),
          ],
          answer: 'じゅうぷん'),
      PhraseAnswer(
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
