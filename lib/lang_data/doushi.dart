import 'package:nalelu/furi_text.dart';
import 'package:nalelu/na_helpers.dart';

var doushiBank = [
  Doushi(
    isIrregular: false,
    infinitive: '遊ぶ',
    infinitiveFurigana: 'あそ',
    root: '遊び',
    translation: NA.t('asobu'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'あそぶ', kanjiWord: '遊ぶ'),
      pastSimple: JWord(kanaWord: 'あそんだ', kanjiWord: '遊んだ'),
      negative: JWord(kanaWord: 'あそばない', kanjiWord: '遊ばない'),
      negativePast: JWord(kanaWord: 'あそばなかった', kanjiWord: '遊ばなかった'),
      presentProgressive: JWord(kanaWord: 'あそんでいる', kanjiWord: '遊んでいる'),
      negativePresentProgressive:
          JWord(kanaWord: 'あそんでいない', kanjiWord: '遊んでいない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '開ける',
    infinitiveFurigana: 'あける',
    root: '開け',
    translation: NA.t('akeru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'あける', kanjiWord: '開ける'),
      pastSimple: JWord(kanaWord: 'あけた', kanjiWord: '開けた'),
      negative: JWord(kanaWord: 'あけない', kanjiWord: '開けない'),
      negativePast: JWord(kanaWord: 'あけなかった', kanjiWord: '開けなかった'),
      presentProgressive: JWord(kanaWord: 'あけている', kanjiWord: '開けている'),
      negativePresentProgressive:
          JWord(kanaWord: 'あけていない', kanjiWord: '開けていない'),
    ),
  ),
Doushi(
    isIrregular: false,
    infinitive: '出る',
    infinitiveFurigana: 'でる',
    root: '出',
    translation: NA.t('deru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'でる', kanjiWord: '出る'),
      pastSimple: JWord(kanaWord: 'でた', kanjiWord: '出た'),
      negative: JWord(kanaWord: 'でない', kanjiWord: '出ない'),
      negativePast: JWord(kanaWord: 'でなかった', kanjiWord: '出なかった'),
      presentProgressive: JWord(kanaWord: 'でている', kanjiWord: '出ている'),
      negativePresentProgressive:
          JWord(kanaWord: 'でていない', kanjiWord: '出ていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '届ける',
    infinitiveFurigana: 'とどける',
    root: '届け',
    translation: NA.t('todokeru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'とどける', kanjiWord: '届ける'),
      pastSimple: JWord(kanaWord: 'とどけた', kanjiWord: '届けた'),
      negative: JWord(kanaWord: 'とどけない', kanjiWord: '届けない'),
      negativePast: JWord(kanaWord: 'とどけなかった', kanjiWord: '届けなかった'),
      presentProgressive: JWord(kanaWord: 'とどけている', kanjiWord: '届けている'),
      negativePresentProgressive:
          JWord(kanaWord: 'とどけていない', kanjiWord: '届けていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '焼く',
    infinitiveFurigana: 'やく',
    root: '焼き',
    translation: NA.t('yaku'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'やく', kanjiWord: '焼く'),
      pastSimple: JWord(kanaWord: 'やいた', kanjiWord: '焼いた'),
      negative: JWord(kanaWord: 'やかない', kanjiWord: '焼かない'),
      negativePast: JWord(kanaWord: 'やかなかった', kanjiWord: '焼かなかった'),
      presentProgressive: JWord(kanaWord: 'やいている', kanjiWord: '焼いている'),
      negativePresentProgressive:
          JWord(kanaWord: 'やいていない', kanjiWord: '焼いていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '混ぜる',
    infinitiveFurigana: 'まぜる',
    root: '混ぜ',
    translation: NA.t('mazeru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'まぜる', kanjiWord: '混ぜる'),
      pastSimple: JWord(kanaWord: 'まぜた', kanjiWord: '混ぜた'),
      negative: JWord(kanaWord: 'まぜない', kanjiWord: '混ぜない'),
      negativePast: JWord(kanaWord: 'まぜなかった', kanjiWord: '混ぜなかった'),
      presentProgressive: JWord(kanaWord: 'まぜている', kanjiWord: '混ぜている'),
      negativePresentProgressive:
          JWord(kanaWord: 'まぜていない', kanjiWord: '混ぜていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '磨く',
    infinitiveFurigana: 'みがく',
    root: '磨き',
    translation: NA.t('migaku'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'みがく', kanjiWord: '磨く'),
      pastSimple: JWord(kanaWord: 'みがいた', kanjiWord: '磨いた'),
      negative: JWord(kanaWord: 'みがかない', kanjiWord: '磨かない'),
      negativePast: JWord(kanaWord: 'みがかなかった', kanjiWord: '磨かなかった'),
      presentProgressive: JWord(kanaWord: 'みがいている', kanjiWord: '磨いている'),
      negativePresentProgressive:
          JWord(kanaWord: 'みがいていない', kanjiWord: '磨いていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '触る',
    infinitiveFurigana: 'さわる',
    root: '触り',
    translation: NA.t('sawaru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'さわる', kanjiWord: '触る'),
      pastSimple: JWord(kanaWord: 'さわった', kanjiWord: '触った'),
      negative: JWord(kanaWord: 'さわらない', kanjiWord: '触らない'),
      negativePast: JWord(kanaWord: 'さわらなかった', kanjiWord: '触らなかった'),
      presentProgressive: JWord(kanaWord: 'さわっている', kanjiWord: '触っている'),
      negativePresentProgressive:
          JWord(kanaWord: 'さわっていない', kanjiWord: '触っていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '着る',
    infinitiveFurigana: 'きる',
    root: '着',
    translation: NA.t('kiru_wear'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'きる', kanjiWord: '着る'),
      pastSimple: JWord(kanaWord: 'きた', kanjiWord: '着た'),
      negative: JWord(kanaWord: 'きない', kanjiWord: '着ない'),
      negativePast: JWord(kanaWord: 'きなかった', kanjiWord: '着なかった'),
      presentProgressive: JWord(kanaWord: 'きている', kanjiWord: '着ている'),
      negativePresentProgressive: JWord(kanaWord: 'きていない', kanjiWord: '着ていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '切る',
    infinitiveFurigana: 'きる',
    root: '切り',
    translation: NA.t('kiru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'きる', kanjiWord: '切る'),
      pastSimple: JWord(kanaWord: 'きった', kanjiWord: '切った'),
      negative: JWord(kanaWord: 'きらない', kanjiWord: '切らない'),
      negativePast: JWord(kanaWord: 'きらなかった', kanjiWord: '切らなかった'),
      presentProgressive: JWord(kanaWord: 'きっている', kanjiWord: '切っている'),
      negativePresentProgressive:
          JWord(kanaWord: 'きっていない', kanjiWord: '切っていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '寝る',
    infinitiveFurigana: 'ねる',
    root: '寝',
    translation: NA.t('neru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'ねる', kanjiWord: '寝る'),
      pastSimple: JWord(kanaWord: 'ねた', kanjiWord: '寝た'),
      negative: JWord(kanaWord: 'ねない', kanjiWord: '寝ない'),
      negativePast: JWord(kanaWord: 'ねなかった', kanjiWord: '寝なかった'),
      presentProgressive: JWord(kanaWord: 'ねている', kanjiWord: '寝ている'),
      negativePresentProgressive: JWord(kanaWord: 'ねていない', kanjiWord: '寝ていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '浴びる',
    infinitiveFurigana: 'あびる',
    root: '浴び',
    translation: NA.t('abiru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'あびる', kanjiWord: '浴びる'),
      pastSimple: JWord(kanaWord: 'あびた', kanjiWord: '浴びた'),
      negative: JWord(kanaWord: 'あびない', kanjiWord: '浴びない'),
      negativePast: JWord(kanaWord: 'あびなかった', kanjiWord: '浴びなかった'),
      presentProgressive: JWord(kanaWord: 'あびている', kanjiWord: '浴びている'),
      negativePresentProgressive:
          JWord(kanaWord: 'あびていない', kanjiWord: '浴びていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '住む',
    infinitiveFurigana: 'すむ',
    root: '住み',
    translation: NA.t('sumu'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'すむ', kanjiWord: '住む'),
      pastSimple: JWord(kanaWord: 'すんだ', kanjiWord: '住んだ'),
      negative: JWord(kanaWord: 'すまない', kanjiWord: '住まない'),
      negativePast: JWord(kanaWord: 'すまなかった', kanjiWord: '住まなかった'),
      presentProgressive: JWord(kanaWord: 'すんでいる', kanjiWord: '住んでいる'),
      negativePresentProgressive:
          JWord(kanaWord: 'すんでいない', kanjiWord: '住んでいない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '洗う',
    infinitiveFurigana: 'あらう',
    root: '洗い',
    translation: NA.t('to wash'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'あらう', kanjiWord: '洗う'),
      pastSimple: JWord(kanaWord: 'あらった', kanjiWord: '洗った'),
      negative: JWord(kanaWord: 'あらわない', kanjiWord: '洗わない'),
      negativePast: JWord(kanaWord: 'あらわなかった', kanjiWord: '洗わなかった'),
      presentProgressive: JWord(kanaWord: 'あらっている', kanjiWord: '洗っている'),
      negativePresentProgressive:
          JWord(kanaWord: 'あらっていない', kanjiWord: '洗っていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '付ける',
    infinitiveFurigana: 'つける',
    root: '付け',
    translation: NA.t('to attach'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'つける', kanjiWord: '付ける'),
      pastSimple: JWord(kanaWord: 'つけた', kanjiWord: '付けた'),
      negative: JWord(kanaWord: 'つけない', kanjiWord: '付けない'),
      negativePast: JWord(kanaWord: 'つけなかった', kanjiWord: '付けなかった'),
      presentProgressive: JWord(kanaWord: 'つけている', kanjiWord: '付けている'),
      negativePresentProgressive:
          JWord(kanaWord: 'つけていない', kanjiWord: '付けていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '飲む',
    infinitiveFurigana: 'の',
    root: '飲み',
    translation: NA.t('nomu'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'のむ', kanjiWord: '飲む'),
      pastSimple: JWord(kanaWord: 'のんだ', kanjiWord: '飲んだ'),
      negative: JWord(kanaWord: 'のまない', kanjiWord: '飲まない'),
      negativePast: JWord(kanaWord: 'のまなかった', kanjiWord: '飲まなかった'),
      presentProgressive: JWord(kanaWord: 'のんでいる', kanjiWord: '飲んでいる'),
      negativePresentProgressive:
          JWord(kanaWord: 'のんでいない', kanjiWord: '飲んでいない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '帰る',
    infinitiveFurigana: 'かえ',
    root: '帰り',
    translation: NA.t('kaeru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'かえる', kanjiWord: '帰る'),
      pastSimple: JWord(kanaWord: 'かえった', kanjiWord: '帰った'),
      negative: JWord(kanaWord: 'かえらない', kanjiWord: '帰らない'),
      negativePast: JWord(kanaWord: 'かえらなかった', kanjiWord: '帰らなかった'),
      presentProgressive: JWord(kanaWord: 'かえっている', kanjiWord: '帰っている'),
      negativePresentProgressive:
          JWord(kanaWord: 'かえっていない', kanjiWord: '帰っていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '使う',
    infinitiveFurigana: 'つか',
    root: '使い',
    translation: NA.t('tsukau'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'つかう', kanjiWord: '使う'),
      pastSimple: JWord(kanaWord: 'つかった', kanjiWord: '使った'),
      negative: JWord(kanaWord: 'つかわない', kanjiWord: '使わない'),
      negativePast: JWord(kanaWord: 'つかわなかった', kanjiWord: '使わなかった'),
      presentProgressive: JWord(kanaWord: 'つかっている', kanjiWord: '使っている'),
      negativePresentProgressive:
          JWord(kanaWord: 'つかっていない', kanjiWord: '使っていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '学ぶ',
    infinitiveFurigana: 'まな',
    root: '学び',
    translation: NA.t('manabu'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'まなぶ', kanjiWord: '学ぶ'),
      pastSimple: JWord(kanaWord: 'まなんだ', kanjiWord: '学んだ'),
      negative: JWord(kanaWord: 'まなばない', kanjiWord: '学ばない'),
      negativePast: JWord(kanaWord: 'まなばなかった', kanjiWord: '学ばなかった'),
      presentProgressive: JWord(kanaWord: 'まなんでいる', kanjiWord: '学んでいる'),
      negativePresentProgressive:
          JWord(kanaWord: 'まなんでいない', kanjiWord: '学んでいない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '受ける',
    infinitiveFurigana: 'うける',
    root: '受け',
    translation: NA.t('ukeru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'うける', kanjiWord: '受ける'),
      pastSimple: JWord(kanaWord: 'うけた', kanjiWord: '受けた'),
      negative: JWord(kanaWord: 'うけない', kanjiWord: '受けない'),
      negativePast: JWord(kanaWord: 'うけなかった', kanjiWord: '受けなかった'),
      presentProgressive: JWord(kanaWord: 'うけている', kanjiWord: '受けている'),
      negativePresentProgressive:
          JWord(kanaWord: 'うけていない', kanjiWord: '受けていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '作る',
    infinitiveFurigana: 'つくる',
    root: '作',
    translation: NA.t('tsukuru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'つくる', kanjiWord: '作る'),
      pastSimple: JWord(kanaWord: 'つくった', kanjiWord: '作った'),
      negative: JWord(kanaWord: 'つくらない', kanjiWord: '作らない'),
      negativePast: JWord(kanaWord: 'つくらなかった', kanjiWord: '作らなかった'),
      presentProgressive: JWord(kanaWord: 'つくっている', kanjiWord: '作っている'),
      negativePresentProgressive:
          JWord(kanaWord: 'つくっていない', kanjiWord: '作っていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '着く',
    infinitiveFurigana: 'つく',
    root: '着',
    translation: NA.t('tsuku'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'つく', kanjiWord: '着く'),
      pastSimple: JWord(kanaWord: 'ついた', kanjiWord: '着いた'),
      negative: JWord(kanaWord: 'つかない', kanjiWord: '着かない'),
      negativePast: JWord(kanaWord: 'つかなかった', kanjiWord: '着かなかった'),
      presentProgressive: JWord(kanaWord: 'ついている', kanjiWord: '着いている'),
      negativePresentProgressive:
          JWord(kanaWord: 'ついていない', kanjiWord: '着いていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '会う',
    infinitiveFurigana: 'あう',
    root: '会い',
    translation: NA.t('au'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'あう', kanjiWord: '会う'),
      pastSimple: JWord(kanaWord: 'あった', kanjiWord: '会った'),
      negative: JWord(kanaWord: 'あわない', kanjiWord: '会わない'),
      negativePast: JWord(kanaWord: 'あわなかった', kanjiWord: '会わなかった'),
      presentProgressive: JWord(kanaWord: 'あっている', kanjiWord: '会っている'),
      negativePresentProgressive:
          JWord(kanaWord: 'あっていない', kanjiWord: '会っていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '呼ぶ',
    infinitiveFurigana: 'よぶ',
    root: '呼び',
    translation: NA.t('yobu'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'よぶ', kanjiWord: '呼ぶ'),
      pastSimple: JWord(kanaWord: 'よんだ', kanjiWord: '呼んだ'),
      negative: JWord(kanaWord: 'よばない', kanjiWord: '呼ばない'),
      negativePast: JWord(kanaWord: 'よばなかった', kanjiWord: '呼ばなかった'),
      presentProgressive: JWord(kanaWord: 'よんでいる', kanjiWord: '呼んでいる'),
      negativePresentProgressive:
          JWord(kanaWord: 'よんでいない', kanjiWord: '呼んでいない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '置く',
    infinitiveFurigana: 'おく',
    root: '置き',
    translation: NA.t('oku'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'おく', kanjiWord: '置く'),
      pastSimple: JWord(kanaWord: 'おいた', kanjiWord: '置いた'),
      negative: JWord(kanaWord: 'おかない', kanjiWord: '置かない'),
      negativePast: JWord(kanaWord: 'おかなかった', kanjiWord: '置かなかった'),
      presentProgressive: JWord(kanaWord: 'おいている', kanjiWord: '置いている'),
      negativePresentProgressive:
          JWord(kanaWord: 'おいていない', kanjiWord: '置いていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '言う',
    infinitiveFurigana: 'いう',
    root: '言い',
    translation: NA.t('iu'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'いう', kanjiWord: '言う'),
      pastSimple: JWord(kanaWord: 'いった', kanjiWord: '言った'),
      negative: JWord(kanaWord: 'いわない', kanjiWord: '言わない'),
      negativePast: JWord(kanaWord: 'いわなかった', kanjiWord: '言わなかった'),
      presentProgressive: JWord(kanaWord: 'いっている', kanjiWord: '言っている'),
      negativePresentProgressive:
          JWord(kanaWord: 'いっていない', kanjiWord: '言っていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '送る',
    infinitiveFurigana: 'おくる',
    root: '送り',
    translation: NA.t('okuru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'おくる', kanjiWord: '送る'),
      pastSimple: JWord(kanaWord: 'おくった', kanjiWord: '送った'),
      negative: JWord(kanaWord: 'おくらない', kanjiWord: '送らない'),
      negativePast: JWord(kanaWord: 'おくらなかった', kanjiWord: '送らなかった'),
      presentProgressive: JWord(kanaWord: 'おくっている', kanjiWord: '送っている'),
      negativePresentProgressive:
          JWord(kanaWord: 'おくっていない', kanjiWord: '送っていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '待つ',
    infinitiveFurigana: 'まつ',
    root: '待ち',
    translation: NA.t('matsu'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'まつ', kanjiWord: '待つ'),
      pastSimple: JWord(kanaWord: 'まった', kanjiWord: '待った'),
      negative: JWord(kanaWord: 'またない', kanjiWord: '待たない'),
      negativePast: JWord(kanaWord: 'またなかった', kanjiWord: '待たなかった'),
      presentProgressive: JWord(kanaWord: 'まっている', kanjiWord: '待っている'),
      negativePresentProgressive:
          JWord(kanaWord: 'まっていない', kanjiWord: '待っていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '食べる',
    infinitiveFurigana: 'たべる',
    root: '食べ',
    translation: NA.t('taberu'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'たべる', kanjiWord: '食べる'),
      pastSimple: JWord(kanaWord: 'たべた', kanjiWord: '食べた'),
      negative: JWord(kanaWord: 'たべない', kanjiWord: '食べない'),
      negativePast: JWord(kanaWord: 'たべなかった', kanjiWord: '食べなかった'),
      presentProgressive: JWord(kanaWord: 'たべている', kanjiWord: '食べている'),
      negativePresentProgressive:
          JWord(kanaWord: 'たべていない', kanjiWord: '食べていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '行く',
    infinitiveFurigana: 'いく',
    root: '行き',
    translation: NA.t('iku'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'いく', kanjiWord: '行く'),
      pastSimple: JWord(kanaWord: 'いった', kanjiWord: '行った'),
      negative: JWord(kanaWord: 'いかない', kanjiWord: '行かない'),
      negativePast: JWord(kanaWord: 'いかなかった', kanjiWord: '行かなかった'),
      presentProgressive: JWord(kanaWord: 'いっている', kanjiWord: '行っている'),
      negativePresentProgressive:
          JWord(kanaWord: 'いっていない', kanjiWord: '行っていない'),
    ),
  ),
  Doushi(
    isIrregular: true,
    infinitive: '持つ',
    infinitiveFurigana: 'も',
    root: '持ち',
    translation: NA.t('motsu'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'もつ', kanjiWord: '持つ'),
      pastSimple: JWord(kanaWord: 'もった', kanjiWord: '持った'),
      negative: JWord(kanaWord: 'もたない', kanjiWord: '持たない'),
      negativePast: JWord(kanaWord: 'もたなかった', kanjiWord: '持たなかった'),
      presentProgressive: JWord(kanaWord: 'もっている', kanjiWord: '持っている'),
      negativePresentProgressive:
          JWord(kanaWord: 'もっていない', kanjiWord: '持っていない'),
    ),
  ),
  Doushi(
    isIrregular: true,
    infinitive: '聞く',
    infinitiveFurigana: 'き',
    root: '聞き',
    translation: NA.t('kiku'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'きく', kanjiWord: '聞く'),
      pastSimple: JWord(kanaWord: 'きいた', kanjiWord: '聞いた'),
      negative: JWord(kanaWord: 'きかない', kanjiWord: '聞かない'),
      negativePast: JWord(kanaWord: 'きかなかった', kanjiWord: '聞かなかった'),
      presentProgressive: JWord(kanaWord: 'きいている', kanjiWord: '聞いている'),
      negativePresentProgressive:
          JWord(kanaWord: 'きいていない', kanjiWord: '聞いていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '見る',
    infinitiveFurigana: 'み',
    root: '見',
    translation: NA.t('miru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'みる', kanjiWord: '見る'),
      pastSimple: JWord(kanaWord: 'みた', kanjiWord: '見た'),
      negative: JWord(kanaWord: 'みない', kanjiWord: '見ない'),
      negativePast: JWord(kanaWord: 'みなかった', kanjiWord: "見なかった"),
      presentProgressive: JWord(kanaWord: 'みている', kanjiWord: '見ている'),
      negativePresentProgressive: JWord(kanaWord: 'みていない', kanjiWord: '見ていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '入る',
    infinitiveFurigana: 'はい',
    root: '入り',
    translation: NA.t('hairu'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'はいる', kanjiWord: '入る'),
      pastSimple: JWord(kanaWord: 'はいった', kanjiWord: '入った'),
      negative: JWord(kanaWord: 'はいらない', kanjiWord: '入らない'),
      negativePast: JWord(kanaWord: 'はいらなかった', kanjiWord: '入らなかった'),
      presentProgressive: JWord(kanaWord: 'はいっている', kanjiWord: '入っている'),
      negativePresentProgressive:
          JWord(kanaWord: 'はいっていない', kanjiWord: '入っていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '来る',
    infinitiveFurigana: 'く',
    root: 'き',
    translation: NA.t('kuru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'くる', kanjiWord: '来る'),
      pastSimple: JWord(kanaWord: 'くた', kanjiWord: '来た'),
      negative: JWord(kanaWord: 'くない', kanjiWord: '来ない'),
      negativePast: JWord(kanaWord: 'くなかった', kanjiWord: '来なかった'),
      presentProgressive: JWord(kanaWord: 'きている', kanjiWord: '来ている'),
      negativePresentProgressive: JWord(kanaWord: 'きていない', kanjiWord: '来ていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: 'なる',
    infinitiveFurigana: 'なる',
    root: 'なり',
    translation: NA.t('naru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'なる', kanjiWord: '成る'),
      pastSimple: JWord(kanaWord: 'なった', kanjiWord: '成った'),
      negative: JWord(kanaWord: 'ならない', kanjiWord: '成らない'),
      negativePast: JWord(kanaWord: 'ならなかった', kanjiWord: '成らなかった'),
      presentProgressive: JWord(kanaWord: 'なっている', kanjiWord: '成っている'),
      negativePresentProgressive:
          JWord(kanaWord: 'なっていない', kanjiWord: '成っていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '走る',
    infinitiveFurigana: 'はし',
    root: '走り',
    translation: NA.t('hashiru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'はしる', kanjiWord: '走る'),
      pastSimple: JWord(kanaWord: 'はしった', kanjiWord: '走った'),
      negative: JWord(kanaWord: 'はしらない', kanjiWord: '走らない'),
      negativePast: JWord(kanaWord: 'はしらなかった', kanjiWord: '走らなかった'),
      presentProgressive: JWord(kanaWord: 'はしっている', kanjiWord: '走っている'),
      negativePresentProgressive:
          JWord(kanaWord: 'はしっていない', kanjiWord: '走っていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: 'する',
    infinitiveFurigana: 'する',
    root: '',
    translation: NA.t('suru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'する'),
      pastSimple: JWord(kanaWord: 'した'),
      negative: JWord(kanaWord: 'しない'),
      negativePast: JWord(kanaWord: 'しなかった'),
      presentProgressive: JWord(kanaWord: 'している'),
      negativePresentProgressive: JWord(kanaWord: 'していない'),
    ),
  ),
  Doushi(
    isIrregular: true,
    infinitive: '歩く',
    infinitiveFurigana: 'ある',
    root: '歩き',
    translation: NA.t('aruku'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'あるく', kanjiWord: '歩く'),
      pastSimple: JWord(kanaWord: 'あるいた', kanjiWord: '歩いた'),
      negative: JWord(kanaWord: 'あるかない', kanjiWord: '歩かない'),
      negativePast: JWord(kanaWord: 'あるかなかった', kanjiWord: '歩かなかった'),
      presentProgressive: JWord(kanaWord: 'あるいている', kanjiWord: '歩いている'),
      negativePresentProgressive:
          JWord(kanaWord: 'あるいていない', kanjiWord: '歩いていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '居る',
    infinitiveFurigana: 'い',
    root: '居',
    translation: NA.t('iru_to_be'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'いる', kanjiWord: '居る'),
      pastSimple: JWord(kanaWord: 'いた', kanjiWord: '居た'),
      negative: JWord(kanaWord: 'いない', kanjiWord: '居ない'),
      negativePast: JWord(kanaWord: 'いなかった', kanjiWord: '居なかった'),
      presentProgressive: JWord(kanaWord: '', kanjiWord: ''),
      negativePresentProgressive: JWord(kanaWord: '', kanjiWord: ''),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '要る',
    infinitiveFurigana: 'い',
    root: '要り',
    translation: NA.t('iru_need'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'いる', kanjiWord: '要る'),
      pastSimple: JWord(kanaWord: 'いった', kanjiWord: '要った'),
      negative: JWord(kanaWord: 'いらない', kanjiWord: '要らない'),
      negativePast: JWord(kanaWord: 'いらなかった', kanjiWord: '要らなかった'),
      presentProgressive: JWord(kanaWord: 'いっている', kanjiWord: '要っている'),
      negativePresentProgressive:
          JWord(kanaWord: 'いっていない', kanjiWord: '要っていない'),
    ),
  ),
  Doushi(
      isIrregular: false,
      infinitive: '話す',
      infinitiveFurigana: 'はなす',
      root: '話し',
      translation: NA.t('hanasu'),
      casual: DoushiConj(
        present: JWord(kanaWord: 'はなす', kanjiWord: '話す'),
        pastSimple: JWord(kanaWord: 'はなした', kanjiWord: '話した'),
        negative: JWord(kanaWord: 'はなさない', kanjiWord: '話さない'),
        negativePast: JWord(kanaWord: 'はなさなかった', kanjiWord: '話さなかった'),
        presentProgressive: JWord(kanaWord: 'はなしている', kanjiWord: '話している'),
        negativePresentProgressive:
            JWord(kanaWord: 'はなしていない', kanjiWord: '話していない'),
      )),
  Doushi(
      isIrregular: false,
      infinitive: '読む',
      infinitiveFurigana: 'よむ',
      root: '読み',
      translation: NA.t('yomu'),
      casual: DoushiConj(
        present: JWord(kanaWord: 'よむ', kanjiWord: '読む'),
        pastSimple: JWord(kanaWord: 'よんだ', kanjiWord: '読んだ'),
        negative: JWord(kanaWord: 'よまない', kanjiWord: '読まない'),
        negativePast: JWord(kanaWord: 'よまなかった', kanjiWord: '読まなかった'),
        presentProgressive: JWord(kanaWord: 'よんでいる', kanjiWord: '読んでいる'),
        negativePresentProgressive:
            JWord(kanaWord: 'よんでいない', kanjiWord: '読んでいない'),
      )),
  Doushi(
      isIrregular: false,
      infinitive: '書く',
      infinitiveFurigana: 'かく',
      root: '書き',
      translation: NA.t('kaku'),
      casual: DoushiConj(
        present: JWord(kanaWord: 'かく', kanjiWord: '書く'),
        pastSimple: JWord(kanaWord: 'かいた', kanjiWord: '書いた'),
        negative: JWord(kanaWord: 'かかない', kanjiWord: '書かない'),
        negativePast: JWord(kanaWord: 'かかなかった', kanjiWord: '書かなかった'),
        presentProgressive: JWord(kanaWord: 'かいている', kanjiWord: '書いている'),
        negativePresentProgressive:
            JWord(kanaWord: 'かいていない', kanjiWord: '書いていない'),
      )),
  Doushi(
      isIrregular: false,
      infinitive: '泳ぐ',
      infinitiveFurigana: 'およぐ',
      root: '泳ぎ',
      translation: NA.t('oyogu'),
      casual: DoushiConj(
        present: JWord(kanaWord: 'およぐ', kanjiWord: '泳ぐ'),
        pastSimple: JWord(kanaWord: 'およいだ', kanjiWord: '泳いだ'),
        negative: JWord(kanaWord: 'およがない', kanjiWord: '泳がない'),
        negativePast: JWord(kanaWord: 'およがなかった', kanjiWord: '泳がなかった'),
        presentProgressive: JWord(kanaWord: 'およいでいる', kanjiWord: '泳いでいる'),
        negativePresentProgressive:
            JWord(kanaWord: 'およいでいない', kanjiWord: '泳いでいない'),
      ))
];

class Doushi {
  final String infinitive;
  final String infinitiveFurigana;
  final String root;

  final DoushiConj casual;
  final bool isIrregular;
  final String translation;

  Doushi({
    required this.infinitive,
    required this.infinitiveFurigana,
    required this.root,
    required this.casual,
    required this.translation,
    required this.isIrregular,
  });
}

class DoushiConj {
  final JWord present;
  final JWord pastSimple;
  final JWord negative;
  final JWord negativePast;
  final JWord presentProgressive;
  final JWord negativePresentProgressive;

  DoushiConj({
    required this.present,
    required this.pastSimple,
    required this.negative,
    required this.negativePast,
    required this.presentProgressive,
    required this.negativePresentProgressive,
  });
}

class JWord {
  String kanjiWord;
  final String kanaWord;
  JWord({
    this.kanjiWord = '',
    required this.kanaWord,
  });

  int stringDifferenceKana(String kanaWord, String kanjiWord) {
    int index = 0;
    for (var i = 0; i < kanjiWord.length; i++) {
      if (!kanaWord.contains(kanjiWord[i])) index = i;
    }
    return index;
  }

  int stringDifferenceKanji(String kanaWord, String kanjiWord) {
    var difference = kanaWord.length - kanjiWord.length;
    for (var i = kanaWord.length - 1; i > 0; --i) {
      if (kanaWord[i] != kanjiWord[i - difference]) {
        return i;
      }
    }
    return 0;
  }

  List<FuriText> toFuriTexts() {
    if (kanjiWord.length == 0) {
      return [
        FuriText(
          text: kanaWord,
          furigana: '',
          emphasize: true,
        )
      ];
    } else {
      return [
        FuriText(
            emphasize: true,
            text: kanjiWord.substring(
                0, stringDifferenceKana(kanaWord, kanjiWord) + 1),
            furigana: kanaWord.substring(
                0, stringDifferenceKanji(kanaWord, kanjiWord) + 1)),
        FuriText(
          emphasize: true,
          text: kanjiWord
              .substring(stringDifferenceKana(kanaWord, kanjiWord) + 1),
        )
      ];
    }
  }
}
