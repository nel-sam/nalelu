import 'package:nalelu/na_helpers.dart';

var doushiBank = [
  Doushi(
    isIrregular: true,
    infinitive: '持つ',
    infinitiveFurigana: 'も',
    root: '持ち',
    translation: NA.t('Motsu'),
    casual: DoushiConj(
      present: '持つ',
      pastSimple: '持った',
      negative: '持たない',
      negativePast: '持たなかった',
    ),
  ),
  Doushi(
    isIrregular: true,
    infinitive: '聞く',
    infinitiveFurigana: 'き',
    root: '聞き',
    translation: NA.t('kiku'),
    casual: DoushiConj(
      present: '聞く',
      pastSimple: '聞いた',
      negative: '聞かない',
      negativePast: '聞かなかった',
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '見る',
    infinitiveFurigana: 'み',
    root: '見',
    translation: NA.t('miru'),
    casual: DoushiConj(
      present: '見る',
      pastSimple: '見た',
      negative: '見ない',
      negativePast: "見なかった",
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '入る',
    infinitiveFurigana: 'はい',
    root: '入り',
    translation: NA.t('hairu'),
    casual: DoushiConj(
      present: '入る',
      pastSimple: '入った',
      negative: '入らない',
      negativePast: '入らなかった',
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '来る',
    infinitiveFurigana: 'く',
    root: 'き',
    translation: NA.t('kuru'),
    casual: DoushiConj(
      present: '来る',
      pastSimple: '来た',
      negative: '来ない',
      negativePast: '来なかった',
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: 'なる',
    infinitiveFurigana: 'なる',
    root: 'なり',
    translation: NA.t('naru'),
    casual: DoushiConj(
      present: 'なる',
      pastSimple: 'なった',
      negative: 'ならない',
      negativePast: 'ならなかった',
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '走る',
    infinitiveFurigana: 'はし',
    root: '走り',
    translation: NA.t('hashiru'),
    casual: DoushiConj(
      present: '走る',
      pastSimple: '走った',
      negative: '走らない',
      negativePast: '走らなかった',
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: 'する',
    infinitiveFurigana: 'する',
    root: '',
    translation: NA.t('suru'),
    casual: DoushiConj(
      present: 'する',
      pastSimple: 'した',
      negative: 'しない',
      negativePast: 'しなかった',
    ),
  ),
  Doushi(
    isIrregular: true,
    infinitive: '歩く',
    infinitiveFurigana: 'ある',
    root: '歩き',
    translation: NA.t('aruku'),
    casual: DoushiConj(
      present: '歩く',
      pastSimple: '歩いた',
      negative: '歩かない',
      negativePast: '歩かなかった',
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
  final String present;
  final String pastSimple;
  final String negative;
  final String negativePast;

  DoushiConj({
    required this.present,
    required this.pastSimple,
    required this.negative,
    required this.negativePast,
  });
}
