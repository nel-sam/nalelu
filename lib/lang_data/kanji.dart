import 'package:nalelu/na_helpers.dart';

var kanjiBank = [
  Kanji(
    translation: NA.t('一'),
    kanji: '一',
    onYomi: 'イチ',
    kunYomi: 'ひと / ひと-つ',
    phrases: ['一つ', '一人', '一日'],
    answers: ['ひと', 'ひと', 'いち'],
  ),
  Kanji(
    translation: NA.t('二'),
    kanji: '二',
    onYomi: 'ニ',
    kunYomi: 'ふた / ふた-つ',
    phrases: ['二月', '二つ', '十二月'],
    answers: ['に', 'ふた', 'に'],
  ),
  Kanji(
    translation: NA.t('三'),
    kanji: '三',
    onYomi: 'サン / ゾウ',
    kunYomi: 'み / み-つ / みっ-つ',
    phrases: ['三月', '三日', '三つ'],
    answers: ['さん', 'みっ', 'みっ'],
  ),
  Kanji(
    translation: NA.t('四'),
    kanji: '四',
    onYomi: 'シ',
    kunYomi: 'よ / よ-つ / よっ-つ',
    phrases: ['四月', '四日', '四つ'],
    answers: ['し', 'よっ', 'よっ'],
  ),
  Kanji(
    translation: NA.t('五'),
    kanji: '五',
    onYomi: 'ゴ',
    kunYomi: 'いつ / いつ-つ',
    phrases: ['五つ', '五月', '五円'],
    answers: ['いつ', 'ご', 'ご'],
  ),
  Kanji(
    translation: NA.t('六'),
    kanji: '六',
    onYomi: 'ロク',
    kunYomi: 'む / む-つ / むっ-つ',
    phrases: ['六つ', '六月', '六日'],
    answers: ['むっ', 'ろく', 'むい'],
  ),
  Kanji(
    translation: NA.t('七'),
    kanji: '七',
    onYomi: 'シチ',
    kunYomi: 'なな / なの',
   phrases: ['七つ', '七月', '七日'],
    answers: ['なな', 'しち', 'なの'],
  ),
  Kanji(
    translation: NA.t('八'),
    kanji: '八',
    onYomi: 'ハチ',
    kunYomi: 'や / や-つ / やっ-つ',
     phrases: ['八つ', '八月', '八日'],
    answers: ['やっ', 'はち', 'よう'],
  ),
  Kanji(
    translation: NA.t('九'),
    kanji: '九',
    onYomi: 'キュウ / ク',
    kunYomi: 'ここの / ここの-つ',
   phrases: ['九つ', '九月', '九日'],
    answers: ['ここの', 'く', 'ここの'],
  ),
  Kanji(
    translation: NA.t('十'),
    kanji: '十',
    onYomi: 'ジュウ',
    kunYomi: 'とお',
    phrases: ['十月', '十日', '十分な'],
    answers: ['じゅう', 'とお', 'じゅう'],
  ),
  Kanji(
    translation: NA.t('百'),
    kanji: '百',
    onYomi: 'ヒャク',
    kunYomi: 'もも',
    phrases: ['百', '三百'],
    answers: ['ひゃく', 'びゃく'],
  ),
  Kanji(
    translation: NA.t('千'),
    kanji: '千',
    onYomi: 'セン',
    kunYomi: 'ち',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('万'),
    kanji: '万',
    onYomi: 'マン / バン',
    kunYomi: 'よろず',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('円'),
    kanji: '円',
    onYomi: 'エン',
    kunYomi: 'まる / まるい / まど / まどか',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('日'),
    kanji: '日',
    onYomi: 'ニチ / ジツ',
    kunYomi: 'ひ / か / か-つ / か-れる',
    phrases: ['日本', '日', '休日'],
    answers: ['に', 'ひ', 'じつ'],
  ),
  Kanji(
    translation: NA.t('月'),
    kanji: '月',
    onYomi: 'ゲツ / ガツ',
    kunYomi: 'つき',
    phrases: ['月曜日', '一月', '今月'],
    answers: ['げつ', 'がつ', 'げつ'],
  ),
  Kanji(
    translation: NA.t('火'),
    kanji: '火',
    onYomi: 'カ',
    kunYomi: 'ひ / ほ-のお',
    phrases: ['火曜日', '火山', '火'],
    answers: ['か', 'か', 'ひ'],
  ),
  Kanji(
    translation: NA.t('水'),
    kanji: '水',
    onYomi: 'スイ',
    kunYomi: 'みず / みず-うみ',
    phrases: ['水曜日', '水'],
    answers: ['すい', 'みず'],
  ),
  Kanji(
    translation: NA.t('木'),
    kanji: '木',
    onYomi: 'ボク / モク',
    kunYomi: 'き / こ-',
    phrases: ['木', '木曜日'],
    answers: ['き', 'もく'],
  ),
  Kanji(
    translation: NA.t('金'),
    kanji: '金',
    onYomi: 'キン / コン / ゴン',
    kunYomi: 'かね / かな- / がね',
    phrases: ['お金', '金', '金曜日'],
    answers: ['かね', 'きん', 'きん'],
  ),
  Kanji(
    translation: NA.t('土'),
    kanji: '土',
    onYomi: 'ド / ト',
    kunYomi: 'つち',
     phrases: ['土', '土曜日'],
    answers: ['つち', 'ど'],
  ),
  Kanji(
    translation: NA.t('曜'),
    kanji: '曜',
    onYomi: 'ヨウ',
    kunYomi: '',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('上'),
    kanji: '上',
    onYomi: 'ジョウ / ショウ',
    kunYomi: 'うえ / あ-がる / あ-げる\nのぼ-る / のぼ-せる / のぼ-す',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('下'),
    kanji: '下',
    onYomi: 'カ / ゲ',
    kunYomi: 'した / しも / もと\nさ-がる / さ-げる / くだ-る\nくだ-す / くだ-さる',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('中'),
    kanji: '中',
    onYomi: 'チュウ',
    kunYomi: 'なか',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('外'),
    kanji: '外',
    onYomi: 'ガイ',
    kunYomi: 'そと / ほか / はず-す / はず-れる',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('前'),
    kanji: '前',
    onYomi: 'ゼン',
    kunYomi: 'まえ',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('後'),
    kanji: '後',
    onYomi: 'ゴ / コウ',
    kunYomi: 'うし-ろ / あと / のち',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('右'),
    kanji: '右',
    onYomi: 'ウ / ユウ',
    kunYomi: 'みぎ',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('左'),
    kanji: '左',
    onYomi: 'サ / シャ',
    kunYomi: 'ひだり',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('大'),
    kanji: '大',
    onYomi: 'ダイ / タイ',
    kunYomi: 'おお- / おお(きい)',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('小'),
    kanji: '小',
    onYomi: 'ショウ',
    kunYomi: 'ちい.さい / こ- / -こ / お-, さ-',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('長'),
    kanji: '長',
    onYomi: 'チョウ',
    kunYomi: 'なが- / -なが(い)',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('短'),
    kanji: '短',
    onYomi: 'タン',
    kunYomi: 'みじか- / -みじか(い)',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('高'),
    kanji: '高',
    onYomi: 'コウ',
    kunYomi: 'たか-い / たか / -だか\nたか.まる / たか.める',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('安'),
    kanji: '安',
    onYomi: 'アン',
    kunYomi: 'やす-い / やす-まる / やす\nやす.らか',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('新'),
    kanji: '新',
    onYomi: 'しん / さん',
    kunYomi: 'アタラシイ',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('古'),
    kanji: '古',
    onYomi: 'こ',
    kunYomi: 'フルイ',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('暑'),
    kanji: '暑',
    onYomi: 'しょ',
    kunYomi: 'アツイ',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('寒'),
    kanji: '寒',
    onYomi: 'かん',
    kunYomi: 'サムイ',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('明'),
    kanji: '明',
    onYomi: 'メイ / ミョウ',
    kunYomi: 'あ-かり / あか-るい / あか-るむ\nあか-らむ / あき-らか / あ-ける\nあ-く / あ-くる / あ-かす',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('暗'),
    kanji: '暗',
    onYomi: 'アン',
    kunYomi: 'くら-い',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('忙'),
    kanji: '忙',
    onYomi: 'ボウ',
    kunYomi: 'いそが-しい',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('静'),
    kanji: '静',
    onYomi: 'セイ / ジョウ',
    kunYomi: 'しず- / -しず(か) / -しず(まる)\n-しず(める)',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('難'),
    kanji: '難',
    onYomi: 'ナン',
    kunYomi: 'かた-い / -がたい',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('簡'),
    kanji: '簡',
    onYomi: 'カン',
    kunYomi: 'えら-ぶ / かんたん',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('好'),
    kanji: '好',
    onYomi: 'コウ',
    kunYomi: 'この-む / -この(む)',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('嫌'),
    kanji: '嫌',
    onYomi: 'ケン',
    kunYomi: 'きら-う / -ぎら(い)',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('上手'),
    kanji: '上手',
    onYomi: 'ジョウ / ショウ',
    kunYomi: 'じょうず / うわて / うわてま\nかみて / かみてま',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('下手'),
    kanji: '下手',
    onYomi: 'カシュウ / ゲシュ',
    kunYomi: 'へた / したて / したてる\nしたうま',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('多'),
    kanji: '多',
    onYomi: 'タ',
    kunYomi: 'おお(い) / まさ(に) / まさ(る)',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('少'),
    kanji: '少',
    onYomi: 'ショウ',
    kunYomi: 'すく.ない / すこ(し)',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('色'),
    kanji: '色',
    onYomi: 'ショク',
    kunYomi: 'いろ',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('黒'),
    kanji: '黒',
    onYomi: 'コク',
    kunYomi: 'くろ / くろ(い)',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('白'),
    kanji: '白',
    onYomi: 'ハク / ビャク',
    kunYomi: 'しろ / しろ(い)',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('赤'),
    kanji: '赤',
    onYomi: 'セキ / シャク',
    kunYomi: 'あか / あか.い / あか.らむ\nあか(らめる)',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('青'),
    kanji: '青',
    onYomi: 'セイ / ショウ',
    kunYomi: 'あお / あお- / あお(い)',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('黄'),
    kanji: '黄',
    onYomi: 'コウ',
    kunYomi: 'き / こ-',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('紫'),
    kanji: '紫',
    onYomi: 'シ',
    kunYomi: 'むらさき',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('茶'),
    kanji: '茶',
    onYomi: 'チャ / サ',
    kunYomi: 'ちゃ',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('食'),
    kanji: '食',
    onYomi: 'ショク / ジキ',
    kunYomi: 'く(う) / く(らう) / た(べる)',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('飲'),
    kanji: '飲',
    onYomi: 'イン',
    kunYomi: 'の(む)',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('買'),
    kanji: '買',
    onYomi: 'バイ',
    kunYomi: 'か-う',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('見'),
    kanji: '見',
    onYomi: 'ケン',
    kunYomi: 'み-る / み-える / み-せる',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('聞'),
    kanji: '聞',
    onYomi: 'ブン / モン',
    kunYomi: 'き-く / き-こえる',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('話'),
    kanji: '話',
    onYomi: 'ワ',
    kunYomi: 'はな-す / はなし',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('読'),
    kanji: '読',
    onYomi: 'ドク / トク',
    kunYomi: 'よ-む',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('書'),
    kanji: '書',
    onYomi: 'ショ',
    kunYomi: 'か-く',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('入'),
    kanji: '入',
    onYomi: 'ニュウ',
    kunYomi: 'い-る / -い-る / い-れる\n-い-れ',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('出'),
    kanji: '出',
    onYomi: 'シュツ',
    kunYomi: 'で-る / -でる / だ-す\n-だす / だ-れる / -だれる',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('立'),
    kanji: '立',
    onYomi: 'リツ / リュウ',
    kunYomi: 'た(つ) / た(ち-) / た(てる)\nたて- / たてあ(げる) / たつ',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('座'),
    kanji: '座',
    onYomi: 'ザ',
    kunYomi: 'すわ(る)',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('休'),
    kanji: '休',
    onYomi: 'キュウ',
    kunYomi: 'やす(む) / やす.まる / やす(める)',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('行'),
    kanji: '行',
    onYomi: 'コウ / ギョウ / アン',
    kunYomi: 'い(く) / ゆ(く) / おこな(う)',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('来'),
    kanji: '来',
    onYomi: 'ライ / タイ',
    kunYomi: 'く(る) / きた(る) / きた(す)\nき(たす) / き(たる) / き',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('帰'),
    kanji: '帰',
    onYomi: 'キ',
    kunYomi: 'かえ(る) / かえ(す)',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('開'),
    kanji: '開',
    onYomi: 'カイ',
    kunYomi: 'あ(く) / あ(ける) / ひら(く)\nひら(ける) / さか(る) / さか(ん)',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('閉'),
    kanji: '閉',
    onYomi: 'ヘイ',
    kunYomi: 'と(じる) / と(ざす) / し(める)\nし(まる)',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('出口'),
    kanji: '出口',
    onYomi: 'シュツコウ',
    kunYomi: '',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('入口'),
    kanji: '入口',
    onYomi: 'ニュウコウ',
    kunYomi: '',
    phrases: ['', '', ''],
    answers: ['', '', ''],
  ),
  Kanji(
    translation: NA.t('山'),
    kanji: '山',
    onYomi: 'サン',
    kunYomi: 'やま',
    phrases: ['山', 'ふじ山'],
    answers: ['やま', 'さん'],
  ),
  Kanji(
    translation: NA.t('今'),
    kanji: '今',
    onYomi: 'コン',
    kunYomi: 'いま',
    phrases: ['今月', '今に', '今日'],
    answers: ['こん', 'いま', 'きょう'],
  ),
   Kanji(
    translation: NA.t('川'),
    kanji: '川',
    onYomi: 'セン',
    kunYomi: 'かわ',
    phrases: ['川', '山川さん'],
    answers: ['かわ', 'かわ'],
  ),
    Kanji(
    translation: NA.t('田'),
    kanji: '田',
    onYomi: 'デン',
    kunYomi: 'た',
    phrases: ['山田さん', '水田', '田'],
    answers: ['だ', 'でん', 'だ'],
  ),
];

class Kanji {
  final String kanji;
  final String onYomi;
  final String kunYomi;
  final String translation;
  final List<String> phrases;
  final List<String> answers;

  Kanji({
    required this.translation,
    required this.kanji,
    required this.onYomi,
    required this.kunYomi,
    required this.phrases,
    required this.answers,
  });
}