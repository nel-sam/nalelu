import 'package:nalelu/na_helpers.dart';

var doushiBank = [
  Doushi(
    isIrregular: true,
    infinitive: '持つ',
    infinitiveFurigana: 'も',
    root: '持ち',
    translation: NA.t('Motsu'),
    casual: DoushiConj(
      present: ['もつ', '持つ'],
      pastSimple: ['もった', '持った'],
      negative: ['もたない', '持たない'],
      negativePast: ['もたなかった', '持たなかった'],
    ),
  ),
  Doushi(
    isIrregular: true,
    infinitive: '聞く',
    infinitiveFurigana: 'き',
    root: '聞き',
    translation: NA.t('kiku'),
    casual: DoushiConj(
      present: ['きく', '聞く'],
      pastSimple: ['きいた', '聞いた'],
      negative: ['きかない', '聞かない'],
      negativePast: ['きかなかった', '聞かなかった'],
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '見る',
    infinitiveFurigana: 'み',
    root: '見',
    translation: NA.t('miru'),
    casual: DoushiConj(
      present: ['みる', '見る'],
      pastSimple: ['みた', '見た'],
      negative: ['みない', '見ない'],
      negativePast: ['みなかった', "見なかった"],
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '入る',
    infinitiveFurigana: 'はい',
    root: '入り',
    translation: NA.t('hairu'),
    casual: DoushiConj(
      present: ['はいる', '入る'],
      pastSimple: ['はいった', '入った'],
      negative: ['はいらない', '入らない'],
      negativePast: ['はいらなかった', '入らなかった'],
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '来る',
    infinitiveFurigana: 'く',
    root: 'き',
    translation: NA.t('kuru'),
    casual: DoushiConj(
      present: ['くる', '来る'],
      pastSimple: ['くた', '来た'],
      negative: ['くない', '来ない'],
      negativePast: ['くなかった', '来なかった'],
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: 'なる',
    infinitiveFurigana: 'なる',
    root: 'なり',
    translation: NA.t('naru'),
    casual: DoushiConj(
      present: ['なる', '成る'],
      pastSimple: ['なった', '成った'],
      negative: ['ならない', '成らない'],
      negativePast: ['ならなかった', '成らなかった'],
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '走る',
    infinitiveFurigana: 'はし',
    root: '走り',
    translation: NA.t('hashiru'),
    casual: DoushiConj(
      present: ['はしる', '走る'],
      pastSimple: ['はしった', '走った'],
      negative: ['はしらない', '走らない'],
      negativePast: ['はしらなかった', '走らなかった'],
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: 'する',
    infinitiveFurigana: 'する',
    root: '',
    translation: NA.t('suru'),
    casual: DoushiConj(
      present: ['する'],
      pastSimple: ['した'],
      negative: ['しない'],
      negativePast: ['しなかった'],
    ),
  ),
  Doushi(
    isIrregular: true,
    infinitive: '歩く',
    infinitiveFurigana: 'ある',
    root: '歩き',
    translation: NA.t('aruku'),
    casual: DoushiConj(
      present: ['あるく', '歩く'],
      pastSimple: ['あるいた', '歩いた'],
      negative: ['あるかない', '歩かない'],
      negativePast: ['あるかなかった', '歩かなかった'],
    ),
  ),
  Doushi(
    isIrregular: true,
    infinitive: '居る',
    infinitiveFurigana: 'い',
    root: '居',
    translation: NA.t('iru_to_be'),
    casual: DoushiConj(
      present: ['いる', '居る'],
      pastSimple: ['いた', '居た'],
      negative: ['いない', '居ない'],
      negativePast: ['いなかった', '居なかった'],
    ),
  ),
  Doushi(
    isIrregular: true,
    infinitive: '要る',
    infinitiveFurigana: 'い',
    root: '要り',
    translation: NA.t('iru_need'),
    casual: DoushiConj(
      present: ['いる', '要る'],
      pastSimple: ['いった', '要った'],
      negative: ['いらない', '要らない'],
      negativePast: ['いらなかった', '要らなかった'],
    ),
  ),
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
  final List<String> present;
  final List<String> pastSimple;
  final List<String> negative;
  final List<String> negativePast;

  DoushiConj({
    required this.present,
    required this.pastSimple,
    required this.negative,
    required this.negativePast,
  });
}
