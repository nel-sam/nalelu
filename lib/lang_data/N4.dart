import 'package:nalelu/furi_text.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/widgets/kanji.dart';

List<Kanji> kanjiN4Bank = [
  // Kanji(
  //     translation: NA.t('夕'),
  //     kanji: '夕',
  //     onYomi: 'セキ',
  //     kunYomi: 'ゆう',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('始'),
  //     kanji: '始',
  //     onYomi: 'シ',
  //     kunYomi: 'はじ(める), -はじ(める)',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('字'),
  //     kanji: '字',
  //     onYomi: 'ジ',
  //     kunYomi: 'あざ',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('室'),
  //     kanji: '室',
  //     onYomi: 'シツ',
  //     kunYomi: 'むろ',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('屋'),
  //     kanji: '屋',
  //     onYomi: 'オク',
  //     kunYomi: 'や',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('工'),
  //     kanji: '工',
  //     onYomi: 'コウ, ク',
  //     kunYomi: 'たくみ',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('度'),
  //     kanji: '度',
  //     onYomi: 'ド, ト',
  //     kunYomi: 'たび',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('建'),
  //     kanji: '建',
  //     onYomi: 'ケン, コン',
  //     kunYomi: 'た(てる), た(て), -だ(て), たて',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('弟'),
  //     kanji: '弟',
  //     onYomi: 'テイ, ダイ',
  //     kunYomi: 'おとうと',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('待'),
  //     kanji: '待',
  //     onYomi: 'タイ',
  //     kunYomi: 'ま(つ)',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('意'),
  //     kanji: '意',
  //     onYomi: 'イ',
  //     kunYomi: '',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('手'),
  //     kanji: '手',
  //     onYomi: 'シュ',
  //     kunYomi: 'て',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('不'),
  //     kanji: '不',
  //     onYomi: 'フ, ブ',
  //     kunYomi: '-',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('世'),
  //     kanji: '世',
  //     onYomi: 'セイ, セ',
  //     kunYomi: 'よ',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('主'),
  //     kanji: '主',
  //     onYomi: 'シュ',
  //     kunYomi: 'ぬし',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('京'),
  //     kanji: '京',
  //     onYomi: 'キョウ, ケイ',
  //     kunYomi: 'みやこ',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('仕'),
  //     kanji: '仕',
  //     onYomi: 'シ, ジ',
  //     kunYomi: 'つか',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('代'),
  //     kanji: '代',
  //     onYomi: 'ダイ, タイ',
  //     kunYomi: 'か',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('以'),
  //     kanji: '以',
  //     onYomi: 'イ',
  //     kunYomi: 'もっ(て)',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('借'),
  //     kanji: '借',
  //     onYomi: 'シャク',
  //     kunYomi: 'か',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('公'),
  //     kanji: '公',
  //     onYomi: 'コウ',
  //     kunYomi: 'おおやけ',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('写'),
  //     kanji: '写',
  //     onYomi: 'シャ',
  //     kunYomi: 'うつ(す), うつ(る), うつ-',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('冬'),
  //     kanji: '冬',
  //     onYomi: 'トウ',
  //     kunYomi: 'ふゆ',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('切'),
  //     kanji: '切',
  //     onYomi: 'セツ, サイ',
  //     kunYomi: 'き(る), -き(る), き(り), -き(り), き(れる), -き(れる)',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('別'),
  //     kanji: '別',
  //     onYomi: 'ベツ',
  //     kunYomi: 'わか(れる), わ(ける)',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('力'),
  //     kanji: '力',
  //     onYomi: 'リョク, リキ, リイ',
  //     kunYomi: 'ちから',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('勉'),
  //     kanji: '勉',
  //     onYomi: 'ベン',
  //     kunYomi: 'つと(める)',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('動'),
  //     kanji: '動',
  //     onYomi: 'ドウ',
  //     kunYomi: 'うご(く), うご(かす)',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('医'),
  //     kanji: '医',
  //     onYomi: 'イ',
  //     kunYomi: 'い(やす), い(する), くすし',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('去'),
  //     kanji: '去',
  //     onYomi: 'キョ, コ',
  //     kunYomi: 'さ(る), -さ(る)',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('口'),
  //     kanji: '口',
  //     onYomi: 'コウ, ク',
  //     kunYomi: 'くち',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('台'),
  //     kanji: '台',
  //     onYomi: 'ダイ, タイ',
  //     kunYomi: 'うてな, われ, つかさ',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('同'),
  //     kanji: '同',
  //     onYomi: 'ドウ',
  //     kunYomi: 'おな(じ)',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('味'),
  //     kanji: '味',
  //     onYomi: 'ミ',
  //     kunYomi: 'あじ, あじわ(う)',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('品'),
  //     kanji: '品',
  //     onYomi: 'ヒン',
  //     kunYomi: 'しな',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('員'),
  //     kanji: '員',
  //     onYomi: 'イン',
  //     kunYomi: '-',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('問'),
  //     kanji: '問',
  //     onYomi: 'モン',
  //     kunYomi: 'と(う), と(い), -と(い), とん',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('地'),
  //     kanji: '地',
  //     onYomi: 'チ, ジ',
  //     kunYomi: '',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('堂'),
  //     kanji: '堂',
  //     onYomi: 'ドウ',
  //     kunYomi: '',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('場'),
  //     kanji: '場',
  //     onYomi: 'ジョウ, チョウ',
  //     kunYomi: 'ば',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('売'),
  //     kanji: '売',
  //     onYomi: 'バイ',
  //     kunYomi: 'う(る), う(れる)',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('夏'),
  //     kanji: '夏',
  //     onYomi: 'カ, ガ',
  //     kunYomi: 'なつ',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('夜'),
  //     kanji: '夜',
  //     onYomi: 'ヤ',
  //     kunYomi: 'よ, よる',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('妹'),
  //     kanji: '妹',
  //     onYomi: 'マイ',
  //     kunYomi: 'いもうと',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('姉'),
  //     kanji: '姉',
  //     onYomi: 'シ',
  //     kunYomi: 'あね',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('家'),
  //     kanji: '家',
  //     onYomi: 'カ, ケ',
  //     kunYomi: 'いえ, や',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('広'),
  //     kanji: '広',
  //     onYomi: 'コウ',
  //     kunYomi: 'ひろ(い), ひろ(まる), ひろ(める), ひろ(がる), ひろ(げる)',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('思'),
  //     kanji: '思',
  //     onYomi: 'シ',
  //     kunYomi: 'おも(う)',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('急'),
  //     kanji: '急',
  //     onYomi: 'キュウ',
  //     kunYomi: 'いそ(ぐ)',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('悪'),
  //     kanji: '悪',
  //     onYomi: 'アク, オ',
  //     kunYomi: 'わる(い), わる-, あ(し), にく(い), -にく(い), ああ, いずくに, いずくんぞ, にく(む)',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('銀'),
  //     kanji: '銀',
  //     onYomi: 'ギン',
  //     kunYomi: 'しろがね, ぎん',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('持'),
  //     kanji: '持',
  //     onYomi: 'ジ',
  //     kunYomi: 'もつ',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('教'),
  //     kanji: '教',
  //     onYomi: 'キョウ',
  //     kunYomi: 'おしえる, おそわる',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('文'),
  //     kanji: '文',
  //     onYomi: 'ブン, モン',
  //     kunYomi: 'ふみ',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('料'),
  //     kanji: '料',
  //     onYomi: 'リョウ',
  //     kunYomi: '',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('方'),
  //     kanji: '方',
  //     onYomi: 'ホウ',
  //     kunYomi: 'かた',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('旅'),
  //     kanji: '旅',
  //     onYomi: 'リョ',
  //     kunYomi: 'たび',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('族'),
  //     kanji: '族',
  //     onYomi: 'ゾク',
  //     kunYomi: '',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('早'),
  //     kanji: '早',
  //     onYomi: 'ソウ',
  //     kunYomi: 'はやい',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('映'),
  //     kanji: '映',
  //     onYomi: 'エイ',
  //     kunYomi: 'うつる, はえる',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('春'),
  //     kanji: '春',
  //     onYomi: 'シュン',
  //     kunYomi: 'はる',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('昼'),
  //     kanji: '昼',
  //     onYomi: 'チュウ',
  //     kunYomi: 'ひる',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('有'),
  //     kanji: '有',
  //     onYomi: 'ユウ, ウ',
  //     kunYomi: 'ある',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('服'),
  //     kanji: '服',
  //     onYomi: 'フク',
  //     kunYomi: '',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('業'),
  //     kanji: '業',
  //     onYomi: 'ギョウ, ゴウ',
  //     kunYomi: 'わざ',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('歌'),
  //     kanji: '歌',
  //     onYomi: 'カ',
  //     kunYomi: 'うた',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('止'),
  //     kanji: '止',
  //     onYomi: 'シ',
  //     kunYomi: 'とまる, とめる',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('正'),
  //     kanji: '正',
  //     onYomi: 'セイ, ショウ',
  //     kunYomi: 'ただしい',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('歩'),
  //     kanji: '歩',
  //     onYomi: 'ホ, ブ',
  //     kunYomi: 'あるく',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('死'),
  //     kanji: '死',
  //     onYomi: 'シ',
  //     kunYomi: 'しぬ',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('注'),
  //     kanji: '注',
  //     onYomi: 'チュウ',
  //     kunYomi: 'つぐ',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('洋'),
  //     kanji: '洋',
  //     onYomi: 'ヨウ',
  //     kunYomi: '',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('海'),
  //     kanji: '海',
  //     onYomi: 'カイ',
  //     kunYomi: 'うみ',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('漢'),
  //     kanji: '漢',
  //     onYomi: 'カン',
  //     kunYomi: '',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('牛'),
  //     kanji: '牛',
  //     onYomi: 'ギュウ',
  //     kunYomi: 'うし',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('物'),
  //     kanji: '物',
  //     onYomi: 'ブツ, モツ',
  //     kunYomi: 'もの',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('特'),
  //     kanji: '特',
  //     onYomi: 'トク',
  //     kunYomi: '',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('理'),
  //     kanji: '理',
  //     onYomi: 'リ',
  //     kunYomi: 'ことわり',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('用'),
  //     kanji: '用',
  //     onYomi: 'ヨウ',
  //     kunYomi: 'もちい(る)',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('町'),
  //     kanji: '町',
  //     onYomi: 'チョウ',
  //     kunYomi: 'まち',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('画'),
  //     kanji: '画',
  //     onYomi: 'ガ, カク',
  //     kunYomi: 'えが(く), かく(する), かぎ(る), はかりごと',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('界'),
  //     kanji: '界',
  //     onYomi: 'カイ',
  //     kunYomi: 'さかい',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('病'),
  //     kanji: '病',
  //     onYomi: 'ビョウ',
  //     kunYomi: 'や(む), -や(み), やまい',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('発'),
  //     kanji: '発',
  //     onYomi: 'ハツ, ホツ',
  //     kunYomi: 'た(つ), あば(く), おこ(る), はな(つ)',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('的'),
  //     kanji: '的',
  //     onYomi: 'テキ',
  //     kunYomi: 'まと',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('真'),
  //     kanji: '真',
  //     onYomi: 'シン',
  //     kunYomi: 'ま',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('着'),
  //     kanji: '着',
  //     onYomi: 'チャク, ジャク',
  //     kunYomi: 'き(る), き(せる), -ぎ',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('知'),
  //     kanji: '知',
  //     onYomi: 'チ',
  //     kunYomi: 'し(る)',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('研'),
  //     kanji: '研',
  //     onYomi: 'ケン',
  //     kunYomi: 'と(ぐ)',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('社'),
  //     kanji: '社',
  //     onYomi: 'シャ',
  //     kunYomi: 'やしろ',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('私'),
  //     kanji: '私',
  //     onYomi: 'シ',
  //     kunYomi: 'わたし',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('秋'),
  //     kanji: '秋',
  //     onYomi: 'シュウ',
  //     kunYomi: 'あき',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('究'),
  //     kanji: '究',
  //     onYomi: 'キュウ',
  //     kunYomi: 'きわ(める)',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('空'),
  //     kanji: '空',
  //     onYomi: 'クウ',
  //     kunYomi: 'そら, あ(く), あ(き), から',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('答'),
  //     kanji: '答',
  //     onYomi: 'トウ',
  //     kunYomi: 'こた(える)',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('紙'),
  //     kanji: '紙',
  //     onYomi: 'シ',
  //     kunYomi: 'かみ',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('終'),
  //     kanji: '終',
  //     onYomi: 'シュウ',
  //     kunYomi: 'お(わる), -お(わる), おわ(る), つい, -つい',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('習'),
  //     kanji: '習',
  //     onYomi: 'シュウ',
  //     kunYomi: 'なら(う), なら(い)',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('考'),
  //     kanji: '考',
  //     onYomi: 'コウ',
  //     kunYomi: 'かんが(える)',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('者'),
  //     kanji: '者',
  //     onYomi: 'シャ',
  //     kunYomi: 'もの',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('肉'),
  //     kanji: '肉',
  //     onYomi: 'ニク',
  //     kunYomi: '',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('自'),
  //     kanji: '自',
  //     onYomi: 'ジ',
  //     kunYomi: 'みずか(ら)',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('花'),
  //     kanji: '花',
  //     onYomi: 'カ',
  //     kunYomi: 'はな',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('英'),
  //     kanji: '英',
  //     onYomi: 'エイ',
  //     kunYomi: '',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('親'),
  //     kanji: '親',
  //     onYomi: 'シン',
  //     kunYomi: 'おや',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('計'),
  //     kanji: '計',
  //     onYomi: 'ケイ',
  //     kunYomi: 'はか(る)',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('試'),
  //     kanji: '試',
  //     onYomi: 'シ',
  //     kunYomi: 'こころ(みる), ため(す)',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('貸'),
  //     kanji: '貸',
  //     onYomi: 'タイ',
  //     kunYomi: 'か(す), か(し-)',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('質'),
  //     kanji: '質',
  //     onYomi: 'シツ, シチ',
  //     kunYomi: 'たち, ただ(す), わりふ',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('走'),
  //     kanji: '走',
  //     onYomi: 'ソウ',
  //     kunYomi: 'はし(る)',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('起'),
  //     kanji: '起',
  //     onYomi: 'キ',
  //     kunYomi: 'お(きる), お(こる), お(こす)',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('足'),
  //     kanji: '足',
  //     onYomi: 'ソク',
  //     kunYomi: 'あし',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('近'),
  //     kanji: '近',
  //     onYomi: 'キン, コン',
  //     kunYomi: 'ちか(い)',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('送'),
  //     kanji: '送',
  //     onYomi: 'ソウ',
  //     kunYomi: 'おく(る)',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('通'),
  //     kanji: '通',
  //     onYomi: 'ツウ',
  //     kunYomi: 'とお(る), かよ(う)',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('運'),
  //     kanji: '運',
  //     onYomi: 'ウン',
  //     kunYomi: 'はこ(ぶ)',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('重'),
  //     kanji: '重',
  //     onYomi: 'ジュウ, チョウ',
  //     kunYomi: 'おも(い), かさ(ねる), かさ(なる)',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('野'),
  //     kanji: '野',
  //     onYomi: 'ヤ, ショ',
  //     kunYomi: 'の',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('集'),
  //     kanji: '集',
  //     onYomi: 'シュウ',
  //     kunYomi: 'あつ(まる), あつ(める), つど(う)',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('音'),
  //     kanji: '音',
  //     onYomi: 'オン, イン',
  //     kunYomi: 'おと, ね',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('題'),
  //     kanji: '題',
  //     onYomi: 'ダイ',
  //     kunYomi: '',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('風'),
  //     kanji: '風',
  //     onYomi: 'フウ',
  //     kunYomi: 'かぜ, かざ',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('飯'),
  //     kanji: '飯',
  //     onYomi: 'ハン',
  //     kunYomi: 'めし',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('館'),
  //     kanji: '館',
  //     onYomi: 'カン',
  //     kunYomi: 'やかた',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('駅'),
  //     kanji: '駅',
  //     onYomi: 'エキ',
  //     kunYomi: '',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('験'),
  //     kanji: '験',
  //     onYomi: 'ケン',
  //     kunYomi: 'あかし, ため(す)',
  //     phraseAnswers: []),
  // Kanji(
  //     translation: NA.t('鳥'),
  //     kanji: '鳥',
  //     onYomi: 'チョウ',
  //     kunYomi: 'とり',
  //     phraseAnswers: []),
  Kanji(
      translation: NA.t('犬'),
      kanji: '犬',
      onYomi: 'ケン',
      kunYomi: 'いぬ',
      phraseAnswers: [
        PhraseAnswer(
          // どんな犬が好きですか？
          translation: NA.t('donnainugagokidesuka'),
          phraseParts: [
            FuriText(text: 'どんな'),
            FuriText(text: '犬', furigana: '？', emphasize: true),
            FuriText(text: 'が'),
            FuriText(text: '好', furigana: 'す'),
            FuriText(text: 'き'),
            FuriText(text: 'ですか？'),
          ],
          answer: 'いぬ',
        ),
        //PhraseAnswer(
        //　TODO: 狂犬病 for higher levels
        //),
      ]),
  Kanji(
      translation: NA.t('目'),
      kanji: '目',
      onYomi: 'モク, ボク',
      kunYomi: 'め',
      phraseAnswers: [
        PhraseAnswer(
          // 彼は目を閉じた
          translation: NA.t('karehaameowotojita'),
          phraseParts: [
            FuriText(text: '彼', furigana: 'かれ'),
            FuriText(text: 'は'),
            FuriText(text: '目', furigana: '？', emphasize: true),
            FuriText(text: 'を'),
            FuriText(text: '閉', furigana: 'と'),
            FuriText(text: 'じた'),
          ],
          answer: 'め',
        ),
        PhraseAnswer(
          // 何の目的で来たのですか？
          translation: NA.t('nanomokutekidekitanodesuka'),
          phraseParts: [
            FuriText(text: '何', furigana: 'なん'),
            FuriText(text: 'の'),
            FuriText(text: '目', furigana: '？', emphasize: true),
            FuriText(text: '的', furigana: 'てき', emphasize: true),
            FuriText(text: 'で'),
            FuriText(text: '来', furigana: 'き'),
            FuriText(text: 'た'),
            FuriText(text: 'の'),
            FuriText(text: 'です'),
            FuriText(text: 'か？'),
          ],
          answer: 'もくてき',
        ),
      ]),
  Kanji(
      translation: NA.t('魚'),
      kanji: '魚',
      onYomi: 'ギョ, リョウ',
      kunYomi: 'うお, -ざかな, -さかな',
      phraseAnswers: [
        PhraseAnswer(
          // 彼女はあまり魚を食べない
          translation: NA.t('kanojohaamarisakanawotabenai'),
          phraseParts: [
            FuriText(text: '彼女', furigana: 'かのじょ'),
            FuriText(text: 'は'),
            FuriText(text: 'あまり'),
            FuriText(text: '魚', furigana: '？', emphasize: true),
            FuriText(text: 'を'),
            FuriText(text: '食', furigana: 'た'),
            FuriText(text: 'べない'),
          ],
          answer: 'さかな',
        ),
        PhraseAnswer(
            // 金魚を飼っています
            translation: NA.t('kingyowokatteimasu'),
            phraseParts: [
              FuriText(text: '金', furigana: 'きん', emphasize: true),
              FuriText(text: '魚', furigana: '？', emphasize: true),
              FuriText(text: 'を'),
              FuriText(text: '飼', furigana: 'か'),
              FuriText(text: 'っています'),
            ],
            answer: 'きんぎょ'),
      ]),
  Kanji(
      translation: NA.t('転'),
      kanji: '転',
      onYomi: 'テン',
      kunYomi: 'ころぶ, ころがる, ころげる',
      phraseAnswers: [
        PhraseAnswer(
          // 急に転んだ
          translation: NA.t('kyuunikoronda'),
          phraseParts: [
            FuriText(text: '急', furigana: 'きゅう'),
            FuriText(text: 'に'),
            FuriText(text: '転', furigana: '？', emphasize: true),
            FuriText(text: 'んだ', emphasize: true),
          ],
          answer: 'ころんだ',
        ),
        PhraseAnswer(
          // 回転寿司に行きたい
          translation: NA.t('kaitenzushiniikitai'),
          phraseParts: [
            FuriText(text: '回', furigana: 'かい', emphasize: true),
            FuriText(text: '転', furigana: '？', emphasize: true),
            FuriText(text: '寿司', furigana: 'すし'),
            FuriText(text: 'に'),
            FuriText(text: '行', furigana: 'い'),
            FuriText(text: 'きたい'),
          ],
          answer: 'かいてん',
        ),
      ]),
  Kanji(
      translation: NA.t('週'),
      kanji: '週',
      onYomi: 'シュウ',
      kunYomi: 'しゅう',
      phraseAnswers: [
        PhraseAnswer(
          // 週末は何をしますか？
          translation: NA.t('shuumatsuhananiwoshimasuka'),
          phraseParts: [
            FuriText(text: '週', furigana: '？', emphasize: true),
            FuriText(text: '末', furigana: 'まつ', emphasize: true),
            FuriText(text: 'は'),
            FuriText(text: '何', furigana: 'なに'),
            FuriText(text: 'をしますか？'),
          ],
          answer: 'しゅうまつ',
        ),
        PhraseAnswer(
          // 週に一回
          translation: NA.t('shuuniikkai'),
          phraseParts: [
            FuriText(text: '週', furigana: '？', emphasize: true),
            FuriText(text: 'に'),
            FuriText(text: '一回', furigana: 'いっかい'),
          ],
          answer: 'しゅう',
        ),
      ]),
  Kanji(
      translation: NA.t('道'),
      kanji: '道',
      onYomi: 'ドウ, トウ',
      kunYomi: 'みち',
      phraseAnswers: [
        PhraseAnswer(
          // 道がキレイぐです
          translation: NA.t('michiagakireidesu'),
          phraseParts: [
            FuriText(text: '道', furigana: '？', emphasize: true),
            FuriText(text: 'が'),
            FuriText(text: 'キレイ'),
            FuriText(text: 'ぐです'),
          ],
          answer: 'みち',
        ),
        PhraseAnswer(
          // 道路は危ないです
          translation: NA.t('dourohaabunaidesu'),
          phraseParts: [
            FuriText(text: '道', furigana: '？', emphasize: true),
            FuriText(text: '路', furigana: 'ろ', emphasize: true),
            FuriText(text: 'は'),
            FuriText(text: '危', furigana: 'あぶ'),
            FuriText(text: 'ないです'),
          ],
          answer: 'どうろ',
        ),
      ]),
  Kanji(
      translation: NA.t('院'),
      kanji: '院',
      onYomi: 'イン',
      kunYomi: '',
      phraseAnswers: [
        PhraseAnswer(
          // 病院に行かないといけない
          translation: NA.t('byouinniikanaitoikenai'),
          phraseParts: [
            FuriText(text: '病', furigana: 'びょう', emphasize: true),
            FuriText(text: '院', furigana: '？', emphasize: true),
            FuriText(text: 'に'),
            FuriText(text: '行', furigana: 'い'),
            FuriText(text: 'かないといけない'),
          ],
          answer: 'びょういん',
        ),
        PhraseAnswer(
          // 入院しました
          translation: NA.t('nyuuinshimashita'),
          phraseParts: [
            FuriText(text: '入', furigana: 'にゅう', emphasize: true),
            FuriText(text: '院', furigana: '？', emphasize: true),
            FuriText(text: 'しました'),
          ],
          answer: 'にゅういん',
        ),
      ]),
  Kanji(
      translation: NA.t('強'),
      kanji: '強',
      onYomi: 'キョウ, ゴウ',
      kunYomi: 'つよい, しいる',
      phraseAnswers: [
        PhraseAnswer(
          // 家の犬は強い
          translation: NA.t('uchinoinuhatsuyoi'),
          phraseParts: [
            FuriText(text: '家', furigana: 'うち'),
            FuriText(text: 'の'),
            FuriText(text: '犬', furigana: 'いぬ'),
            FuriText(text: 'は'),
            FuriText(text: '強', furigana: '？', emphasize: true),
            FuriText(text: 'い', emphasize: true),
          ],
          answer: 'つよい',
        ),
        PhraseAnswer(
          // 勉強は大変です
          translation: NA.t('benkyouhataihendesu'),
          phraseParts: [
            FuriText(text: '勉', furigana: 'べん', emphasize: true),
            FuriText(text: '強', furigana: '？', emphasize: true),
            FuriText(text: 'は'),
            FuriText(text: '大変', furigana: 'たいへん'),
            FuriText(text: 'です'),
          ],
          answer: 'べんきょう',
        ),
      ]),
  Kanji(
      translation: NA.t('元'),
      kanji: '元',
      onYomi: 'ゲン, ガン',
      kunYomi: 'もと',
      phraseAnswers: [
        PhraseAnswer(
          // 足元に気をつけてください
          translation: NA.t('ashimotonikiwotsuketekudasai'),
          phraseParts: [
            FuriText(text: '足', furigana: 'あし', emphasize: true),
            FuriText(text: '元', furigana: '？', emphasize: true),
            FuriText(text: 'に'),
            FuriText(text: '気', furigana: 'き'),
            FuriText(text: 'をつけてください'),
          ],
          answer: 'あしもと',
        ),
        PhraseAnswer(
          // お母さんは元気かな？
          translation: NA.t('okaasanhagenkikana'),
          phraseParts: [
            FuriText(text: 'お'),
            FuriText(text: '母', furigana: 'かあ'),
            FuriText(text: 'さんは'),
            FuriText(text: '元', furigana: '？', emphasize: true),
            FuriText(text: '気', furigana: 'き', emphasize: true),
            FuriText(text: 'かな？'),
          ],
          answer: 'げんき',
        ),
      ]),
  Kanji(
      translation: NA.t('兄'),
      kanji: '兄',
      onYomi: 'ケイ, キョウ',
      kunYomi: 'あに',
      phraseAnswers: [
        PhraseAnswer(
          // 兄は大学生です
          translation: NA.t('anihadaigakuseidesu'),
          phraseParts: [
            FuriText(text: '兄', furigana: '？', emphasize: true),
            FuriText(text: 'は'),
            FuriText(text: '大学生', furigana: 'だいがくせい'),
            FuriText(text: 'です'),
          ],
          answer: 'あに',
        ),
        PhraseAnswer(
          // その二人は兄弟です
          translation: NA.t('sonofutarihakyoudaidesu'),
          phraseParts: [
            FuriText(text: 'その'),
            FuriText(text: '二人', furigana: 'ふたり'),
            FuriText(text: 'は'),
            FuriText(text: '兄', furigana: '？', emphasize: true),
            FuriText(text: '弟', furigana: 'だい', emphasize: true),
            FuriText(text: 'です'),
          ],
          answer: 'きょうだい',
        ),
      ]),
  Kanji(
      translation: NA.t('店'),
      kanji: '店',
      onYomi: 'テン',
      kunYomi: 'みせ',
      phraseAnswers: [
        PhraseAnswer(
          // このお店高い
          translation: NA.t('konoomisetakai'),
          phraseParts: [
            FuriText(text: 'この'),
            FuriText(text: 'お', emphasize: true),
            FuriText(text: '店', furigana: '？', emphasize: true),
            FuriText(text: '高', furigana: 'たか'),
            FuriText(text: 'い'),
          ],
          answer: 'おみせ',
        ),
        PhraseAnswer(
          // 閉店のお知らせ
          translation: NA.t('heitennooshirase'),
          phraseParts: [
            FuriText(text: '閉', furigana: 'へい', emphasize: true),
            FuriText(text: '店', furigana: '？', emphasize: true),
            FuriText(text: 'の'),
            FuriText(text: 'お'),
            FuriText(text: '知', furigana: 'しら'),
            FuriText(text: 'らせ'),
          ],
          answer: 'へいてん',
        )
      ]),
  Kanji(
      translation: NA.t('心'),
      kanji: '心',
      onYomi: 'シン',
      kunYomi: 'こころ',
      phraseAnswers: [
        PhraseAnswer(
          // 心の底からありがとうございます
          translation: NA.t('kokoronosokokaraarigatou'),
          phraseParts: [
            FuriText(text: '心', furigana: '？', emphasize: true),
            FuriText(text: 'の'),
            FuriText(text: '底', furigana: 'そこ'),
            FuriText(text: 'からありがとう'),
          ],
          answer: 'こころ',
        ),
        PhraseAnswer(
          // 心配しないでください
          translation: NA.t('shinpaisinaidekudasai'),
          phraseParts: [
            FuriText(text: '心', furigana: '？', emphasize: true),
            FuriText(text: '配', furigana: 'ぱい', emphasize: true),
            FuriText(text: 'しないでください'),
          ],
          answer: 'しんぱい',
        ),
      ]),
  Kanji(
      translation: NA.t('朝'),
      kanji: '朝',
      onYomi: 'チョウ',
      kunYomi: 'あさ',
      phraseAnswers: [
        PhraseAnswer(
          // 朝からうるさい
          translation: NA.t('asakaraurusai'),
          phraseParts: [
            FuriText(text: '朝', furigana: '？', emphasize: true),
            FuriText(text: 'からうるさい'),
          ],
          answer: 'あさ',
        ),
        PhraseAnswer(
          // 朝食を食べない
          translation: NA.t('choushokuwotabenai'),
          phraseParts: [
            FuriText(text: '朝', furigana: '？', emphasize: true),
            FuriText(text: '食', furigana: 'しょく', emphasize: true),
            FuriText(text: 'を'),
            FuriText(text: '食', furigana: 'た'),
            FuriText(text: 'べない'),
          ],
          answer: 'ちょうしょく',
        )
      ]),
  Kanji(
      translation: NA.t('楽'),
      kanji: '楽',
      onYomi: 'ガク, ラク',
      kunYomi: 'たのしい, たのしむ',
      phraseAnswers: [
        PhraseAnswer(
          // ここは何が楽しいですか？
          translation: NA.t('kokohananigatanoshiidesuka'),
          phraseParts: [
            FuriText(text: 'ここは'),
            FuriText(text: '何', furigana: 'なに'),
            FuriText(text: 'が'),
            FuriText(text: '楽', furigana: '？', emphasize: true),
            FuriText(text: 'しい', emphasize: true),
            FuriText(text: 'ですか？'),
          ],
          answer: 'たのしい',
        ),
        PhraseAnswer(
          // どんな音楽が好き？
          translation: NA.t('donnaongakugasuki'),
          phraseParts: [
            FuriText(text: 'どんな'),
            FuriText(text: '音', furigana: 'おん', emphasize: true),
            FuriText(text: '楽', furigana: '？', emphasize: true),
            FuriText(text: 'が'),
            FuriText(text: '好き', furigana: 'すき'),
            FuriText(text: '？'),
          ],
          answer: 'おんがく',
        ),
        PhraseAnswer(
          // 楽な運動をしたい
          translation: NA.t('rakunaundoushitai'),
          phraseParts: [
            FuriText(text: '楽', furigana: '？', emphasize: true),
            FuriText(text: 'な'),
            FuriText(text: '運動', furigana: 'うんどう'),
            FuriText(text: 'を'),
            FuriText(text: 'したい'),
          ],

          answer: 'らく',
        )
      ]),
  Kanji(
      translation: NA.t('言'),
      kanji: '言',
      onYomi: 'ゲン, ゴン',
      kunYomi: 'い',
      phraseAnswers: [
        PhraseAnswer(
          // 何て言えばいいかわからない
          translation: NA.t('nanteiebaikawakaranai'),
          phraseParts: [
            FuriText(text: '何', furigana: 'なん'),
            FuriText(text: 'て'),
            FuriText(text: '言', furigana: '？', emphasize: true),
            FuriText(text: 'えば', emphasize: true),
            FuriText(text: 'いい'),
            FuriText(text: 'か'),
            FuriText(text: 'わからない'),
          ],
          answer: 'いえば',
        ),
        PhraseAnswer(
          // 言語いろいろ習いたい
          translation: NA.t('gengoiroironaraitai'),
          phraseParts: [
            FuriText(text: '言', furigana: '？', emphasize: true),
            FuriText(text: '語', furigana: 'ご', emphasize: true),
            FuriText(text: 'いろいろ'),
            FuriText(text: '習', furigana: 'なら'),
            FuriText(text: 'いたい'),
          ],
          answer: 'げんご',
        ),
        PhraseAnswer(
// 言い方が悪いよ
          translation: NA.t('iikataawaruiyo'),
          phraseParts: [
            FuriText(text: '言', furigana: '？', emphasize: true),
            FuriText(text: 'い', emphasize: true),
            FuriText(text: '方', furigana: 'かた', emphasize: true),
            FuriText(text: 'が'),
            FuriText(text: '悪', furigana: 'わる'),
            FuriText(text: 'いよ'),
          ],
          answer: 'いいかた',
        )
      ]),
  Kanji(
      translation: NA.t('体'),
      kanji: '体',
      onYomi: 'タイ, テイ',
      kunYomi: 'からだ',
      phraseAnswers: [
        PhraseAnswer(
          // 体が痛い
          translation: NA.t('karadagaitai'),
          phraseParts: [
            FuriText(text: '体', furigana: '？', emphasize: true),
            FuriText(text: 'が'),
            FuriText(text: '痛', furigana: 'いた'),
            FuriText(text: 'い'),
          ],
          answer: 'からだ',
        ),
        PhraseAnswer(
          // 一度は体験してみたい
          translation: NA.t('ichidohataikenshitemitai'),
          phraseParts: [
            FuriText(text: '一度', furigana: 'いちど'),
            FuriText(text: 'は'),
            FuriText(text: '体', furigana: '？', emphasize: true),
            FuriText(text: '験', furigana: 'けん', emphasize: true),
            FuriText(text: 'してみたい'),
          ],
          answer: 'たいけん',
        )
      ]),
  Kanji(
      translation: NA.t('作'),
      kanji: '作',
      onYomi: 'サク, サ',
      kunYomi: 'つくる, つくり',
      phraseAnswers: [
        PhraseAnswer(
          // 安全な作業
          translation: NA.t('anzennasagyou'),
          phraseParts: [
            FuriText(text: '安全', furigana: 'あんぜん'),
            FuriText(text: 'な'),
            FuriText(text: '作', furigana: '？', emphasize: true),
            FuriText(text: '業', furigana: 'ぎょう', emphasize: true)
          ],
          answer: 'さぎょう',
        ),
        PhraseAnswer(
          // 木で何かを作る
          translation: NA.t('kidenanikawotsukuru'),
          phraseParts: [
            FuriText(text: '木', furigana: 'き'),
            FuriText(text: 'で'),
            FuriText(text: '何', furigana: 'なに'),
            FuriText(text: 'かを'),
            FuriText(text: '作', furigana: '？', emphasize: true),
            FuriText(text: 'る', emphasize: true),
          ],
          answer: 'つくる',
        ),
        PhraseAnswer(
          // 作りかた教えて
          translation: NA.t('tsukurikataoshiete'),
          phraseParts: [
            FuriText(text: '作', furigana: '？', emphasize: true),
            FuriText(text: 'りかた', emphasize: true),
            FuriText(text: '教', furigana: 'おし'),
            FuriText(text: 'えて'),
          ],
          answer: 'つくりかた',
        )
      ]),
  Kanji(
      translation: NA.t('図'),
      kanji: '図',
      onYomi: 'ズ, ト',
      kunYomi: 'え, -ずみ',
      phraseAnswers: [
        PhraseAnswer(
          // 地図を見せて
          translation: NA.t('chizuwoomisete'),
          phraseParts: [
            FuriText(text: '地', furigana: 'ち', emphasize: true),
            FuriText(text: '図', furigana: '？', emphasize: true),
            FuriText(text: 'を'),
            FuriText(text: '見', furigana: 'み'),
            FuriText(text: 'せて'),
          ],
          answer: 'ちず',
        ),
        PhraseAnswer(
          // 図書館で勉強します
          translation: NA.t('toshokandebenkyoushimasu'),
          phraseParts: [
            FuriText(text: '図', furigana: '？', emphasize: true),
            FuriText(text: '書館', furigana: 'しょかん', emphasize: true),
            FuriText(text: 'で'),
            FuriText(text: '勉強', furigana: 'べんきょう'),
            FuriText(text: 'します'),
          ],
          answer: 'としょかん',
        ),
      ]),
  Kanji(
      translation: NA.t('事'),
      kanji: '事',
      onYomi: 'ジ, ズ',
      kunYomi: 'こと',
      phraseAnswers: [
        PhraseAnswer(
          // 納豆を食べた事がありますか？
          translation: NA.t('nattouwotabetakotogaarimasuka'),
          phraseParts: [
            FuriText(text: '納豆', furigana: 'なっとう'),
            FuriText(text: 'を'),
            FuriText(text: '食', furigana: 'た'),
            FuriText(text: 'べた'),
            FuriText(text: '事', furigana: '？', emphasize: true),
            FuriText(text: 'がありますか？'),
          ],
          answer: 'こと',
        ),
        PhraseAnswer(
          //　車の事故が多いいです
          translation: NA.t('kurumanojikogaooidesu'),
          phraseParts: [
            FuriText(text: '車', furigana: 'くるま'),
            FuriText(text: 'の'),
            FuriText(text: '事', furigana: '？', emphasize: true),
            FuriText(text: '故', furigana: 'こ', emphasize: true),
            FuriText(text: 'が'),
            FuriText(text: '多', furigana: 'おお'),
            FuriText(text: 'いです'),
          ],
          answer: 'じこ',
        )
      ]),
  Kanji(
      translation: NA.t('使'),
      kanji: '使',
      onYomi: 'シ',
      kunYomi: 'つかう',
      phraseAnswers: [
        PhraseAnswer(
          // お金たくさん使った
          translation: NA.t('okaneotakusantsukatta'),
          phraseParts: [
            FuriText(text: 'お金', furigana: 'おかね'),
            FuriText(text: 'たくさん'),
            FuriText(text: '使', furigana: '？', emphasize: true),
            FuriText(text: 'った', emphasize: true),
          ],
          answer: 'つかった',
        ),
        PhraseAnswer(
          // ご使用ください
          translation: NA.t('goshiyoukudasai'),
          phraseParts: [
            FuriText(text: 'ご'),
            FuriText(text: '使', furigana: '？', emphasize: true),
            FuriText(text: '用', furigana: 'よう', emphasize: true),
            FuriText(text: 'ください'),
          ],
          answer: 'しよう',
        )
      ]),
  Kanji(
      translation: NA.t('会'),
      kanji: '会',
      onYomi: 'カイ, エ',
      kunYomi: 'あ(う)',
      phraseAnswers: [
        PhraseAnswer(
          // 会社に行きます
          translation: NA.t('kaishaniikumasu'),
          phraseParts: [
            FuriText(text: '会', furigana: '？', emphasize: true),
            FuriText(text: '社', furigana: 'しゃ', emphasize: true),
            FuriText(text: 'に'),
            FuriText(text: '行', furigana: 'い'),
            FuriText(text: 'きます'),
          ],
          answer: 'かいしゃ',
        ),
        PhraseAnswer(
          // 何時に会おうか？
          translation: NA.t('nanjiniaouka'),
          phraseParts: [
            FuriText(text: '何時', furigana: 'なんじ'),
            FuriText(text: 'に'),
            FuriText(text: '会', furigana: '？', emphasize: true),
            FuriText(text: 'おう', emphasize: true),
            FuriText(text: 'か？'),
          ],
          answer: 'あおう',
        )
      ]),
  Kanji(
      translation: NA.t('住'),
      kanji: '住',
      onYomi: 'ジュウ, チュウ',
      kunYomi: 'すむ, すまう',
      phraseAnswers: [
        PhraseAnswer(
            // どこに住みたいかわからない
            translation: NA.t('dokonisumitaikawakaranai'),
            phraseParts: [
              FuriText(text: 'どこに'),
              FuriText(text: '住', furigana: '？', emphasize: true),
              FuriText(text: 'みたい', emphasize: true),
              FuriText(text: 'かわからない'),
            ],
            answer: 'すみたい'),
        PhraseAnswer(
          // 住所を教えてください
          translation: NA.t('juushowoooshietekudasai'),
          phraseParts: [
            FuriText(text: '住', furigana: '？', emphasize: true),
            FuriText(text: '所', furigana: 'しょ', emphasize: true),
            FuriText(text: 'を'),
            FuriText(text: '教', furigana: 'おし'),
            FuriText(text: 'えてください'),
          ],
          answer: 'じゅうしょ',
        ),
      ]),
  Kanji(
      translation: NA.t('曜'),
      kanji: '曜',
      onYomi: 'ヨウ',
      kunYomi: '',
      phraseAnswers: [
        PhraseAnswer(
            // 月曜日に予定がある
            translation: NA.t('getsuyoubinoyoteigaaru'),
            phraseParts: [
              FuriText(text: '月', furigana: 'げつ', emphasize: true),
              FuriText(text: '曜', furigana: '？', emphasize: true),
              FuriText(text: '日', furigana: 'び', emphasize: true),
              FuriText(text: 'に'),
              FuriText(text: '予定', furigana: 'よてい'),
              FuriText(text: 'がある'),
            ],
            answer: 'げつようび'),
        PhraseAnswer(
          //　今日は何曜日ですか？
          translation: NA.t('kyouhananyoubidesuka'),
          phraseParts: [
            FuriText(text: '今日', furigana: 'きょう'),
            FuriText(text: 'は'),
            FuriText(text: '何', furigana: 'なん', emphasize: true),
            FuriText(text: '曜', furigana: '？', emphasize: true),
            FuriText(text: '日', furigana: 'び', emphasize: true),
            FuriText(text: 'ですか？'),
          ],
          answer: 'なんようび',
        )
      ]),
  Kanji(
      translation: NA.t('安'),
      kanji: '安',
      onYomi: 'アン',
      kunYomi: 'やすい, やすまる, やす, やす(らか)',
      phraseAnswers: [
        PhraseAnswer(
            // このお店は安いです
            translation: NA.t('konoomisehayasuidesu'),
            phraseParts: [
              FuriText(text: 'このお'),
              FuriText(text: '店', furigana: 'みせ'),
              FuriText(text: '安', furigana: '？', emphasize: true),
              FuriText(text: 'い', emphasize: true),
              FuriText(text: 'です'),
            ],
            answer: 'やすい'),
        PhraseAnswer(
            // 安全な街がすきです
            translation: NA.t('anzennamachigasukidesu'),
            phraseParts: [
              FuriText(text: '安', furigana: '？', emphasize: true),
              FuriText(text: '全', furigana: 'ぜん', emphasize: true),
              FuriText(text: 'な'),
              FuriText(text: '街', furigana: 'まち'),
              FuriText(text: 'がすきです'),
            ],
            answer: 'あんぜん'),
      ]),
  Kanji(
      translation: NA.t('新'),
      kanji: '新',
      onYomi: 'しん, さん',
      kunYomi: 'アタラシイ',
      phraseAnswers: [
        PhraseAnswer(
            // 新しい車を買いました
            translation: NA.t('ataraishiikurumiokaimashita'),
            phraseParts: [
              FuriText(text: '新', furigana: '？', emphasize: true),
              FuriText(text: 'しい', emphasize: true),
              FuriText(text: '車', furigana: 'くるま'),
              FuriText(text: 'を'),
              FuriText(text: '買', furigana: 'か'),
              FuriText(text: 'いました'),
            ],
            answer: 'あたらしい'),
        PhraseAnswer(
            // 新人が二人も入った
            translation: NA.t('shinjingafutarimohaitta'),
            phraseParts: [
              FuriText(text: '新', furigana: '？', emphasize: true),
              FuriText(text: '人', furigana: 'じん', emphasize: true),
              FuriText(text: 'が'),
              FuriText(text: '二人', furigana: 'ふたり'),
              FuriText(text: 'も'),
              FuriText(text: '入', furigana: 'はい'),
              FuriText(text: 'った'),
            ],
            answer: 'しんじん'),
        PhraseAnswer(
            // 新幹線の座席
            translation: NA.t('shinkansennozaseki'),
            phraseParts: [
              FuriText(text: '新', furigana: '？', emphasize: true),
              FuriText(text: '幹線', furigana: 'かんせん', emphasize: true),
              FuriText(text: 'の'),
              FuriText(text: '座席', furigana: 'ざせき'),
            ],
            answer: 'しんかんせん'),
      ]),
  Kanji(
      translation: NA.t('古'),
      kanji: '古',
      onYomi: 'コ',
      kunYomi: 'ふる(い)',
      phraseAnswers: [
        PhraseAnswer(
            // この建物は本当に古いです
            translation: NA.t('konotatemonohontounifuruidesu'),
            phraseParts: [
              FuriText(text: 'この'),
              FuriText(text: '建物', furigana: 'たてもの'),
              FuriText(text: 'は'),
              FuriText(text: '本当', furigana: 'ほんとう'),
              FuriText(text: 'に'),
              FuriText(text: '古', furigana: '？', emphasize: true),
              FuriText(text: 'い', emphasize: true),
              FuriText(text: 'です'),
            ],
            answer: 'ふるい'),
        PhraseAnswer(
            // 中古の車を買いました
            translation: NA.t('chuuukonokurumiokaimashita'),
            phraseParts: [
              FuriText(text: '中', furigana: 'ちゅう', emphasize: true),
              FuriText(text: '古', furigana: '？', emphasize: true),
              FuriText(text: 'の'),
              FuriText(text: '車', furigana: 'くるま'),
              FuriText(text: 'を'),
              FuriText(text: '買', furigana: 'か'),
              FuriText(text: 'いました'),
            ],
            answer: 'ちゅうこ')
      ]),
  Kanji(
      translation: NA.t('明'),
      kanji: '明',
      onYomi: 'メイ, ミョウ',
      kunYomi:
          'あかり, あかるい, あかるむ, あからむ, あきらか, あける, あく, あくる, あかす', // TODO: Add more phrases
      phraseAnswers: [
        PhraseAnswer(
            // 画面が明るい
            translation: NA.t('gamengaakarui'),
            phraseParts: [
              FuriText(text: '画面', furigana: 'がめん'),
              FuriText(text: 'が'),
              FuriText(text: '明', furigana: '？', emphasize: true),
              FuriText(text: 'かるい', emphasize: true),
            ],
            answer: 'あかるい'),
        PhraseAnswer(
            // 明日は雨ですか？
            translation: NA.t('ashitahaamedesuka'),
            phraseParts: [
              FuriText(text: '明日', furigana: '？', emphasize: true),
              FuriText(text: 'は'),
              FuriText(text: '雨', furigana: 'あめ'),
              FuriText(text: 'ですか？'),
            ],
            answer: 'あした'),
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
              FuriText(text: '多', furigana: '？', emphasize: true),
              FuriText(text: 'いい', emphasize: true),
            ],
            answer: 'おおいい'),
        PhraseAnswer(
            // 彼は多分来ない
            translation: NA.t('karehatabunkonai'),
            phraseParts: [
              FuriText(text: '彼', furigana: 'かれ'),
              FuriText(text: 'は'),
              FuriText(text: '多', furigana: '？', emphasize: true),
              FuriText(text: '分', furigana: 'ぶん', emphasize: true),
              FuriText(text: '来', furigana: 'こ'),
              FuriText(text: 'ない'),
            ],
            answer: 'たぶん'),
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
              FuriText(text: '少', furigana: '？', emphasize: true),
              FuriText(text: 'し', emphasize: true),
              FuriText(text: 'だけちょうだい'),
            ],
            answer: 'すこし'),
        PhraseAnswer(
            // 少年マンガがありますか？
            translation: NA.t('shounenmangagaarimasuka'),
            phraseParts: [
              FuriText(text: '少', furigana: '？', emphasize: true),
              FuriText(text: '年', furigana: 'ねん', emphasize: true),
              FuriText(text: 'マンガ', furigana: 'manga'),
              FuriText(text: 'がありますか？')
            ],
            answer: 'しょうねん'),
        PhraseAnswer(
            // あるけど少ないよ
            translation: NA.t('arukedosukunaiyo'),
            phraseParts: [
              FuriText(text: 'あるけど'),
              FuriText(text: '少', furigana: '？', emphasize: true),
              FuriText(text: 'ない', emphasize: true),
              FuriText(text: 'よ'),
            ],
            answer: 'すくない'),
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
              FuriText(text: '色', furigana: '？', emphasize: true),
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
              FuriText(text: '黒', furigana: '？', emphasize: true),
              FuriText(text: 'い', emphasize: true),
            ],
            answer: 'くろい'),
        PhraseAnswer(
            // オバマ大統領は黒人です
            translation: NA.t('obamadaitouryouhakokujindesu'),
            phraseParts: [
              FuriText(text: 'オバマ', furigana: 'Obama'),
              FuriText(text: '大統領', furigana: 'だいとうりょう'),
              FuriText(text: 'は'),
              FuriText(text: '黒', furigana: '？', emphasize: true),
              FuriText(text: '人', furigana: 'じん', emphasize: true),
              FuriText(text: 'です'),
            ],
            answer: 'こくじん'),
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
              FuriText(text: '赤', furigana: '？', emphasize: true),
              FuriText(text: 'い', emphasize: true),
              FuriText(text: 'よ'),
            ],
            answer: 'あかい'),
        PhraseAnswer(
            // 赤ちゃんが小さい
            translation: NA.t('akachangachiisai'),
            phraseParts: [
              FuriText(text: '赤', furigana: '？', emphasize: true),
              FuriText(text: 'ちゃん', emphasize: true),
              FuriText(text: 'が'),
              FuriText(text: '小', furigana: 'ち'),
              FuriText(text: 'さい'),
            ],
            answer: 'あかちゃん'),
        PhraseAnswer(
            // 赤色が好き？
            translation: NA.t('kiirogasuki'),
            phraseParts: [
              FuriText(text: '赤', furigana: '？', emphasize: true),
              FuriText(text: '色', furigana: 'いろ', emphasize: true),
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
              FuriText(text: '青', furigana: '？', emphasize: true),
              FuriText(text: 'い', emphasize: true),
              FuriText(text: 'よね？'),
            ],
            answer: 'あおい'),
        PhraseAnswer(
            // 青春期とは何歳まで？
            translation: NA.t('seinshunkitohanisaimadedesuka'),
            phraseParts: [
              FuriText(text: '青', furigana: '？', emphasize: true),
              FuriText(text: '春期', furigana: 'しゅんき', emphasize: true),
              FuriText(text: 'とは'),
              FuriText(text: '何歳', furigana: 'なんさい'),
              FuriText(text: 'までですか？'),
            ],
            answer: 'せいしゅんき'),
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
              FuriText(text: 'お', emphasize: true),
              FuriText(text: '茶', furigana: '？', emphasize: true),
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
              FuriText(text: '茶', furigana: '？', emphasize: true),
              FuriText(text: '色', furigana: 'いろ', emphasize: true),
              FuriText(text: 'い', emphasize: true),
              FuriText(text: '家', furigana: 'いえ'),
              FuriText(text: 'がいい'),
            ],
            answer: 'ちゃいろい'),
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
              FuriText(text: '飲', furigana: '？', emphasize: true),
              FuriText(text: 'み', emphasize: true),
              FuriText(text: '物', furigana: 'もの', emphasize: true),
              FuriText(text: 'を'),
              FuriText(text: '買', furigana: 'か'),
              FuriText(text: 'いました'),
            ],
            answer: 'のみもの'),
        PhraseAnswer(
            // 飲みに行こう
            translation: NA.t('nominikou'),
            phraseParts: [
              FuriText(text: '飲', furigana: '？', emphasize: true),
              FuriText(text: 'み', emphasize: true),
              FuriText(text: 'に'),
              FuriText(text: '行', furigana: 'い'),
              FuriText(text: 'こう'),
            ],
            answer: 'のみ'),
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
              FuriText(text: '買', furigana: '？', emphasize: true),
              FuriText(text: 'い', emphasize: true),
              FuriText(text: '物', furigana: 'もの', emphasize: true),
              FuriText(text: 'がすき？')
            ],
            answer: 'かいもの'),
        // PhraseAnswer(
        //     // 近くに販売機がある？
        //     //TODO: need to check
        //     translation: NA.t('konochikakunihanbaikigaaru'),
        //     phraseParts: [
        //       FuriText(text: '近', furigana: 'ちか'),
        //       FuriText(text: 'くに'),
        //       FuriText(text: '販売機', furigana: 'はん？き', emphasize: true),
        //       FuriText(text: 'がある？')
        //     ],
        //     answer: 'はんばいき'),
        PhraseAnswer(
            // 何を買うの？
            translation: NA.t('naniwokauno'),
            phraseParts: [
              FuriText(text: '何', furigana: 'なに'),
              FuriText(text: 'を'),
              FuriText(text: '買', furigana: '？', emphasize: true),
              FuriText(text: 'う', emphasize: true),
              FuriText(text: 'の？'),
            ],
            answer: 'かう'),
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
              FuriText(text: '立', furigana: '？', emphasize: true),
              FuriText(text: 'って', emphasize: true),
              FuriText(text: 'ください'),
            ],
            answer: 'たって'),
        PhraseAnswer(
            // 国立大学
            translation: NA.t('kokuritsudaigaku'),
            phraseParts: [
              FuriText(text: '国', furigana: 'こく', emphasize: true),
              FuriText(text: '立', furigana: '？', emphasize: true),
              FuriText(text: '大学', furigana: 'だいがく'),
            ],
            answer: 'こくりつ'),
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
              FuriText(text: 'お', emphasize: true),
              FuriText(text: '帰', furigana: '？', emphasize: true),
              FuriText(text: 'り', emphasize: true),
              FuriText(text: 'なさい'),
            ],
            answer: 'おかえり'),
        PhraseAnswer(
            // おねえさんは帰国しました
            translation: NA.t('oneesanhakikokushimashita'),
            phraseParts: [
              FuriText(text: 'おねえさんは'),
              FuriText(text: '帰', furigana: '？', emphasize: true),
              FuriText(text: '国', furigana: 'こく', emphasize: true),
              FuriText(text: 'しました'),
            ],
            answer: 'きこく'),
        PhraseAnswer(
            // ただの日帰り旅行だったよ
            translation: NA.t('tadanohigaeriryokoudattayo'),
            phraseParts: [
              FuriText(text: 'ただの'),
              FuriText(text: '日', furigana: 'ひ', emphasize: true),
              FuriText(text: '帰', furigana: '？', emphasize: true),
              FuriText(text: 'り', emphasize: true),
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
              FuriText(text: '開', furigana: '？', emphasize: true),
              FuriText(text: 'けて', emphasize: true),
            ],
            answer: 'あけて',
            translation: NA.t('mewoakete')),
        PhraseAnswer(
            // 何時に開く？
            translation: NA.t('nanjiniaku'),
            phraseParts: [
              FuriText(text: '何時', furigana: 'なんじ'),
              FuriText(text: 'に'),
              FuriText(text: '開', furigana: '？', emphasize: true),
              FuriText(text: 'く', emphasize: true),
              FuriText(text: '？'),
            ],
            answer: 'あく'),
        PhraseAnswer(
            // メニューを開いて
            translation: NA.t('menuwohiraite'),
            phraseParts: [
              FuriText(text: 'メニューを'),
              FuriText(text: '開', furigana: '？', emphasize: true),
              FuriText(text: 'いて', emphasize: true),
            ],
            answer: 'ひらいて'),
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
              FuriText(text: '山', furigana: 'やま', emphasize: true),
              FuriText(text: '田', furigana: '？', emphasize: true),
              FuriText(text: 'さん'),
            ],
            answer: 'やまだ'),
        PhraseAnswer(
            // 田舎に住んでいる
            translation: NA.t('inakanisunderu'),
            phraseParts: [
              FuriText(
                  text: '田舎',
                  furigana: '？',
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
              FuriText(text: '成', furigana: 'なり', emphasize: true),
              FuriText(text: '田', furigana: '？', emphasize: true),
              FuriText(text: '空港', furigana: 'くうこう'),
            ],
            answer: 'なりた'),
      ]),
];
