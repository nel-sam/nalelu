import 'package:nalelu/furi_text.dart';
import 'package:nalelu/na_helpers.dart';

var kanjiBank = [
  // Kanji(
  //     translation: NA.t('一'),
  //     kanji: '一',
  //     onYomi: 'イチ',
  //     kunYomi: 'ひと, ひとつ',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '一人ぼっちとうきょう', answer: 'ひとり'),
  //       PhraseAnswer(phraseParts: 'わたしは一ばんかっこいい', answer: 'いち'),
  //       PhraseAnswer(phraseParts: 'ビイルを一つください', answer: 'ひと')
  //     ]),
  // Kanji(
  //     translation: NA.t('二'),
  //     kanji: '二',
  //     onYomi: 'ニ',
  //     kunYomi: 'ふた, ふたつ',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '二プラス二', answer: 'に'),
  //       PhraseAnswer(phraseParts: 'リンゴを二つ食べる', answer: 'ふた'),
  //       PhraseAnswer(phraseParts: 'わたしわ三十二さいです', answer: 'に'),
  //     ]),
  // Kanji(
  //     translation: NA.t('三'),
  //     kanji: '三',
  //     onYomi: 'サン, ゾウ',
  //     kunYomi: 'み, みつ, みっつ',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '三月は寒いです', answer: 'さん'),
  //       PhraseAnswer(phraseParts: '三つのビデオゲームがあります', answer: 'みっ'),
  //       PhraseAnswer(phraseParts: 'オレンジを三つもっています', answer: 'みっ'),
  //     ]),
  // Kanji(
  //     translation: NA.t('四'),
  //     kanji: '四',
  //     onYomi: 'シ',
  //     kunYomi: 'よ, よつ, よっつ',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '四月は暑いです', answer: 'し'),
  //       PhraseAnswer(phraseParts: 'クリスマスまであと四日', answer: 'よっ'),
  //       PhraseAnswer(phraseParts: 'メッシは四ゴールをきめた', answer: 'よん'),
  //     ]),
  // Kanji(
  //     translation: NA.t('五'),
  //     kanji: '五',
  //     onYomi: 'ゴ',
  //     kunYomi: 'いつ, いつつ',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: 'ほしが五つあります', answer: 'いつ'),
  //       PhraseAnswer(phraseParts: '五月は好きな月です', answer: 'ご'),
  //       PhraseAnswer(phraseParts: '五百円かせいだ', answer: 'ご'),
  //     ]),
  // Kanji(
  //     translation: NA.t('六'),
  //     kanji: '六',
  //     onYomi: 'ロク',
  //     kunYomi: 'む, むつ, むっつ',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '六つ', answer: 'むっ'),
  //       PhraseAnswer(phraseParts: '六月', answer: 'ろく'),
  //       PhraseAnswer(phraseParts: '六日', answer: 'むい'),
  //     ]),
  // Kanji(
  //     translation: NA.t('七'),
  //     kanji: '七',
  //     onYomi: 'シチ',
  //     kunYomi: 'なな, なの',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '七つ', answer: 'なな'),
  //       PhraseAnswer(phraseParts: '七月', answer: 'しち'),
  //       PhraseAnswer(phraseParts: '七日', answer: 'なの'),
  //     ]),
  // Kanji(
  //     translation: NA.t('八'),
  //     kanji: '八',
  //     onYomi: 'ハチ',
  //     kunYomi: 'や, やつ, やっつ',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '八つ', answer: 'やっ'),
  //       PhraseAnswer(phraseParts: '八月', answer: 'はち'),
  //       PhraseAnswer(phraseParts: '八日', answer: 'よう'),
  //     ]),
  // Kanji(
  //     translation: NA.t('九'),
  //     kanji: '九',
  //     onYomi: 'キュウ, ク',
  //     kunYomi: 'ここの, ここのつ',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '九つ', answer: 'ここの'),
  //       PhraseAnswer(phraseParts: '九月', answer: 'く'),
  //       PhraseAnswer(phraseParts: '九日', answer: 'ここの'),
  //     ]),
  // Kanji(
  //     translation: NA.t('十'),
  //     kanji: '十',
  //     onYomi: 'ジュウ',
  //     kunYomi: 'とお',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '十月', answer: 'じゅう'),
  //       PhraseAnswer(phraseParts: '十日', answer: 'とお'),
  //       PhraseAnswer(phraseParts: '十分な', answer: 'じゅう'),
  //     ]),
  // Kanji(
  //     translation: NA.t('百'),
  //     kanji: '百',
  //     onYomi: 'ヒャク',
  //     kunYomi: 'もも',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '百', answer: 'ひゃく'),
  //       PhraseAnswer(phraseParts: '三百', answer: 'びゃく'),
  //     ]),
  // Kanji(
  //     translation: NA.t('千'),
  //     kanji: '千',
  //     onYomi: 'セン',
  //     kunYomi: 'ち',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '千', answer: 'せん'),
  //       PhraseAnswer(phraseParts: '三千', answer: 'ぜん'),
  //     ]),
  // Kanji(
  //     translation: NA.t('万'),
  //     kanji: '万',
  //     onYomi: 'マン, バン',
  //     kunYomi: 'よろず',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '一万', answer: 'まん'),
  //     ]),
  // Kanji(
  //     translation: NA.t('円'),
  //     kanji: '円',
  //     onYomi: 'エン',
  //     kunYomi: 'まる, まるい, まど, まどか',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '円', answer: 'えん'),
  //       PhraseAnswer(phraseParts: '四万円', answer: 'えん'),
  //     ]),
  // Kanji(
  //     translation: NA.t('日'),
  //     kanji: '日',
  //     onYomi: 'ニチ, ジツ',
  //     kunYomi: 'ひ, か, かつ, かれる',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '日本', answer: 'に'),
  //       PhraseAnswer(phraseParts: '日', answer: 'ひ'),
  //       PhraseAnswer(phraseParts: '休日', answer: 'じつ'),
  //     ]),
  // Kanji(
  //     translation: NA.t('月'),
  //     kanji: '月',
  //     onYomi: 'ゲツ, ガツ',
  //     kunYomi: 'つき',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '月曜日', answer: 'げつ'),
  //       PhraseAnswer(phraseParts: '一月', answer: 'がつ'),
  //       PhraseAnswer(phraseParts: '今月', answer: 'げつ'),
  //     ]),
  // Kanji(
  //     translation: NA.t('火'),
  //     kanji: '火',
  //     onYomi: 'カ',
  //     kunYomi: 'ひ, ほのお',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '火曜日', answer: 'か'),
  //       PhraseAnswer(phraseParts: '火山', answer: 'か'),
  //       PhraseAnswer(phraseParts: '火', answer: 'ひ'),
  //     ]),
  // Kanji(
  //     translation: NA.t('水'),
  //     kanji: '水',
  //     onYomi: 'スイ',
  //     kunYomi: 'みず, みずうみ',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '水曜日', answer: 'すい'),
  //       PhraseAnswer(phraseParts: '水', answer: 'みず'),
  //     ]),
  // Kanji(
  //     translation: NA.t('木'),
  //     kanji: '木',
  //     onYomi: 'ボク, モク',
  //     kunYomi: 'き, こ',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '木', answer: 'き'),
  //       PhraseAnswer(phraseParts: '木曜日', answer: 'もく'),
  //     ]),
  // Kanji(
  //     translation: NA.t('金'),
  //     kanji: '金',
  //     onYomi: 'キン, コン, ゴン',
  //     kunYomi: 'かね, かな, がね',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: 'お金', answer: 'かね'),
  //       PhraseAnswer(phraseParts: '金', answer: 'きん'),
  //       PhraseAnswer(phraseParts: '金曜日', answer: 'きん'),
  //     ]),
  // Kanji(
  //     translation: NA.t('土'),
  //     kanji: '土',
  //     onYomi: 'ド, ト',
  //     kunYomi: 'つち',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '土', answer: 'つち'),
  //       PhraseAnswer(phraseParts: '土曜日', answer: 'ど'),
  //     ]),
  // Kanji(
  //     translation: NA.t('曜'),
  //     kanji: '曜',
  //     onYomi: 'ヨウ',
  //     kunYomi: '',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '月曜日', answer: 'よう'),
  //     ]),
  // Kanji(
  //     translation: NA.t('年'),
  //     kanji: '年',
  //     onYomi: 'ネン',
  //     kunYomi: 'とし',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '年', answer: 'とし'),
  //       PhraseAnswer(phraseParts: '二千年', answer: 'ねん'),
  //       PhraseAnswer(phraseParts: '来年', answer: 'ねん'),
  //     ]),
  // Kanji(
  //     translation: NA.t('上'),
  //     kanji: '上',
  //     onYomi: 'ジョウ, ショウ',
  //     kunYomi: 'うえ, あがる, あげる, のぼる, のぼせる, のぼす',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '上がる', answer: 'あ'),
  //       PhraseAnswer(phraseParts: '水上スキー', answer: 'じょう'),
  //     ]),
  // Kanji(
  //     translation: NA.t('下'),
  //     kanji: '下',
  //     onYomi: 'カ, ゲ',
  //     kunYomi: 'した, しも, もと, さがる, さげる, くだる, くだす, くださる',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '下がる', answer: 'さ'),
  //       PhraseAnswer(phraseParts: '上下', answer: 'げ'),
  //       PhraseAnswer(phraseParts: '下', answer: 'した'),
  //     ]),
  // Kanji(
  //     translation: NA.t('中'),
  //     kanji: '中',
  //     onYomi: 'チュウ',
  //     kunYomi: 'なか',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '一日中', answer: 'じゅう'),
  //       PhraseAnswer(phraseParts: '中', answer: 'なか'),
  //     ]),
  // Kanji(
  //     translation: NA.t('外'),
  //     kanji: '外',
  //     onYomi: 'ガイ',
  //     kunYomi: 'そと, ほか, はずす, はずれる',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '外国', answer: 'がい'),
  //       PhraseAnswer(phraseParts: '外', answer: 'そと'),
  //     ]),
  // Kanji(
  //     translation: NA.t('前'),
  //     kanji: '前',
  //     onYomi: 'ゼン',
  //     kunYomi: 'まえ',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '前', answer: 'まえ'),
  //       PhraseAnswer(phraseParts: '三日前', answer: 'まえ'),
  //     ]),
  // Kanji(
  //     translation: NA.t('後'),
  //     kanji: '後',
  //     onYomi: 'ゴ, コウ',
  //     kunYomi: 'うしろ, あと, のち',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '後', answer: 'あと'),
  //       PhraseAnswer(phraseParts: '後ろ', answer: 'うし'),
  //     ]),
  // Kanji(
  //     translation: NA.t('右'),
  //     kanji: '右',
  //     onYomi: 'ウ, ユウ',
  //     kunYomi: 'みぎ',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '右', answer: 'みぎ'),
  //       PhraseAnswer(phraseParts: '右手', answer: 'みぎ'),
  //       PhraseAnswer(phraseParts: '左右', answer: 'ゆう'),
  //     ]),
  // Kanji(
  //     translation: NA.t('左'),
  //     kanji: '左',
  //     onYomi: 'サ, シャ',
  //     kunYomi: 'ひだり',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '左', answer: 'ひだり'),
  //       PhraseAnswer(phraseParts: '左手', answer: 'ひだり'),
  //     ]),
  // Kanji(
  //     translation: NA.t('大'),
  //     kanji: '大',
  //     onYomi: 'ダイ, タイ',
  //     kunYomi: 'おお, おお(きい)',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '大きい', answer: 'おお'),
  //       PhraseAnswer(phraseParts: '大学', answer: 'だい'),
  //       PhraseAnswer(phraseParts: '大会', answer: 'たい'),
  //     ]),
  // Kanji(
  //     translation: NA.t('小'),
  //     kanji: '小',
  //     onYomi: 'ショウ',
  //     kunYomi: 'ちい(さい), こ, こ, お, さ',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '小さい', answer: 'ちい'),
  //       PhraseAnswer(phraseParts: '小川', answer: 'お'),
  //       PhraseAnswer(phraseParts: '小犬', answer: 'こ'),
  //     ]),
  // Kanji(
  //     translation: NA.t('長'),
  //     kanji: '長',
  //     onYomi: 'チョウ',
  //     kunYomi: 'なが, なが(い)',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '長い', answer: 'なが'),
  //       PhraseAnswer(phraseParts: '学長', answer: 'ちょう'),
  //     ]),
  // Kanji(
  //     translation: NA.t('短'),
  //     kanji: '短',
  //     onYomi: 'タン',
  //     kunYomi: 'みじか, みじか(い)',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '短い', answer: 'みじか'),
  //     ]),
  // Kanji(
  //     translation: NA.t('高'),
  //     kanji: '高',
  //     onYomi: 'コウ',
  //     kunYomi: 'たかい, たか, だか, たか.まる, たか.める',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '高い', answer: 'たか'),
  //       PhraseAnswer(phraseParts: '円高', answer: 'だか'),
  //     ]),
  // Kanji(
  //     translation: NA.t('安'),
  //     kanji: '安',
  //     onYomi: 'アン',
  //     kunYomi: 'やすい, やすまる, やす, やす.らか',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '安い', answer: 'やす'),
  //       PhraseAnswer(phraseParts: '安全', answer: 'あん'),
  //     ]),
  // Kanji(
  //     translation: NA.t('新'),
  //     kanji: '新',
  //     onYomi: 'しん, さん',
  //     kunYomi: 'アタラシイ',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '新しい', answer: 'あたら'),
  //       PhraseAnswer(phraseParts: '新人', answer: 'しん'),
  //       PhraseAnswer(phraseParts: '新年', answer: 'しん'),
  //     ]),
  // Kanji(
  //     translation: NA.t('古'),
  //     kanji: '古',
  //     onYomi: 'こ',
  //     kunYomi: 'フルイ',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '古い', answer: 'ふる'),
  //     ]),
  // Kanji(
  //     translation: NA.t('暑'),
  //     kanji: '暑',
  //     onYomi: 'しょ',
  //     kunYomi: 'アツイ',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '暑い', answer: 'あつ'),
  //     ]),
  // Kanji(
  //     translation: NA.t('寒'),
  //     kanji: '寒',
  //     onYomi: 'かん',
  //     kunYomi: 'サムイ',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '寒い', answer: 'さむ'),
  //     ]),
  // Kanji(
  //     translation: NA.t('明'),
  //     kanji: '明',
  //     onYomi: 'メイ, ミョウ',
  //     kunYomi: 'あかり, あかるい, あかるむ, あからむ, あきらか, あける, あく, あくる, あかす',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '明かり', answer: 'あ'),
  //       PhraseAnswer(phraseParts: '明き', answer: 'あ'),
  //       PhraseAnswer(phraseParts: '明日', answer: 'あした'),
  //     ]),
  // Kanji(
  //     translation: NA.t('暗'),
  //     kanji: '暗',
  //     onYomi: 'アン',
  //     kunYomi: 'くらい',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '暗い', answer: 'くらい'),
  //       PhraseAnswer(phraseParts: '暗れる', answer: 'く'),
  //     ]),
  // Kanji(
  //     translation: NA.t('忙'),
  //     kanji: '忙',
  //     onYomi: 'ボウ',
  //     kunYomi: 'いそがしい',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '忙しい', answer: 'いそが'),
  //       PhraseAnswer(phraseParts: '大忙し', answer: 'いそが'),
  //       PhraseAnswer(phraseParts: '忙しげ', answer: 'せわ'),
  //     ]),
  // Kanji(
  //     translation: NA.t('静'),
  //     kanji: '静',
  //     onYomi: 'セイ, ジョウ',
  //     kunYomi: 'しず, しず(か), しず(まる), しず(める)',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '静か', answer: 'しず'),
  //       PhraseAnswer(phraseParts: '静まる', answer: 'しず'),
  //     ]),
  // Kanji(
  //     translation: NA.t('難'),
  //     kanji: '難',
  //     onYomi: 'ナン',
  //     kunYomi: 'かたい, がたい',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '難しい', answer: 'むずか'),
  //       PhraseAnswer(phraseParts: '難', answer: 'なん'),
  //       PhraseAnswer(phraseParts: '難い', answer: 'にく'),
  //     ]),
  // Kanji(
  //     translation: NA.t('簡'),
  //     kanji: '簡',
  //     onYomi: 'カン',
  //     kunYomi: 'えらぶ, かんたん',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '簡明', answer: 'かん'),
  //     ]),
  // Kanji(
  //     translation: NA.t('好'),
  //     kanji: '好',
  //     onYomi: 'コウ',
  //     kunYomi: 'このむ, この(む)',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '好い', answer: 'よ'),
  //       PhraseAnswer(phraseParts: '大好き', answer: 'す'),
  //       PhraseAnswer(phraseParts: '好む', answer: 'この'),
  //     ]),
  // Kanji(
  //     translation: NA.t('嫌'),
  //     kanji: '嫌',
  //     onYomi: 'ケン',
  //     kunYomi: 'きらう, ぎら(い)',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '嫌い', answer: 'きら'),
  //       PhraseAnswer(phraseParts: '嫌う', answer: 'きら'),
  //       PhraseAnswer(phraseParts: '嫌', answer: 'いや'),
  //     ]),
  // Kanji(
  //     translation: NA.t('多'),
  //     kanji: '多',
  //     onYomi: 'タ',
  //     kunYomi: 'おお(い), まさ(に), まさ(る)',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '多分', answer: 'た'),
  //       PhraseAnswer(phraseParts: '多大', answer: 'た'),
  //     ]),
  // Kanji(
  //     translation: NA.t('少'),
  //     kanji: '少',
  //     onYomi: 'ショウ',
  //     kunYomi: 'すく.ない, すこ(し)',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '少し', answer: 'すこ'),
  //       PhraseAnswer(phraseParts: '少年', answer: 'しょう'),
  //       PhraseAnswer(phraseParts: '少女', answer: 'しょう'),
  //     ]),
  // Kanji(
  //     translation: NA.t('色'),
  //     kanji: '色',
  //     onYomi: 'ショク',
  //     kunYomi: 'いろ',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '色', answer: 'いろ'),
  //     ]),
  // Kanji(
  //     translation: NA.t('黒'),
  //     kanji: '黒',
  //     onYomi: 'コク',
  //     kunYomi: 'くろ, くろ(い)',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '黒い', answer: 'くろ'),
  //       PhraseAnswer(phraseParts: '黒色', answer: 'くろ'),
  //     ]),
  // Kanji(
  //     translation: NA.t('白'),
  //     kanji: '白',
  //     onYomi: 'ハク, ビャク',
  //     kunYomi: 'しろ',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '明白', answer: 'はく'),
  //       PhraseAnswer(phraseParts: '白い', answer: 'しろ'),
  //     ]),
  // Kanji(
  //     translation: NA.t('赤'),
  //     kanji: '赤',
  //     onYomi: 'セキ, シャク',
  //     kunYomi: 'あか, あか.い, あか.らむ, あか(らめる)',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '赤い', answer: 'あか'),
  //       PhraseAnswer(phraseParts: '赤ちゃん', answer: 'あか'),
  //       PhraseAnswer(phraseParts: '赤色', answer: 'あか'),
  //     ]),
  // Kanji(
  //     translation: NA.t('青'),
  //     kanji: '青',
  //     onYomi: 'セイ, ショウ',
  //     kunYomi: 'あお, あお, あお(い)',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '青い', answer: '青'),
  //       PhraseAnswer(phraseParts: '青色', answer: 'あお'),
  //     ]),
  // Kanji(
  //     translation: NA.t('黄'),
  //     kanji: '黄',
  //     onYomi: 'コウ',
  //     kunYomi: 'き, こ',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '黄金', answer: 'おう'),
  //       PhraseAnswer(phraseParts: '着色', answer: 'き'),
  //     ]),
  // Kanji(
  //     translation: NA.t('紫'),
  //     kanji: '紫',
  //     onYomi: 'シ',
  //     kunYomi: 'むらさき',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '紫色', answer: 'むらさき'),
  //       PhraseAnswer(phraseParts: '大紫', answer: 'むらさき'),
  //     ]),
  // Kanji(
  //     translation: NA.t('茶'),
  //     kanji: '茶',
  //     onYomi: 'チャ, サ',
  //     kunYomi: 'ちゃ',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: 'お茶', answer: 'ちゃ'),
  //       PhraseAnswer(phraseParts: '茶色', answer: 'ちゃ'),
  //     ]),
  // Kanji(
  //     translation: NA.t('食'),
  //     kanji: '食',
  //     onYomi: 'ショク, ジキ',
  //     kunYomi: 'く(う), く(らう), た(べる)',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '食べる', answer: 'た'),
  //       PhraseAnswer(phraseParts: '食べ物', answer: 'た'),
  //     ]),
  // Kanji(
  //     translation: NA.t('飲'),
  //     kanji: '飲',
  //     onYomi: 'イン',
  //     kunYomi: 'の(む)',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '飲み物', answer: 'の'),
  //       PhraseAnswer(phraseParts: '飲み', answer: 'の'),
  //     ]),
  // Kanji(
  //     translation: NA.t('買'),
  //     kanji: '買',
  //     onYomi: 'バイ',
  //     kunYomi: 'かう',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '買い物', answer: 'か'),
  //       PhraseAnswer(phraseParts: '買い手', answer: 'か'),
  //       PhraseAnswer(phraseParts: '買う', answer: 'か'),
  //     ]),
  // Kanji(
  //     translation: NA.t('見'),
  //     kanji: '見',
  //     onYomi: 'ケン',
  //     kunYomi: 'みる, みえる, みせる',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '見える', answer: 'み'),
  //       PhraseAnswer(phraseParts: '見る', answer: 'み'),
  //       PhraseAnswer(phraseParts: '一見', answer: 'けん'),
  //     ]),
  // Kanji(
  //     translation: NA.t('聞'),
  //     kanji: '聞',
  //     onYomi: 'ブン, モン',
  //     kunYomi: 'きく, きこえる',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '聞く', answer: 'き'),
  //       PhraseAnswer(phraseParts: '聞こえる', answer: 'き'),
  //     ]),
  // Kanji(
  //     translation: NA.t('話'),
  //     kanji: '話',
  //     onYomi: 'ワ',
  //     kunYomi: 'はなす, はなし',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '話す', answer: 'はな'),
  //     ]),
  // Kanji(
  //     translation: NA.t('読'),
  //     kanji: '読',
  //     onYomi: 'ドク, トク',
  //     kunYomi: 'よむ',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '読み', answer: 'よ'),
  //       PhraseAnswer(phraseParts: '読む', answer: 'よ'),
  //       PhraseAnswer(phraseParts: '読み方', answer: 'よ'),
  //     ]),
  // Kanji(
  //     translation: NA.t('書'),
  //     kanji: '書',
  //     onYomi: 'ショ',
  //     kunYomi: 'かく',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '書', answer: 'ふみ'),
  //       PhraseAnswer(phraseParts: '文書', answer: 'しょ'),
  //     ]),
  // Kanji(
  //     translation: NA.t('入'),
  //     kanji: '入',
  //     onYomi: 'ニュウ',
  //     kunYomi: 'いる, いる, いれる, いれ',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '入', answer: 'いり'),
  //       PhraseAnswer(phraseParts: '入力', answer: 'にゅう'),
  //     ]),
  // Kanji(
  //     translation: NA.t('出'),
  //     kanji: '出',
  //     onYomi: 'シュツ',
  //     kunYomi: 'でる, でる, だす, だす, だれる, だれる',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '出る', answer: 'で'),
  //       PhraseAnswer(phraseParts: '出し', answer: 'だ'),
  //       PhraseAnswer(phraseParts: '出かける', answer: 'で'),
  //     ]),
  // Kanji(
  //     translation: NA.t('立'),
  //     kanji: '立',
  //     onYomi: 'リツ, リュウ',
  //     kunYomi: 'た(つ), た(ち), た(てる), たて, たてあ(げる), たつ',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '立ち', answer: 'た'),
  //       PhraseAnswer(phraseParts: '立つ', answer: 'た'),
  //     ]),
  // Kanji(
  //     translation: NA.t('座'),
  //     kanji: '座',
  //     onYomi: 'ザ',
  //     kunYomi: 'すわ(る)',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '座る', answer: 'すわ'),
  //       PhraseAnswer(phraseParts: '一座', answer: 'ざ'),
  //       PhraseAnswer(phraseParts: '口座', answer: 'ざ'),
  //     ]),
  // Kanji(
  //     translation: NA.t('休'),
  //     kanji: '休',
  //     onYomi: 'キュウ',
  //     kunYomi: 'やす(む), やす.まる, やす(める)',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '休み', answer: 'やす'),
  //       PhraseAnswer(phraseParts: '休む', answer: 'やす'),
  //       PhraseAnswer(phraseParts: '休日', answer: 'きゅう'),
  //     ]),
  // Kanji(
  //     translation: NA.t('行'),
  //     kanji: '行',
  //     onYomi: 'コウ, ギョウ, アン',
  //     kunYomi: 'い(く), ゆ(く), おこな(う)',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '行き', answer: 'い'),
  //       PhraseAnswer(phraseParts: '行方', answer: 'ゆく'),
  //       PhraseAnswer(phraseParts: '行う', answer: 'おこな'),
  //     ]),
  // Kanji(
  //     translation: NA.t('来'),
  //     kanji: '来',
  //     onYomi: 'ライ, タイ',
  //     kunYomi: 'く(る), きた(る), きた(す), き(たす), き(たる), き',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '来月', answer: 'らい'),
  //       PhraseAnswer(phraseParts: '来日', answer: 'らい'),
  //     ]),
  // Kanji(
  //     translation: NA.t('帰'),
  //     kanji: '帰',
  //     onYomi: 'キ',
  //     kunYomi: 'かえ(る), かえ(す)',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '帰り', answer: 'かえ'),
  //       PhraseAnswer(phraseParts: '帰国', answer: 'き'),
  //       PhraseAnswer(phraseParts: '日帰り', answer: 'がえ'),
  //     ]),
  // Kanji(
  //     translation: NA.t('開'),
  //     kanji: '開',
  //     onYomi: 'カイ',
  //     kunYomi: 'あ(く), あ(ける), ひら(く), ひら(ける), さか(る), さか(ん)',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '開く', answer: 'あ'),
  //       PhraseAnswer(phraseParts: '開く', answer: 'ひら'),
  //     ]),
  // Kanji(
  //     translation: NA.t('閉'),
  //     kanji: '閉',
  //     onYomi: 'ヘイ',
  //     kunYomi: 'と(じる), と(ざす), し(める), し(まる)',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '閉まる', answer: 'し'),
  //       PhraseAnswer(phraseParts: '閉じる', answer: 'と'),
  //       PhraseAnswer(phraseParts: '閉山', answer: 'へい'),
  //     ]),
  // Kanji(
  //     translation: NA.t('山'),
  //     kanji: '山',
  //     onYomi: 'サン',
  //     kunYomi: 'やま',
  //     phraseAnswers: [
  //       PhraseAnswer(phraseParts: '山', answer: 'やま'),
  //       PhraseAnswer(phraseParts: 'ふじ山', answer: 'さん'),
  //     ]),
  Kanji(
      translation: NA.t('今'),
      kanji: '今',
      onYomi: 'コン',
      kunYomi: 'いま, きょう',
      phraseAnswers: [
        PhraseAnswer(phraseParts: [
          FuriText(text: '今月', furigana: '__げつ', emphasize: true),
          FuriText(text: 'は'),
          FuriText(text: 'さむいね')
        ], answer: 'こんげつ'),
        PhraseAnswer(phraseParts: [
          FuriText(text: '今', emphasize: true),
          FuriText(text: '何時', furigana: 'なんじ'),
          FuriText(text: 'ですか？')
        ], answer: 'いま'),
        PhraseAnswer(phraseParts: [
          FuriText(text: '今日', emphasize: true),
          FuriText(text: 'は'),
          FuriText(text: '月曜日', furigana: 'げつようび'),
          FuriText(text: 'だよ'),
        ], answer: 'きょう'),
      ]),
  Kanji(
      translation: NA.t('川'),
      kanji: '川',
      onYomi: 'セン',
      kunYomi: 'かわ、がわ',
      phraseAnswers: [
        PhraseAnswer(phraseParts: [
          FuriText(text: '川', emphasize: true),
          FuriText(text: 'に'),
          FuriText(text: '行きましょう', furigana: 'い'),
        ], answer: 'かわ'),
        PhraseAnswer(phraseParts: [
          FuriText(text: '山川', emphasize: true),
          FuriText(text: 'さん'),
        ], answer: 'やまかわ'),
        PhraseAnswer(phraseParts: [
          FuriText(text: '品川駅', furigana: 'しな__', emphasize: true),
          FuriText(text: '駅', furigana: 'えき'),
          FuriText(text: 'にいるよ'),
        ], answer: 'しながわ'),
      ]),
  Kanji(
      translation: NA.t('田'),
      kanji: '田',
      onYomi: 'デン', // No useful words found
      kunYomi: 'た、いなか',
      phraseAnswers: [
        PhraseAnswer(phraseParts: [
          FuriText(text: '山田', emphasize: true),
          FuriText(text: 'さん'),
        ], answer: 'やまだ'),
        // This uses a non-N5 kanji but there's no way around this
        PhraseAnswer(phraseParts: [
          FuriText(text: '田舎', emphasize: true),
          FuriText(text: 'にすんでいる'),
        ], answer: 'いなか'),
        PhraseAnswer(phraseParts: [
          FuriText(text: '成田', furigana: 'なり__', emphasize: true),
          FuriText(text: '空港', furigana: 'くうこう'),
        ], answer: 'なりた'),
      ]),
  Kanji(
    translation: NA.t('分'),
    kanji: '分',
    onYomi: 'フン, ブン, プン',
    kunYomi: 'わける, わかる',
    phraseAnswers: [
      PhraseAnswer(phraseParts: [
        FuriText(text: '真ん中', furigana: 'まんなか'),
        FuriText(text: 'から'),
        FuriText(text: '分ける', emphasize: true)
      ], answer: 'わける'),
      PhraseAnswer(phraseParts: [
        FuriText(text: 'あと'),
        FuriText(text: '十分', emphasize: true),
        FuriText(text: 'まってね'),
      ], answer: 'じゅうぷん'),
      PhraseAnswer(phraseParts: [
        FuriText(text: '日本語', furigana: 'にほんご'),
        FuriText(text: 'が'),
        FuriText(text: '分かる', emphasize: true),
      ], answer: 'わかる'),
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

  PhraseAnswer({
    required this.phraseParts,
    required this.answer,
  });
}
