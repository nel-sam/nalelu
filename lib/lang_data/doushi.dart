import 'package:nalelu/furi_text.dart';
import 'package:nalelu/na_helpers.dart';

var doushiBank = [
  Doushi(
    isIrregular: true,
    infinitive: '持つ',
    infinitiveFurigana: 'も',
    root: '持ち',
    translation: NA.t('Motsu'),
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
      present: JWord(kanaWord: 'する', kanjiWord: ''),
      pastSimple: JWord(kanaWord: 'した', kanjiWord: ''),
      negative: JWord(kanaWord: 'しない', kanjiWord: ''),
      negativePast: JWord(kanaWord: 'しなかった', kanjiWord: ''),
      presentProgressive: JWord(kanaWord: 'している', kanjiWord: ''),
      negativePresentProgressive: JWord(kanaWord: 'していない', kanjiWord: ''),
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
  final String kanjiWord;
  final String kanaWord;
  JWord({
    required this.kanjiWord,
    required this.kanaWord,
  });
  List<FuriText> toFuriText() {
    if (kanjiWord.length == 0) {
      return [FuriText(text: kanaWord, furigana: '')];
    } else {
      return [
        FuriText(
            text: kanjiWord.substring(
                0, stringDifference(kanaWord, kanjiWord) + 1),
            furigana: kanaWord.substring(
                0, stringDifference(kanaWord, kanjiWord) + 1)),
        FuriText(
          text: kanjiWord.substring(stringDifference(kanaWord, kanjiWord) + 1),
          )
      ];
    }
  }

  int stringDifference(String kanaWord, String kanjiWord) {
    int index = 0;
    for (var i = 0; i < kanjiWord.length; i++) {
      if (!kanjiWord.contains(kanaWord[i])) index = i;
    }
    return index;
  }
}
