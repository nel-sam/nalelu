import 'package:nalelu/na_helpers.dart';

var kanjiBank = [
  Kanji(
      translation: NA.t('一'),
      kanji: '一',
      onYomi: 'イチ',
      kunYomi: 'ひと, ひとつ',
      phraseAnswers: [
        PhraseAnswer(phrase: '一つ', answer: 'ひと'),
        PhraseAnswer(phrase: '一人', answer: 'ひと'),
        PhraseAnswer(phrase: '一日', answer: 'いち')
      ]),
  Kanji(
      translation: NA.t('二'),
      kanji: '二',
      onYomi: 'ニ',
      kunYomi: 'ふた, ふたつ',
      phraseAnswers: [
        PhraseAnswer(phrase: '二月', answer: 'に'),
        PhraseAnswer(phrase: '二つ', answer: 'ふた'),
        PhraseAnswer(phrase: '十二月', answer: 'に'),
      ]),
  Kanji(
      translation: NA.t('三'),
      kanji: '三',
      onYomi: 'サン, ゾウ',
      kunYomi: 'み, みつ, みっつ',
      phraseAnswers: [
        PhraseAnswer(phrase: '三月', answer: 'さん'),
        PhraseAnswer(phrase: '三日', answer: 'みっ'),
        PhraseAnswer(phrase: '三つ', answer: 'みっ'),
      ]),
  Kanji(
      translation: NA.t('四'),
      kanji: '四',
      onYomi: 'シ',
      kunYomi: 'よ, よつ, よっつ',
      phraseAnswers: [
        PhraseAnswer(phrase: '四月', answer: 'し'),
        PhraseAnswer(phrase: '四日', answer: 'よっ'),
        PhraseAnswer(phrase: '四つ', answer: 'よっ'),
      ]),
  Kanji(
      translation: NA.t('五'),
      kanji: '五',
      onYomi: 'ゴ',
      kunYomi: 'いつ, いつつ',
      phraseAnswers: [
        PhraseAnswer(phrase: '五つ', answer: 'いつ'),
        PhraseAnswer(phrase: '五月', answer: 'ご'),
        PhraseAnswer(phrase: '五円', answer: 'ご'),
      ]),
  Kanji(
      translation: NA.t('六'),
      kanji: '六',
      onYomi: 'ロク',
      kunYomi: 'む, むつ, むっつ',
      phraseAnswers: [
        PhraseAnswer(phrase: '六つ', answer: 'むっ'),
        PhraseAnswer(phrase: '六月', answer: 'ろく'),
        PhraseAnswer(phrase: '六日', answer: 'むい'),
      ]),
  Kanji(
      translation: NA.t('七'),
      kanji: '七',
      onYomi: 'シチ',
      kunYomi: 'なな, なの',
      phraseAnswers: [
        PhraseAnswer(phrase: '七つ', answer: 'なな'),
        PhraseAnswer(phrase: '七月', answer: 'しち'),
        PhraseAnswer(phrase: '七日', answer: 'なの'),
      ]),
  Kanji(
      translation: NA.t('八'),
      kanji: '八',
      onYomi: 'ハチ',
      kunYomi: 'や, やつ, やっつ',
      phraseAnswers: [
        PhraseAnswer(phrase: '八つ', answer: 'やっ'),
        PhraseAnswer(phrase: '八月', answer: 'はち'),
        PhraseAnswer(phrase: '八日', answer: 'よう'),
      ]),
  Kanji(
      translation: NA.t('九'),
      kanji: '九',
      onYomi: 'キュウ, ク',
      kunYomi: 'ここの, ここのつ',
      phraseAnswers: [
        PhraseAnswer(phrase: '九つ', answer: 'ここの'),
        PhraseAnswer(phrase: '九月', answer: 'く'),
        PhraseAnswer(phrase: '九日', answer: 'ここの'),
      ]),
  Kanji(
      translation: NA.t('十'),
      kanji: '十',
      onYomi: 'ジュウ',
      kunYomi: 'とお',
      phraseAnswers: [
        PhraseAnswer(phrase: '十月', answer: 'じゅう'),
        PhraseAnswer(phrase: '十日', answer: 'とお'),
        PhraseAnswer(phrase: '十分な', answer: 'じゅう'),
      ]),
  Kanji(
      translation: NA.t('百'),
      kanji: '百',
      onYomi: 'ヒャク',
      kunYomi: 'もも',
      phraseAnswers: [
        PhraseAnswer(phrase: '百', answer: 'ひゃく'),
        PhraseAnswer(phrase: '三百', answer: 'びゃく'),
      ]),
  Kanji(
      translation: NA.t('千'),
      kanji: '千',
      onYomi: 'セン',
      kunYomi: 'ち',
      phraseAnswers: [
        PhraseAnswer(phrase: '千', answer: 'せん'),
        PhraseAnswer(phrase: '三千', answer: 'ぜん'),
      ]),
  Kanji(
      translation: NA.t('万'),
      kanji: '万',
      onYomi: 'マン, バン',
      kunYomi: 'よろず',
      phraseAnswers: [
        PhraseAnswer(phrase: '一万', answer: 'まん'),
      ]),
  Kanji(
      translation: NA.t('円'),
      kanji: '円',
      onYomi: 'エン',
      kunYomi: 'まる, まるい, まど, まどか',
      phraseAnswers: [
        PhraseAnswer(phrase: '円', answer: 'えん'),
        PhraseAnswer(phrase: '四万円', answer: 'えん'),
      ]),
  Kanji(
      translation: NA.t('日'),
      kanji: '日',
      onYomi: 'ニチ, ジツ',
      kunYomi: 'ひ, か, かつ, かれる',
      phraseAnswers: [
        PhraseAnswer(phrase: '日本', answer: 'に'),
        PhraseAnswer(phrase: '日', answer: 'ひ'),
        PhraseAnswer(phrase: '休日', answer: 'じつ'),
      ]),
  Kanji(
      translation: NA.t('月'),
      kanji: '月',
      onYomi: 'ゲツ, ガツ',
      kunYomi: 'つき',
      phraseAnswers: [
        PhraseAnswer(phrase: '月曜日', answer: 'げつ'),
        PhraseAnswer(phrase: '一月', answer: 'がつ'),
        PhraseAnswer(phrase: '今月', answer: 'げつ'),
      ]),
  Kanji(
      translation: NA.t('火'),
      kanji: '火',
      onYomi: 'カ',
      kunYomi: 'ひ, ほのお',
      phraseAnswers: [
        PhraseAnswer(phrase: '火曜日', answer: 'か'),
        PhraseAnswer(phrase: '火山', answer: 'か'),
        PhraseAnswer(phrase: '火', answer: 'ひ'),
      ]),
  Kanji(
      translation: NA.t('水'),
      kanji: '水',
      onYomi: 'スイ',
      kunYomi: 'みず, みずうみ',
      phraseAnswers: [
        PhraseAnswer(phrase: '水曜日', answer: 'すい'),
        PhraseAnswer(phrase: '水', answer: 'みず'),
      ]),
  Kanji(
      translation: NA.t('木'),
      kanji: '木',
      onYomi: 'ボク, モク',
      kunYomi: 'き, こ',
      phraseAnswers: [
        PhraseAnswer(phrase: '木', answer: 'き'),
        PhraseAnswer(phrase: '木曜日', answer: 'もく'),
      ]),
  Kanji(
      translation: NA.t('金'),
      kanji: '金',
      onYomi: 'キン, コン, ゴン',
      kunYomi: 'かね, かな, がね',
      phraseAnswers: [
        PhraseAnswer(phrase: 'お金', answer: 'かね'),
        PhraseAnswer(phrase: '金', answer: 'きん'),
        PhraseAnswer(phrase: '金曜日', answer: 'きん'),
      ]),
  Kanji(
      translation: NA.t('土'),
      kanji: '土',
      onYomi: 'ド, ト',
      kunYomi: 'つち',
      phraseAnswers: [
        PhraseAnswer(phrase: '土', answer: 'つち'),
        PhraseAnswer(phrase: '土曜日', answer: 'ど'),
      ]),
  Kanji(
      translation: NA.t('曜'),
      kanji: '曜',
      onYomi: 'ヨウ',
      kunYomi: '',
      phraseAnswers: [
        PhraseAnswer(phrase: '月曜日', answer: 'よう'),
      ]),
  Kanji(
      translation: NA.t('年'),
      kanji: '年',
      onYomi: 'ネン',
      kunYomi: 'とし',
      phraseAnswers: [
        PhraseAnswer(phrase: '年', answer: 'とし'),
        PhraseAnswer(phrase: '二千年', answer: 'ねん'),
        PhraseAnswer(phrase: '来年', answer: 'ねん'),
      ]),
  Kanji(
      translation: NA.t('上'),
      kanji: '上',
      onYomi: 'ジョウ, ショウ',
      kunYomi: 'うえ, あがる, あげる, のぼる, のぼせる, のぼす',
      phraseAnswers: [
        PhraseAnswer(phrase: '上がる', answer: 'あ'),
        PhraseAnswer(phrase: '水上スキー', answer: 'じょう'),
      ]),
  Kanji(
      translation: NA.t('下'),
      kanji: '下',
      onYomi: 'カ, ゲ',
      kunYomi: 'した, しも, もと, さがる, さげる, くだる, くだす, くださる',
      phraseAnswers: [
        PhraseAnswer(phrase: '下がる', answer: 'さ'),
        PhraseAnswer(phrase: '上下', answer: 'げ'),
        PhraseAnswer(phrase: '下', answer: 'した'),
      ]),
  Kanji(
      translation: NA.t('中'),
      kanji: '中',
      onYomi: 'チュウ',
      kunYomi: 'なか',
      phraseAnswers: [
        PhraseAnswer(phrase: '一日中', answer: 'じゅう'),
        PhraseAnswer(phrase: '中', answer: 'なか'),
      ]),
  Kanji(
      translation: NA.t('外'),
      kanji: '外',
      onYomi: 'ガイ',
      kunYomi: 'そと, ほか, はずす, はずれる',
      phraseAnswers: [
        PhraseAnswer(phrase: '外国', answer: 'がい'),
        PhraseAnswer(phrase: '外', answer: 'そと'),
      ]),
  Kanji(
      translation: NA.t('前'),
      kanji: '前',
      onYomi: 'ゼン',
      kunYomi: 'まえ',
      phraseAnswers: [
        PhraseAnswer(phrase: '前', answer: 'まえ'),
        PhraseAnswer(phrase: '三日前', answer: 'まえ'),
      ]),
  Kanji(
      translation: NA.t('後'),
      kanji: '後',
      onYomi: 'ゴ, コウ',
      kunYomi: 'うしろ, あと, のち',
      phraseAnswers: [
        PhraseAnswer(phrase: '後', answer: 'あと'),
        PhraseAnswer(phrase: '後ろ', answer: 'うし'),
      ]),
  Kanji(
      translation: NA.t('右'),
      kanji: '右',
      onYomi: 'ウ, ユウ',
      kunYomi: 'みぎ',
      phraseAnswers: [
        PhraseAnswer(phrase: '右', answer: 'みぎ'),
        PhraseAnswer(phrase: '右手', answer: 'みぎ'),
        PhraseAnswer(phrase: '左右', answer: 'ゆう'),
      ]),
  Kanji(
      translation: NA.t('左'),
      kanji: '左',
      onYomi: 'サ, シャ',
      kunYomi: 'ひだり',
      phraseAnswers: [
        PhraseAnswer(phrase: '左', answer: 'ひだり'),
        PhraseAnswer(phrase: '左手', answer: 'ひだり'),
      ]),
  Kanji(
      translation: NA.t('大'),
      kanji: '大',
      onYomi: 'ダイ, タイ',
      kunYomi: 'おお, おお(きい)',
      phraseAnswers: [
        PhraseAnswer(phrase: '大きい', answer: 'おお'),
        PhraseAnswer(phrase: '大学', answer: 'だい'),
        PhraseAnswer(phrase: '大会', answer: 'たい'),
      ]),
  Kanji(
      translation: NA.t('小'),
      kanji: '小',
      onYomi: 'ショウ',
      kunYomi: 'ちい(さい), こ, こ, お, さ',
      phraseAnswers: [
        PhraseAnswer(phrase: '小さい', answer: 'ちい'),
        PhraseAnswer(phrase: '小川', answer: 'お'),
        PhraseAnswer(phrase: '小犬', answer: 'こ'),
      ]),
  Kanji(
      translation: NA.t('長'),
      kanji: '長',
      onYomi: 'チョウ',
      kunYomi: 'なが, なが(い)',
      phraseAnswers: [
        PhraseAnswer(phrase: '長い', answer: 'なが'),
        PhraseAnswer(phrase: '学長', answer: 'ちょう'),
      ]),
  Kanji(
      translation: NA.t('短'),
      kanji: '短',
      onYomi: 'タン',
      kunYomi: 'みじか, みじか(い)',
      phraseAnswers: [
        PhraseAnswer(phrase: '短い', answer: 'みじか'),
      ]),
  Kanji(
      translation: NA.t('高'),
      kanji: '高',
      onYomi: 'コウ',
      kunYomi: 'たかい, たか, だか, たか.まる, たか.める',
      phraseAnswers: [
        PhraseAnswer(phrase: '高い', answer: 'たか'),
        PhraseAnswer(phrase: '円高', answer: 'だか'),
      ]),
  Kanji(
      translation: NA.t('安'),
      kanji: '安',
      onYomi: 'アン',
      kunYomi: 'やすい, やすまる, やす, やす.らか',
      phraseAnswers: [
        PhraseAnswer(phrase: '安い', answer: 'やす'),
        PhraseAnswer(phrase: '安全', answer: 'あん'),
      ]),
  Kanji(
      translation: NA.t('新'),
      kanji: '新',
      onYomi: 'しん, さん',
      kunYomi: 'アタラシイ',
      phraseAnswers: [
        PhraseAnswer(phrase: '新しい', answer: 'あたら'),
        PhraseAnswer(phrase: '新人', answer: 'しん'),
        PhraseAnswer(phrase: '新年', answer: 'しん'),
      ]),
  Kanji(
      translation: NA.t('古'),
      kanji: '古',
      onYomi: 'こ',
      kunYomi: 'フルイ',
      phraseAnswers: [
        PhraseAnswer(phrase: '古い', answer: 'ふる'),
      ]),
  Kanji(
      translation: NA.t('暑'),
      kanji: '暑',
      onYomi: 'しょ',
      kunYomi: 'アツイ',
      phraseAnswers: [
        PhraseAnswer(phrase: '暑い', answer: 'あつ'),
      ]),
  Kanji(
      translation: NA.t('寒'),
      kanji: '寒',
      onYomi: 'かん',
      kunYomi: 'サムイ',
      phraseAnswers: [
        PhraseAnswer(phrase: '寒い', answer: 'さむ'),
      ]),
  Kanji(
      translation: NA.t('明'),
      kanji: '明',
      onYomi: 'メイ, ミョウ',
      kunYomi: 'あかり, あかるい, あかるむ, あからむ, あきらか, あける, あく, あくる, あかす',
      phraseAnswers: [
        PhraseAnswer(phrase: '明かり', answer: 'あ'),
        PhraseAnswer(phrase: '明き', answer: 'あ'),
        PhraseAnswer(phrase: '明日', answer: 'あした'),
      ]),
  Kanji(
      translation: NA.t('暗'),
      kanji: '暗',
      onYomi: 'アン',
      kunYomi: 'くらい',
      phraseAnswers: [
        PhraseAnswer(phrase: '暗い', answer: 'くらい'),
        PhraseAnswer(phrase: '暗れる', answer: 'く'),
      ]),
  Kanji(
      translation: NA.t('忙'),
      kanji: '忙',
      onYomi: 'ボウ',
      kunYomi: 'いそがしい',
      phraseAnswers: [
        PhraseAnswer(phrase: '忙しい', answer: 'いそが'),
        PhraseAnswer(phrase: '大忙し', answer: 'いそが'),
        PhraseAnswer(phrase: '忙しげ', answer: 'せわ'),
      ]),
  Kanji(
      translation: NA.t('静'),
      kanji: '静',
      onYomi: 'セイ, ジョウ',
      kunYomi: 'しず, しず(か), しず(まる), しず(める)',
      phraseAnswers: [
        PhraseAnswer(phrase: '静か', answer: 'しず'),
        PhraseAnswer(phrase: '静まる', answer: 'しず'),
      ]),
  Kanji(
      translation: NA.t('難'),
      kanji: '難',
      onYomi: 'ナン',
      kunYomi: 'かたい, がたい',
      phraseAnswers: [
        PhraseAnswer(phrase: '難しい', answer: 'むずか'),
        PhraseAnswer(phrase: '難', answer: 'なん'),
        PhraseAnswer(phrase: '難い', answer: 'にく'),
      ]),
  Kanji(
      translation: NA.t('簡'),
      kanji: '簡',
      onYomi: 'カン',
      kunYomi: 'えらぶ, かんたん',
      phraseAnswers: [
        PhraseAnswer(phrase: '簡明', answer: 'かん'),
      ]),
  Kanji(
      translation: NA.t('好'),
      kanji: '好',
      onYomi: 'コウ',
      kunYomi: 'このむ, この(む)',
      phraseAnswers: [
        PhraseAnswer(phrase: '好い', answer: 'よ'),
        PhraseAnswer(phrase: '大好き', answer: 'す'),
        PhraseAnswer(phrase: '好む', answer: 'この'),
      ]),
  Kanji(
      translation: NA.t('嫌'),
      kanji: '嫌',
      onYomi: 'ケン',
      kunYomi: 'きらう, ぎら(い)',
      phraseAnswers: [
        PhraseAnswer(phrase: '嫌い', answer: 'きら'),
        PhraseAnswer(phrase: '嫌う', answer: 'きら'),
        PhraseAnswer(phrase: '嫌', answer: 'いや'),
      ]),
  Kanji(
      translation: NA.t('多'),
      kanji: '多',
      onYomi: 'タ',
      kunYomi: 'おお(い), まさ(に), まさ(る)',
      phraseAnswers: [
        PhraseAnswer(phrase: '多分', answer: 'た'),
        PhraseAnswer(phrase: '多大', answer: 'た'),
      ]),
  Kanji(
      translation: NA.t('少'),
      kanji: '少',
      onYomi: 'ショウ',
      kunYomi: 'すく.ない, すこ(し)',
      phraseAnswers: [
        PhraseAnswer(phrase: '少し', answer: 'すこ'),
        PhraseAnswer(phrase: '少年', answer: 'しょう'),
        PhraseAnswer(phrase: '少女', answer: 'しょう'),
      ]),
  Kanji(
      translation: NA.t('色'),
      kanji: '色',
      onYomi: 'ショク',
      kunYomi: 'いろ',
      phraseAnswers: [
        PhraseAnswer(phrase: '色', answer: 'いろ'),
      ]),
  Kanji(
      translation: NA.t('黒'),
      kanji: '黒',
      onYomi: 'コク',
      kunYomi: 'くろ, くろ(い)',
      phraseAnswers: [
        PhraseAnswer(phrase: '黒い', answer: 'くろ'),
        PhraseAnswer(phrase: '黒色', answer: 'くろ'),
      ]),
  Kanji(
      translation: NA.t('白'),
      kanji: '白',
      onYomi: 'ハク, ビャク',
      kunYomi: 'しろ',
      phraseAnswers: [
        PhraseAnswer(phrase: '明白', answer: 'はく'),
        PhraseAnswer(phrase: '白い', answer: 'しろ'),
      ]),
  Kanji(
      translation: NA.t('赤'),
      kanji: '赤',
      onYomi: 'セキ, シャク',
      kunYomi: 'あか, あか.い, あか.らむ, あか(らめる)',
      phraseAnswers: [
        PhraseAnswer(phrase: '赤い', answer: 'あか'),
        PhraseAnswer(phrase: '赤ちゃん', answer: 'あか'),
        PhraseAnswer(phrase: '赤色', answer: 'あか'),
      ]),
  Kanji(
      translation: NA.t('青'),
      kanji: '青',
      onYomi: 'セイ, ショウ',
      kunYomi: 'あお, あお, あお(い)',
      phraseAnswers: [
        PhraseAnswer(phrase: '青い', answer: '青'),
        PhraseAnswer(phrase: '青色', answer: 'あお'),
      ]),
  Kanji(
      translation: NA.t('黄'),
      kanji: '黄',
      onYomi: 'コウ',
      kunYomi: 'き, こ',
      phraseAnswers: [
        PhraseAnswer(phrase: '黄金', answer: 'おう'),
        PhraseAnswer(phrase: '着色', answer: 'き'),
      ]),
  Kanji(
      translation: NA.t('紫'),
      kanji: '紫',
      onYomi: 'シ',
      kunYomi: 'むらさき',
      phraseAnswers: [
        PhraseAnswer(phrase: '紫色', answer: 'むらさき'),
        PhraseAnswer(phrase: '大紫', answer: 'むらさき'),
      ]),
  Kanji(
      translation: NA.t('茶'),
      kanji: '茶',
      onYomi: 'チャ, サ',
      kunYomi: 'ちゃ',
      phraseAnswers: [
        PhraseAnswer(phrase: 'お茶', answer: 'ちゃ'),
        PhraseAnswer(phrase: '茶色', answer: 'ちゃ'),
      ]),
  Kanji(
      translation: NA.t('食'),
      kanji: '食',
      onYomi: 'ショク, ジキ',
      kunYomi: 'く(う), く(らう), た(べる)',
      phraseAnswers: [
        PhraseAnswer(phrase: '食べる', answer: 'た'),
        PhraseAnswer(phrase: '食べ物', answer: 'た'),
      ]),
  Kanji(
      translation: NA.t('飲'),
      kanji: '飲',
      onYomi: 'イン',
      kunYomi: 'の(む)',
      phraseAnswers: [
        PhraseAnswer(phrase: '飲み物', answer: 'の'),
        PhraseAnswer(phrase: '飲み', answer: 'の'),
      ]),
  Kanji(
      translation: NA.t('買'),
      kanji: '買',
      onYomi: 'バイ',
      kunYomi: 'かう',
      phraseAnswers: [
        PhraseAnswer(phrase: '買い物', answer: 'か'),
        PhraseAnswer(phrase: '買い手', answer: 'か'),
        PhraseAnswer(phrase: '買う', answer: 'か'),
      ]),
  Kanji(
      translation: NA.t('見'),
      kanji: '見',
      onYomi: 'ケン',
      kunYomi: 'みる, みえる, みせる',
      phraseAnswers: [
        PhraseAnswer(phrase: '見える', answer: 'み'),
        PhraseAnswer(phrase: '見る', answer: 'み'),
        PhraseAnswer(phrase: '一見', answer: 'けん'),
      ]),
  Kanji(
      translation: NA.t('聞'),
      kanji: '聞',
      onYomi: 'ブン, モン',
      kunYomi: 'きく, きこえる',
      phraseAnswers: [
        PhraseAnswer(phrase: '聞く', answer: 'き'),
        PhraseAnswer(phrase: '聞こえる', answer: 'き'),
      ]),
  Kanji(
      translation: NA.t('話'),
      kanji: '話',
      onYomi: 'ワ',
      kunYomi: 'はなす, はなし',
      phraseAnswers: [
        PhraseAnswer(phrase: '話す', answer: 'はな'),
      ]),
  Kanji(
      translation: NA.t('読'),
      kanji: '読',
      onYomi: 'ドク, トク',
      kunYomi: 'よむ',
      phraseAnswers: [
        PhraseAnswer(phrase: '読み', answer: 'よ'),
        PhraseAnswer(phrase: '読む', answer: 'よ'),
        PhraseAnswer(phrase: '読み方', answer: 'よ'),
      ]),
  Kanji(
      translation: NA.t('書'),
      kanji: '書',
      onYomi: 'ショ',
      kunYomi: 'かく',
      phraseAnswers: [
        PhraseAnswer(phrase: '書', answer: 'ふみ'),
        PhraseAnswer(phrase: '文書', answer: 'しょ'),
      ]),
  Kanji(
      translation: NA.t('入'),
      kanji: '入',
      onYomi: 'ニュウ',
      kunYomi: 'いる, いる, いれる, いれ',
      phraseAnswers: [
        PhraseAnswer(phrase: '入', answer: 'いり'),
        PhraseAnswer(phrase: '入力', answer: 'にゅう'),
      ]),
  Kanji(
      translation: NA.t('出'),
      kanji: '出',
      onYomi: 'シュツ',
      kunYomi: 'でる, でる, だす, だす, だれる, だれる',
      phraseAnswers: [
        PhraseAnswer(phrase: '出る', answer: 'で'),
        PhraseAnswer(phrase: '出し', answer: 'だ'),
        PhraseAnswer(phrase: '出かける', answer: 'で'),
      ]),
  Kanji(
      translation: NA.t('立'),
      kanji: '立',
      onYomi: 'リツ, リュウ',
      kunYomi: 'た(つ), た(ち), た(てる), たて, たてあ(げる), たつ',
      phraseAnswers: [
        PhraseAnswer(phrase: '立ち', answer: 'た'),
        PhraseAnswer(phrase: '立つ', answer: 'た'),
      ]),
  Kanji(
      translation: NA.t('座'),
      kanji: '座',
      onYomi: 'ザ',
      kunYomi: 'すわ(る)',
      phraseAnswers: [
        PhraseAnswer(phrase: '座る', answer: 'すわ'),
        PhraseAnswer(phrase: '一座', answer: 'ざ'),
        PhraseAnswer(phrase: '口座', answer: 'ざ'),
      ]),
  Kanji(
      translation: NA.t('休'),
      kanji: '休',
      onYomi: 'キュウ',
      kunYomi: 'やす(む), やす.まる, やす(める)',
      phraseAnswers: [
        PhraseAnswer(phrase: '休み', answer: 'やす'),
        PhraseAnswer(phrase: '休む', answer: 'やす'),
        PhraseAnswer(phrase: '休日', answer: 'きゅう'),
      ]),
  Kanji(
      translation: NA.t('行'),
      kanji: '行',
      onYomi: 'コウ, ギョウ, アン',
      kunYomi: 'い(く), ゆ(く), おこな(う)',
      phraseAnswers: [
        PhraseAnswer(phrase: '行き', answer: 'い'),
        PhraseAnswer(phrase: '行方', answer: 'ゆく'),
        PhraseAnswer(phrase: '行う', answer: 'おこな'),
      ]),
  Kanji(
      translation: NA.t('来'),
      kanji: '来',
      onYomi: 'ライ, タイ',
      kunYomi: 'く(る), きた(る), きた(す), き(たす), き(たる), き',
      phraseAnswers: [
        PhraseAnswer(phrase: '来月', answer: 'らい'),
        PhraseAnswer(phrase: '来日', answer: 'らい'),
      ]),
  Kanji(
      translation: NA.t('帰'),
      kanji: '帰',
      onYomi: 'キ',
      kunYomi: 'かえ(る), かえ(す)',
      phraseAnswers: [
        PhraseAnswer(phrase: '帰り', answer: 'かえ'),
        PhraseAnswer(phrase: '帰国', answer: 'き'),
        PhraseAnswer(phrase: '日帰り', answer: 'がえ'),
      ]),
  Kanji(
      translation: NA.t('開'),
      kanji: '開',
      onYomi: 'カイ',
      kunYomi: 'あ(く), あ(ける), ひら(く), ひら(ける), さか(る), さか(ん)',
      phraseAnswers: [
        PhraseAnswer(phrase: '開く', answer: 'あ'),
        PhraseAnswer(phrase: '開く', answer: 'ひら'),
      ]),
  Kanji(
      translation: NA.t('閉'),
      kanji: '閉',
      onYomi: 'ヘイ',
      kunYomi: 'と(じる), と(ざす), し(める), し(まる)',
      phraseAnswers: [
        PhraseAnswer(phrase: '閉まる', answer: 'し'),
        PhraseAnswer(phrase: '閉じる', answer: 'と'),
        PhraseAnswer(phrase: '閉山', answer: 'へい'),
      ]),
  Kanji(
      translation: NA.t('山'),
      kanji: '山',
      onYomi: 'サン',
      kunYomi: 'やま',
      phraseAnswers: [
        PhraseAnswer(phrase: '山', answer: 'やま'),
        PhraseAnswer(phrase: 'ふじ山', answer: 'さん'),
      ]),
  Kanji(
      translation: NA.t('今'),
      kanji: '今',
      onYomi: 'コン',
      kunYomi: 'いま',
      phraseAnswers: [
        PhraseAnswer(phrase: '今月', answer: 'こん'),
        PhraseAnswer(phrase: '今に', answer: 'いま'),
        PhraseAnswer(phrase: '今日', answer: 'きょう'),
      ]),
  Kanji(
      translation: NA.t('川'),
      kanji: '川',
      onYomi: 'セン',
      kunYomi: 'かわ',
      phraseAnswers: [
        PhraseAnswer(phrase: '川', answer: 'かわ'),
        PhraseAnswer(phrase: '山川さん', answer: 'かわ'),
      ]),
  Kanji(
      translation: NA.t('田'),
      kanji: '田',
      onYomi: 'デン',
      kunYomi: 'た',
      phraseAnswers: [
        PhraseAnswer(phrase: '山田さん', answer: 'だ'),
        PhraseAnswer(phrase: '水田', answer: 'でん'),
        PhraseAnswer(phrase: '田', answer: 'だ'),
      ]),
  Kanji(
    translation: NA.t('分'),
    kanji: '分',
    onYomi: 'ブン, フン(ープン)',
    kunYomi: 'わーける, わーかる',
    phraseAnswers: [
      PhraseAnswer(phrase: '分ける', answer: 'わ'),
      PhraseAnswer(phrase: '十分', answer: 'ぷん'),
      PhraseAnswer(phrase: '分かる', answer: 'わ')
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
  final String phrase;
  final String answer;

  PhraseAnswer({
    required this.phrase,
    required this.answer,
  });
}
