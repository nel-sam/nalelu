import 'package:nareru/hd-helpers.dart';

var doushiBank = [
  Doushi(
    isIrregular: true,
    infinitive: '持つ',
    infinitiveFurigana: 'も',
    root: '持ち',
    translation: HD.t('Motsu'),
    banmar: DoushiConj(
      present: '持つ',
      past: '持った',
    ),
  ),
  Doushi(
    isIrregular: true,
    infinitive: '持つ',
    infinitiveFurigana: 'も',
    root: '持ち',
    translation: HD.t('Motsu'),
    banmar: DoushiConj(
      present: '持つ',
      past: '持った',
    ),
  ),
  Doushi(
    isIrregular: true,
    infinitive: '聞く',
    infinitiveFurigana: 'き',
    root: '聞き',
    translation: HD.t('kiku'),
    banmar: DoushiConj(
      present: '聞く',
      past: '聞いた',
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '見る',
    infinitiveFurigana: 'み',
    root: '見',
    translation: HD.t('miru'),
    banmar: DoushiConj(
      present: '見る',
      past: '見た',
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '入る',
    infinitiveFurigana: 'はい',
    root: '入り',
    translation: HD.t('hairu'),
    banmar: DoushiConj(
      present: '入る',
      past: '入った',
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '来る',
    infinitiveFurigana: 'く',
    root: 'き',
    translation: HD.t('kuru'),
    banmar: DoushiConj(
      present: '来る',
      past: '来た',
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: 'なる',
    infinitiveFurigana: 'なる',
    root: 'なり',
    translation: HD.t('naru'),
    banmar: DoushiConj(
      present: 'なる',
      past: 'なった',
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '走る',
    infinitiveFurigana: 'はし',
    root: '走り',
    translation: HD.t('hashiru'),
    banmar: DoushiConj(
      present: '走る',
      past: '走った',
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: 'する',
    infinitiveFurigana: 'する',
    root: '',
    translation: HD.t('suru'),
    banmar: DoushiConj(
      present: 'する',
      past: 'した',
    ),
  ),
  Doushi(
    isIrregular: true,
    infinitive: '歩く',
    infinitiveFurigana: 'ある',
    root: '歩き',
    translation: HD.t('aruku'),
    banmar: DoushiConj(
      present: '歩く',
      past: '歩いた',
    ),
  ),
];

class Doushi {
  final String infinitive;
  final String infinitiveFurigana;
  final String root;

  final DoushiConj banmar;
  final bool isIrregular;
  final String translation;

  Doushi({
    required this.infinitive,
    required this.infinitiveFurigana,
    required this.root,
    required this.banmar,
    required this.translation,
    required this.isIrregular,
  });
}

class DoushiConj {
  final String present;
  final String past;

  DoushiConj({
    required this.present,
    required this.past,
  });
}
