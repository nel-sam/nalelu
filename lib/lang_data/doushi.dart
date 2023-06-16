import 'package:nalelu/furi_text.dart';
import 'package:nalelu/na_helpers.dart';

var doushiBank = [
  Doushi(
    isIrregular: true,
    infinitive: '可愛がる',
    infinitiveFurigana: 'かわいがる',
    root: '可愛が',
    translation: NA.t('kawaigaru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'かわいがる', kanjiWord: '可愛がる'),
      pastSimple: JWord(kanaWord: 'かわいがった', kanjiWord: '可愛がった'),
      negative: JWord(kanaWord: 'かわいがらない', kanjiWord: '可愛がらない'),
      negativePast: JWord(kanaWord: 'かわいがらなかった', kanjiWord: '可愛がらなかった'),
      presentProgressive: JWord(kanaWord: 'かわいがっている', kanjiWord: '可愛がっている'),
      negativePresentProgressive:
          JWord(kanaWord: 'かわいがっていない', kanjiWord: '可愛がっていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '驚く',
    infinitiveFurigana: 'おどろく',
    root: '驚か',
    translation: NA.t('odoroku'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'おどろく', kanjiWord: '驚く'),
      pastSimple: JWord(kanaWord: 'おどろいた', kanjiWord: '驚いた'),
      negative: JWord(kanaWord: 'おどろかない', kanjiWord: '驚かない'),
      negativePast: JWord(kanaWord: 'おどろかなかった', kanjiWord: '驚かなかった'),
      presentProgressive: JWord(kanaWord: 'おどろいている', kanjiWord: '驚いている'),
      negativePresentProgressive:
          JWord(kanaWord: 'おどろいていない', kanjiWord: '驚いていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '泣く',
    infinitiveFurigana: 'なく',
    root: '泣',
    translation: NA.t('naku'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'なく', kanjiWord: '泣く'),
      pastSimple: JWord(kanaWord: 'ないた', kanjiWord: '泣いた'),
      negative: JWord(kanaWord: 'なかない', kanjiWord: '泣かない'),
      negativePast: JWord(kanaWord: 'なかなかった', kanjiWord: '泣かなかった'),
      presentProgressive: JWord(kanaWord: 'ないている', kanjiWord: '泣いている'),
      negativePresentProgressive:
          JWord(kanaWord: 'ないていない', kanjiWord: '泣いていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '怒る',
    infinitiveFurigana: 'おこる',
    root: '怒',
    translation: NA.t('okoru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'おこる', kanjiWord: '怒る'),
      pastSimple: JWord(kanaWord: 'おこった', kanjiWord: '怒った'),
      negative: JWord(kanaWord: 'おこらない', kanjiWord: '怒らない'),
      negativePast: JWord(kanaWord: 'おこらなかった', kanjiWord: '怒らなかった'),
      presentProgressive: JWord(kanaWord: 'おこっている', kanjiWord: '怒っている'),
      negativePresentProgressive:
          JWord(kanaWord: 'おこっていない', kanjiWord: '怒っていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '笑う',
    infinitiveFurigana: 'わらう',
    root: '笑わ',
    translation: NA.t('warau'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'わらう', kanjiWord: '笑う'),
      pastSimple: JWord(kanaWord: 'わらった', kanjiWord: '笑った'),
      negative: JWord(kanaWord: 'わらわない', kanjiWord: '笑わない'),
      negativePast: JWord(kanaWord: 'わらわなかった', kanjiWord: '笑わなかった'),
      presentProgressive: JWord(kanaWord: 'わらっている', kanjiWord: '笑っている'),
      negativePresentProgressive:
          JWord(kanaWord: 'わらっていない', kanjiWord: '笑っていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '怖がる',
    infinitiveFurigana: 'こわがる',
    root: '怖が',
    translation: NA.t('kowagaru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'こわがる', kanjiWord: '怖がる'),
      pastSimple: JWord(kanaWord: 'こわがった', kanjiWord: '怖がった'),
      negative: JWord(kanaWord: 'こわがらない', kanjiWord: '怖がらない'),
      negativePast: JWord(kanaWord: 'こわがらなかった', kanjiWord: '怖がらなかった'),
      presentProgressive: JWord(kanaWord: 'こわがっている', kanjiWord: '怖がっている'),
      negativePresentProgressive:
          JWord(kanaWord: 'こわがっていない', kanjiWord: '怖がっていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '惚れる',
    infinitiveFurigana: 'ほれる',
    root: '惚れ',
    translation: NA.t('horeru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'ほれる', kanjiWord: '惚れる'),
      pastSimple: JWord(kanaWord: 'ほれた', kanjiWord: '惚れた'),
      negative: JWord(kanaWord: 'ほれない', kanjiWord: '惚れない'),
      negativePast: JWord(kanaWord: 'ほれなかった', kanjiWord: '惚れなかった'),
      presentProgressive: JWord(kanaWord: 'ほれている', kanjiWord: '惚れている'),
      negativePresentProgressive:
          JWord(kanaWord: 'ほれていない', kanjiWord: '惚れていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '慌てる',
    infinitiveFurigana: 'あわてる',
    root: '慌て',
    translation: NA.t('awateru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'あわてる', kanjiWord: '慌てる'),
      pastSimple: JWord(kanaWord: 'あわてた', kanjiWord: '慌てた'),
      negative: JWord(kanaWord: 'あわてない', kanjiWord: '慌てない'),
      negativePast: JWord(kanaWord: 'あわてなかった', kanjiWord: '慌てなかった'),
      presentProgressive: JWord(kanaWord: 'あわてている', kanjiWord: '慌てている'),
      negativePresentProgressive:
          JWord(kanaWord: 'あわてていない', kanjiWord: '慌てていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '慰める',
    infinitiveFurigana: 'なぐさめる',
    root: '慰め',
    translation: NA.t('nagusameru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'なぐさめる', kanjiWord: '慰める'),
      pastSimple: JWord(kanaWord: 'なぐさめた', kanjiWord: '慰めた'),
      negative: JWord(kanaWord: 'なぐさめない', kanjiWord: '慰めない'),
      negativePast: JWord(kanaWord: 'なぐさめなかった', kanjiWord: '慰めなかった'),
      presentProgressive: JWord(kanaWord: 'なぐさめている', kanjiWord: '慰めている'),
      negativePresentProgressive:
          JWord(kanaWord: 'なぐさめていない', kanjiWord: '慰めていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '思う',
    infinitiveFurigana: 'おもう',
    root: '思',
    translation: NA.t('omou'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'おもう', kanjiWord: '思う'),
      pastSimple: JWord(kanaWord: 'おもった', kanjiWord: '思った'),
      negative: JWord(kanaWord: 'おもわない', kanjiWord: '思わない'),
      negativePast: JWord(kanaWord: 'おもわなかった', kanjiWord: '思わなかった'),
      presentProgressive: JWord(kanaWord: 'おもっている', kanjiWord: '思っている'),
      negativePresentProgressive:
          JWord(kanaWord: 'おもっていない', kanjiWord: '思っていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '考える',
    infinitiveFurigana: 'かんがえる',
    root: '考え',
    translation: NA.t('kangaeru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'かんがえる', kanjiWord: '考える'),
      pastSimple: JWord(kanaWord: 'かんがえた', kanjiWord: '考えた'),
      negative: JWord(kanaWord: 'かんがえない', kanjiWord: '考えない'),
      negativePast: JWord(kanaWord: 'かんがえなかった', kanjiWord: '考えなかった'),
      presentProgressive: JWord(kanaWord: 'かんがえている', kanjiWord: '考えている'),
      negativePresentProgressive:
          JWord(kanaWord: 'かんがえていない', kanjiWord: '考えていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '褒める',
    infinitiveFurigana: 'ほめる',
    root: '褒め',
    translation: NA.t('homeru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'ほめる', kanjiWord: '褒める'),
      pastSimple: JWord(kanaWord: 'ほめた', kanjiWord: '褒めた'),
      negative: JWord(kanaWord: 'ほめない', kanjiWord: '褒めない'),
      negativePast: JWord(kanaWord: 'ほめなかった', kanjiWord: '褒めなかった'),
      presentProgressive: JWord(kanaWord: 'ほめている', kanjiWord: '褒めている'),
      negativePresentProgressive:
          JWord(kanaWord: 'ほめていない', kanjiWord: '褒めていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '支える',
    infinitiveFurigana: 'ささえる',
    root: '支え',
    translation: NA.t('sasaeru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'ささえる', kanjiWord: '支える'),
      pastSimple: JWord(kanaWord: 'ささえた', kanjiWord: '支えた'),
      negative: JWord(kanaWord: 'ささえない', kanjiWord: '支えない'),
      negativePast: JWord(kanaWord: 'ささえなかった', kanjiWord: '支えなかった'),
      presentProgressive: JWord(kanaWord: 'ささえている', kanjiWord: '支えている'),
      negativePresentProgressive:
          JWord(kanaWord: 'ささえていない', kanjiWord: '支えていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '忘れる',
    infinitiveFurigana: 'わすれる',
    root: '忘れ',
    translation: NA.t('wasureru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'わすれる', kanjiWord: '忘れる'),
      pastSimple: JWord(kanaWord: 'わすれた', kanjiWord: '忘れた'),
      negative: JWord(kanaWord: 'わすれない', kanjiWord: '忘れない'),
      negativePast: JWord(kanaWord: 'わすれなかった', kanjiWord: '忘れなかった'),
      presentProgressive: JWord(kanaWord: 'わすれている', kanjiWord: '忘れている'),
      negativePresentProgressive:
          JWord(kanaWord: 'わすれていない', kanjiWord: '忘れていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '覚える',
    infinitiveFurigana: 'おぼえる',
    root: '覚え',
    translation: NA.t('oboeru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'おぼえる', kanjiWord: '覚える'),
      pastSimple: JWord(kanaWord: 'おぼえた', kanjiWord: '覚えた'),
      negative: JWord(kanaWord: 'おぼえない', kanjiWord: '覚えない'),
      negativePast: JWord(kanaWord: 'おぼえなかった', kanjiWord: '覚えなかった'),
      presentProgressive: JWord(kanaWord: 'おぼえている', kanjiWord: '覚えている'),
      negativePresentProgressive:
          JWord(kanaWord: 'おぼえていない', kanjiWord: '覚えていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '疲れる',
    infinitiveFurigana: 'つかれる',
    root: '疲れ',
    translation: NA.t('tsukareru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'つかれる', kanjiWord: '疲れる'),
      pastSimple: JWord(kanaWord: 'つかれた', kanjiWord: '疲れた'),
      negative: JWord(kanaWord: 'つかれない', kanjiWord: '疲れない'),
      negativePast: JWord(kanaWord: 'つかれなかった', kanjiWord: '疲れなかった'),
      presentProgressive: JWord(kanaWord: 'つかれている', kanjiWord: '疲れている'),
      negativePresentProgressive:
          JWord(kanaWord: 'つかれていない', kanjiWord: '疲れていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '信じる',
    infinitiveFurigana: 'しんじる',
    root: '信じ',
    translation: NA.t('shinjiru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'しんじる', kanjiWord: '信じる'),
      pastSimple: JWord(kanaWord: 'しんじた', kanjiWord: '信じた'),
      negative: JWord(kanaWord: 'しんじない', kanjiWord: '信じない'),
      negativePast: JWord(kanaWord: 'しんじなかった', kanjiWord: '信じなかった'),
      presentProgressive: JWord(kanaWord: 'しんじている', kanjiWord: '信じている'),
      negativePresentProgressive:
          JWord(kanaWord: 'しんじていない', kanjiWord: '信じていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '間違える',
    infinitiveFurigana: 'まちがえる',
    root: '間違え',
    translation: NA.t('machigaeru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'まちがえる', kanjiWord: '間違える'),
      pastSimple: JWord(kanaWord: 'まちがえた', kanjiWord: '間違えた'),
      negative: JWord(kanaWord: 'まちがえない', kanjiWord: '間違えない'),
      negativePast: JWord(kanaWord: 'まちがえなかった', kanjiWord: '間違えなかった'),
      presentProgressive: JWord(kanaWord: 'まちがっている', kanjiWord: '間違っている'),
      negativePresentProgressive:
          JWord(kanaWord: 'まちがっていない', kanjiWord: '間違っていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '知る',
    infinitiveFurigana: 'しる',
    root: '知',
    translation: NA.t('shiru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'しる', kanjiWord: '知る'),
      pastSimple: JWord(kanaWord: 'しった', kanjiWord: '知った'),
      negative: JWord(kanaWord: 'しらない', kanjiWord: '知らない'),
      negativePast: JWord(kanaWord: 'しらなかった', kanjiWord: '知らなかった'),
      presentProgressive: JWord(kanaWord: 'しっている', kanjiWord: '知っている'),
      negativePresentProgressive:
          JWord(kanaWord: 'しっていない', kanjiWord: '知っていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '苦しむ',
    infinitiveFurigana: 'くるしむ',
    root: '苦し',
    translation: NA.t('kurushimu'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'くるしむ', kanjiWord: '苦しむ'),
      pastSimple: JWord(kanaWord: 'くるしかった', kanjiWord: '苦しかった'),
      negative: JWord(kanaWord: 'くるしない', kanjiWord: '苦しない'),
      negativePast: JWord(kanaWord: 'くるしなかった', kanjiWord: '苦しなかった'),
      presentProgressive: JWord(kanaWord: 'くるしみている', kanjiWord: '苦しみている'),
      negativePresentProgressive:
          JWord(kanaWord: 'くるしみていない', kanjiWord: '苦しみていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '痛む',
    infinitiveFurigana: 'いたむ',
    root: '痛',
    translation: NA.t('itamu'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'いたむ', kanjiWord: '痛む'),
      pastSimple: JWord(kanaWord: 'いたかった', kanjiWord: '痛かった'),
      negative: JWord(kanaWord: 'いたくない', kanjiWord: '痛くない'),
      negativePast: JWord(kanaWord: 'いたくなかった', kanjiWord: '痛くなかった'),
      presentProgressive: JWord(kanaWord: 'いたみている', kanjiWord: '痛みている'),
      negativePresentProgressive:
          JWord(kanaWord: 'いたみていない', kanjiWord: '痛みていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '登る',
    infinitiveFurigana: 'のぼる',
    root: '登',
    translation: NA.t('noboru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'のぼる', kanjiWord: '登る'),
      pastSimple: JWord(kanaWord: 'のぼった', kanjiWord: '登った'),
      negative: JWord(kanaWord: 'のぼらない', kanjiWord: '登らない'),
      negativePast: JWord(kanaWord: 'のぼらなかった', kanjiWord: '登らなかった'),
      presentProgressive: JWord(kanaWord: 'のぼっている', kanjiWord: '登っている'),
      negativePresentProgressive:
          JWord(kanaWord: 'のぼっていない', kanjiWord: '登っていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '座る',
    infinitiveFurigana: 'すわる',
    root: '座',
    translation: NA.t('suwaru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'すわる', kanjiWord: '座る'),
      pastSimple: JWord(kanaWord: 'すわった', kanjiWord: '座った'),
      negative: JWord(kanaWord: 'すわらない', kanjiWord: '座らない'),
      negativePast: JWord(kanaWord: 'すわらなかった', kanjiWord: '座らなかった'),
      presentProgressive: JWord(kanaWord: 'すわっている', kanjiWord: '座っている'),
      negativePresentProgressive:
          JWord(kanaWord: 'すわっていない', kanjiWord: '座っていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '飛ぶ',
    infinitiveFurigana: 'とぶ',
    root: '飛',
    translation: NA.t('tobu'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'とぶ', kanjiWord: '飛ぶ'),
      pastSimple: JWord(kanaWord: 'とんだ', kanjiWord: '飛んだ'),
      negative: JWord(kanaWord: 'とばない', kanjiWord: '飛ばない'),
      negativePast: JWord(kanaWord: 'とばなかった', kanjiWord: '飛ばなかった'),
      presentProgressive: JWord(kanaWord: 'とんでいる', kanjiWord: '飛んでいる'),
      negativePresentProgressive:
          JWord(kanaWord: 'とんでいない', kanjiWord: '飛んでいない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '来る',
    infinitiveFurigana: 'くる',
    root: '来',
    translation: NA.t('kuru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'くる', kanjiWord: '来る'),
      pastSimple: JWord(kanaWord: 'きた', kanjiWord: '来た'),
      negative: JWord(kanaWord: 'こない', kanjiWord: '来ない'),
      negativePast: JWord(kanaWord: 'こなかった', kanjiWord: '来なかった'),
      presentProgressive: JWord(kanaWord: 'きている', kanjiWord: '来ている'),
      negativePresentProgressive: JWord(kanaWord: 'きていない', kanjiWord: '来ていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '通う',
    infinitiveFurigana: 'かよう',
    root: '通',
    translation: NA.t('kayou'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'かよう', kanjiWord: '通う'),
      pastSimple: JWord(kanaWord: 'かよった', kanjiWord: '通った'),
      negative: JWord(kanaWord: 'かよわない', kanjiWord: '通わない'),
      negativePast: JWord(kanaWord: 'かよわなかった', kanjiWord: '通わなかった'),
      presentProgressive: JWord(kanaWord: 'かよっている', kanjiWord: '通っている'),
      negativePresentProgressive:
          JWord(kanaWord: 'かよっていない', kanjiWord: '通っていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '踊る',
    infinitiveFurigana: 'おどる',
    root: '踊',
    translation: NA.t('odoru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'おどる', kanjiWord: '踊る'),
      pastSimple: JWord(kanaWord: 'おどった', kanjiWord: '踊った'),
      negative: JWord(kanaWord: 'おどらない', kanjiWord: '踊らない'),
      negativePast: JWord(kanaWord: 'おどらなかった', kanjiWord: '踊らなかった'),
      presentProgressive: JWord(kanaWord: 'おどっている', kanjiWord: '踊っている'),
      negativePresentProgressive:
          JWord(kanaWord: 'おどっていない', kanjiWord: '踊っていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '抱く',
    infinitiveFurigana: 'だく',
    root: '抱',
    translation: NA.t('daku'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'だく', kanjiWord: '抱く'),
      pastSimple: JWord(kanaWord: 'だいた', kanjiWord: '抱いた'),
      negative: JWord(kanaWord: 'だかない', kanjiWord: '抱かない'),
      negativePast: JWord(kanaWord: 'だかなかった', kanjiWord: '抱かなかった'),
      presentProgressive: JWord(kanaWord: 'だいている', kanjiWord: '抱いている'),
      negativePresentProgressive:
          JWord(kanaWord: 'だいていない', kanjiWord: '抱いていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '働く',
    infinitiveFurigana: 'はたらく',
    root: '働',
    translation: NA.t('hataraku'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'はたらく', kanjiWord: '働く'),
      pastSimple: JWord(kanaWord: 'はたらいた', kanjiWord: '働いた'),
      negative: JWord(kanaWord: 'はたらかない', kanjiWord: '働かない'),
      negativePast: JWord(kanaWord: 'はたらかなかった', kanjiWord: '働かなかった'),
      presentProgressive: JWord(kanaWord: 'はたらいている', kanjiWord: '働いている'),
      negativePresentProgressive:
          JWord(kanaWord: 'はたらいていない', kanjiWord: '働いていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '泳ぐ',
    infinitiveFurigana: 'およぐ',
    root: '泳',
    translation: NA.t('oyogu'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'およぐ', kanjiWord: '泳ぐ'),
      pastSimple: JWord(kanaWord: 'およいだ', kanjiWord: '泳いだ'),
      negative: JWord(kanaWord: 'およがない', kanjiWord: '泳がない'),
      negativePast: JWord(kanaWord: 'およがなかった', kanjiWord: '泳がなかった'),
      presentProgressive: JWord(kanaWord: 'およいでいる', kanjiWord: '泳いでいる'),
      negativePresentProgressive:
          JWord(kanaWord: 'およいでいない', kanjiWord: '泳いでいない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '消す',
    infinitiveFurigana: 'けす',
    root: '消し',
    translation: NA.t('kesu'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'けす', kanjiWord: '消す'),
      pastSimple: JWord(kanaWord: 'けした', kanjiWord: '消した'),
      negative: JWord(kanaWord: 'けさない', kanjiWord: '消さない'),
      negativePast: JWord(kanaWord: 'けさなかった', kanjiWord: '消さなかった'),
      presentProgressive: JWord(kanaWord: 'けしている', kanjiWord: '消している'),
      negativePresentProgressive:
          JWord(kanaWord: 'けしていない', kanjiWord: '消していない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '動く',
    infinitiveFurigana: 'うごく',
    root: '動き',
    translation: NA.t('ugoku'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'うごく', kanjiWord: '動く'),
      pastSimple: JWord(kanaWord: 'うごいた', kanjiWord: '動いた'),
      negative: JWord(kanaWord: 'うごかない', kanjiWord: '動かない'),
      negativePast: JWord(kanaWord: 'うごかなかった', kanjiWord: '動かなかった'),
      presentProgressive: JWord(kanaWord: 'うごいている', kanjiWord: '動いている'),
      negativePresentProgressive:
          JWord(kanaWord: 'うごいていない', kanjiWord: '動いていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '次ぐ',
    infinitiveFurigana: 'つぐ',
    root: '次ぎ',
    translation: NA.t('tsugu'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'つぐ', kanjiWord: '次ぐ'),
      pastSimple: JWord(kanaWord: 'ついだ', kanjiWord: '次いだ'),
      negative: JWord(kanaWord: 'つかない', kanjiWord: '次かない'),
      negativePast: JWord(kanaWord: 'つかなかった', kanjiWord: '次かなかった'),
      presentProgressive: JWord(kanaWord: 'ついている', kanjiWord: '次いている'),
      negativePresentProgressive:
          JWord(kanaWord: 'ついていない', kanjiWord: '次いていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '見せる',
    infinitiveFurigana: 'みせる',
    root: '見せ',
    translation: NA.t('miseru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'みせる', kanjiWord: '見せる'),
      pastSimple: JWord(kanaWord: 'みせた', kanjiWord: '見せた'),
      negative: JWord(kanaWord: 'みせない', kanjiWord: '見せない'),
      negativePast: JWord(kanaWord: 'みせなかった', kanjiWord: '見せなかった'),
      presentProgressive: JWord(kanaWord: 'みせている', kanjiWord: '見せている'),
      negativePresentProgressive:
          JWord(kanaWord: 'みせていない', kanjiWord: '見せていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '起きる',
    infinitiveFurigana: 'おきる',
    root: '起き',
    translation: NA.t('okiru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'おきる', kanjiWord: '起きる'),
      pastSimple: JWord(kanaWord: 'おきた', kanjiWord: '起きた'),
      negative: JWord(kanaWord: 'おきない', kanjiWord: '起きない'),
      negativePast: JWord(kanaWord: 'おきなかった', kanjiWord: '起きなかった'),
      presentProgressive: JWord(kanaWord: 'おきている', kanjiWord: '起きている'),
      negativePresentProgressive:
          JWord(kanaWord: 'おきていない', kanjiWord: '起きていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '降りる',
    infinitiveFurigana: 'おりる',
    root: '降り',
    translation: NA.t('oriru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'おりる', kanjiWord: '降りる'),
      pastSimple: JWord(kanaWord: 'おりた', kanjiWord: '降りた'),
      negative: JWord(kanaWord: 'おりない', kanjiWord: '降りない'),
      negativePast: JWord(kanaWord: 'おりなかった', kanjiWord: '降りなかった'),
      presentProgressive: JWord(kanaWord: 'おりている', kanjiWord: '降りている'),
      negativePresentProgressive:
          JWord(kanaWord: 'おりていない', kanjiWord: '降りていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '逃げる',
    infinitiveFurigana: 'にげる',
    root: '逃げ',
    translation: NA.t('nigeru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'にげる', kanjiWord: '逃げる'),
      pastSimple: JWord(kanaWord: 'にげた', kanjiWord: '逃げた'),
      negative: JWord(kanaWord: 'にげない', kanjiWord: '逃げない'),
      negativePast: JWord(kanaWord: 'にげなかった', kanjiWord: '逃げなかった'),
      presentProgressive: JWord(kanaWord: 'にげている', kanjiWord: '逃げている'),
      negativePresentProgressive:
          JWord(kanaWord: 'にげていない', kanjiWord: '逃げていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '倒れる',
    infinitiveFurigana: 'たおれる',
    root: '倒れ',
    translation: NA.t('taoreru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'たおれる', kanjiWord: '倒れる'),
      pastSimple: JWord(kanaWord: 'たおれた', kanjiWord: '倒れた'),
      negative: JWord(kanaWord: 'たおれない', kanjiWord: '倒れない'),
      negativePast: JWord(kanaWord: 'たおれなかった', kanjiWord: '倒れなかった'),
      presentProgressive: JWord(kanaWord: 'たおれている', kanjiWord: '倒れている'),
      negativePresentProgressive:
          JWord(kanaWord: 'たおれていない', kanjiWord: '倒れていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '急ぐ',
    infinitiveFurigana: 'いそぐ',
    root: '急ぎ',
    translation: NA.t('isogu'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'いそぐ', kanjiWord: '急ぐ'),
      pastSimple: JWord(kanaWord: 'いそいだ', kanjiWord: '急いだ'),
      negative: JWord(kanaWord: 'いそがない', kanjiWord: '急がない'),
      negativePast: JWord(kanaWord: 'いそがなかった', kanjiWord: '急がなかった'),
      presentProgressive: JWord(kanaWord: 'いそいでいる', kanjiWord: '急いでいる'),
      negativePresentProgressive:
          JWord(kanaWord: 'いそいでいない', kanjiWord: '急いでいない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: 'あげる',
    infinitiveFurigana: 'あげる',
    root: 'あげ',
    translation: NA.t('ageru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'あげる', kanjiWord: 'あげる'),
      pastSimple: JWord(kanaWord: 'あげた', kanjiWord: 'あげた'),
      negative: JWord(kanaWord: 'あげない', kanjiWord: 'あげない'),
      negativePast: JWord(kanaWord: 'あげなかった', kanjiWord: 'あげなかった'),
      presentProgressive: JWord(kanaWord: 'あげている', kanjiWord: 'あげている'),
      negativePresentProgressive:
          JWord(kanaWord: 'あげていない', kanjiWord: 'あげていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: 'もらう',
    infinitiveFurigana: 'もらう',
    root: 'もら',
    translation: NA.t('morau'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'もらう', kanjiWord: 'もらう'),
      pastSimple: JWord(kanaWord: 'もらった', kanjiWord: 'もらった'),
      negative: JWord(kanaWord: 'もらわない', kanjiWord: 'もらわない'),
      negativePast: JWord(kanaWord: 'もらわなかった', kanjiWord: 'もらわなかった'),
      presentProgressive: JWord(kanaWord: 'もらっている', kanjiWord: 'もらっている'),
      negativePresentProgressive:
          JWord(kanaWord: 'もらっていない', kanjiWord: 'もらっていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '終わる',
    infinitiveFurigana: 'おわる',
    root: '終わり',
    translation: NA.t('owaru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'おわる', kanjiWord: '終わる'),
      pastSimple: JWord(kanaWord: 'おわった', kanjiWord: '終わった'),
      negative: JWord(kanaWord: 'おわらない', kanjiWord: '終わらない'),
      negativePast: JWord(kanaWord: 'おわらなかった', kanjiWord: '終わらなかった'),
      presentProgressive: JWord(kanaWord: 'おわっている', kanjiWord: '終わっている'),
      negativePresentProgressive:
          JWord(kanaWord: 'おわっていない', kanjiWord: '終わっていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '買う',
    infinitiveFurigana: 'かう',
    root: '買',
    translation: NA.t('kau'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'かう', kanjiWord: '買う'),
      pastSimple: JWord(kanaWord: 'かった', kanjiWord: '買った'),
      negative: JWord(kanaWord: 'かわない', kanjiWord: '買わない'),
      negativePast: JWord(kanaWord: 'かわなかった', kanjiWord: '買わなかった'),
      presentProgressive: JWord(kanaWord: 'かっている', kanjiWord: '買っている'),
      negativePresentProgressive:
          JWord(kanaWord: 'かっていない', kanjiWord: '買っていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '返す',
    infinitiveFurigana: 'かえす',
    root: '返す',
    translation: NA.t('kaesu'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'かえす', kanjiWord: '返す'),
      pastSimple: JWord(kanaWord: 'かえした', kanjiWord: '返した'),
      negative: JWord(kanaWord: 'かえさない', kanjiWord: '返さない'),
      negativePast: JWord(kanaWord: 'かえさなかった', kanjiWord: '返さなかった'),
      presentProgressive: JWord(kanaWord: 'かえしている', kanjiWord: '返している'),
      negativePresentProgressive:
          JWord(kanaWord: 'かえしていない', kanjiWord: '返していない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '代わる',
    infinitiveFurigana: 'かわる',
    root: '代わる',
    translation: NA.t('kawaru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'かわる', kanjiWord: '代わる'),
      pastSimple: JWord(kanaWord: 'かわった', kanjiWord: '代わった'),
      negative: JWord(kanaWord: 'かわらない', kanjiWord: '代わらない'),
      negativePast: JWord(kanaWord: 'かわらなかった', kanjiWord: '代わらなかった'),
      presentProgressive: JWord(kanaWord: 'かわっている', kanjiWord: '代わっている'),
      negativePresentProgressive:
          JWord(kanaWord: 'かわっていない', kanjiWord: '代わっていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '押す',
    infinitiveFurigana: 'おす',
    root: '押す',
    translation: NA.t('osu'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'おす', kanjiWord: '押す'),
      pastSimple: JWord(kanaWord: 'おした', kanjiWord: '押した'),
      negative: JWord(kanaWord: 'おさない', kanjiWord: '押さない'),
      negativePast: JWord(kanaWord: 'おさなかった', kanjiWord: '押さなかった'),
      presentProgressive: JWord(kanaWord: 'おしている', kanjiWord: '押している'),
      negativePresentProgressive:
          JWord(kanaWord: 'おしていない', kanjiWord: '押していない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '引く',
    infinitiveFurigana: 'ひく',
    root: '引く',
    translation: NA.t('hiku'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'ひく', kanjiWord: '引く'),
      pastSimple: JWord(kanaWord: 'ひいた', kanjiWord: '引いた'),
      negative: JWord(kanaWord: 'ひかない', kanjiWord: '引かない'),
      negativePast: JWord(kanaWord: 'ひかなかった', kanjiWord: '引かなかった'),
      presentProgressive: JWord(kanaWord: 'ひいている', kanjiWord: '引いている'),
      negativePresentProgressive:
          JWord(kanaWord: 'ひいていない', kanjiWord: '引いていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '手伝う',
    infinitiveFurigana: 'てつだう',
    root: '手伝',
    translation: NA.t('tetsudau'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'てつだう', kanjiWord: '手伝う'),
      pastSimple: JWord(kanaWord: 'てつだった', kanjiWord: '手伝った'),
      negative: JWord(kanaWord: 'てつだわない', kanjiWord: '手伝わない'),
      negativePast: JWord(kanaWord: 'てつだわなかった', kanjiWord: '手伝わなかった'),
      presentProgressive: JWord(kanaWord: 'てつだっている', kanjiWord: '手伝っている'),
      negativePresentProgressive:
          JWord(kanaWord: 'てつだっていない', kanjiWord: '手伝っていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '教える',
    infinitiveFurigana: 'おしえる',
    root: '教え',
    translation: NA.t('oshieru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'おしえる', kanjiWord: '教える'),
      pastSimple: JWord(kanaWord: 'おしえた', kanjiWord: '教えた'),
      negative: JWord(kanaWord: 'おしえない', kanjiWord: '教えない'),
      negativePast: JWord(kanaWord: 'おしえなかった', kanjiWord: '教えなかった'),
      presentProgressive: JWord(kanaWord: 'おしえている', kanjiWord: '教えている'),
      negativePresentProgressive:
          JWord(kanaWord: 'おしえていない', kanjiWord: '教えていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '頼む',
    infinitiveFurigana: 'たのむ',
    root: '頼も',
    translation: NA.t('tanomu'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'たのむ', kanjiWord: '頼む'),
      pastSimple: JWord(kanaWord: 'たのんだ', kanjiWord: '頼んだ'),
      negative: JWord(kanaWord: 'たのまない', kanjiWord: '頼まない'),
      negativePast: JWord(kanaWord: 'たのまなかった', kanjiWord: '頼まなかった'),
      presentProgressive: JWord(kanaWord: 'たのんでいる', kanjiWord: '頼んでいる'),
      negativePresentProgressive:
          JWord(kanaWord: 'たのんでいない', kanjiWord: '頼んでいない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '歌う',
    infinitiveFurigana: 'うた',
    root: '歌い',
    translation: NA.t('utau'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'うたう', kanjiWord: '歌う'),
      pastSimple: JWord(kanaWord: 'うたった', kanjiWord: '歌った'),
      negative: JWord(kanaWord: 'うたわない', kanjiWord: '歌わない'),
      negativePast: JWord(kanaWord: 'うたわなかった', kanjiWord: '歌わなかった'),
      presentProgressive: JWord(kanaWord: 'うたっている', kanjiWord: '歌っている'),
      negativePresentProgressive:
          JWord(kanaWord: 'うたっていない', kanjiWord: '歌っていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '喋る',
    infinitiveFurigana: 'しゃべ',
    root: 'しゃべる',
    translation: NA.t('shaberu'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'しゃべる', kanjiWord: '喋る'),
      pastSimple: JWord(kanaWord: 'しゃべった', kanjiWord: '喋った'),
      negative: JWord(kanaWord: 'しゃべらない', kanjiWord: '喋らない'),
      negativePast: JWord(kanaWord: 'しゃべらなかった', kanjiWord: '喋らなかった'),
      presentProgressive: JWord(kanaWord: 'しゃべっている', kanjiWord: '喋っている'),
      negativePresentProgressive:
          JWord(kanaWord: 'しゃべっていない', kanjiWord: '喋っていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '答える',
    infinitiveFurigana: 'こたえ',
    root: '答え',
    translation: NA.t('kotaeru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'こたえる', kanjiWord: '答える'),
      pastSimple: JWord(kanaWord: 'こたえた', kanjiWord: '答えた'),
      negative: JWord(kanaWord: 'こたえない', kanjiWord: '答えない'),
      negativePast: JWord(kanaWord: 'こたえなかった', kanjiWord: '答えなかった'),
      presentProgressive: JWord(kanaWord: 'こたえている', kanjiWord: '答えている'),
      negativePresentProgressive:
          JWord(kanaWord: 'こたえていない', kanjiWord: '答えていない'),
    ),
  ),
  Doushi(
    isIrregular: true,
    infinitive: '掃除する',
    infinitiveFurigana: 'そうじする',
    root: 'そうじ',
    translation: NA.t('soujisuru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'そうじする', kanjiWord: '掃除する'),
      pastSimple: JWord(kanaWord: 'そうじした', kanjiWord: '掃除した'),
      negative: JWord(kanaWord: 'そうじしない', kanjiWord: '掃除しない'),
      negativePast: JWord(kanaWord: 'そうじしなかった', kanjiWord: '掃除しなかった'),
      presentProgressive: JWord(kanaWord: 'そうじしている', kanjiWord: '掃除している'),
      negativePresentProgressive:
          JWord(kanaWord: 'そうじしていない', kanjiWord: '掃除していない'),
    ),
  ),
  Doushi(
    isIrregular: true,
    infinitive: '散歩する',
    infinitiveFurigana: 'さんぽする',
    root: 'さんぽ',
    translation: NA.t('sanposuru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'さんぽする', kanjiWord: '散歩する'),
      pastSimple: JWord(kanaWord: 'さんぽした', kanjiWord: '散歩した'),
      negative: JWord(kanaWord: 'さんぽしない', kanjiWord: '散歩しない'),
      negativePast: JWord(kanaWord: 'さんぽしなかった', kanjiWord: '散歩しなかった'),
      presentProgressive: JWord(kanaWord: 'さんぽしている', kanjiWord: '散歩している'),
      negativePresentProgressive:
          JWord(kanaWord: 'さんぽしていない', kanjiWord: '散歩していない'),
    ),
  ),
  Doushi(
    isIrregular: true,
    infinitive: '料理する',
    infinitiveFurigana: 'りょうりする',
    root: '料理',
    translation: NA.t('ryourisuru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'りょうりする', kanjiWord: '料理する'),
      pastSimple: JWord(kanaWord: 'りょうりした', kanjiWord: '料理した'),
      negative: JWord(kanaWord: 'りょうりしない', kanjiWord: '料理しない'),
      negativePast: JWord(kanaWord: 'りょうりしなかった', kanjiWord: '料理しなかった'),
      presentProgressive: JWord(kanaWord: 'りょうりしている', kanjiWord: '料理している'),
      negativePresentProgressive:
          JWord(kanaWord: 'りょうりしていない', kanjiWord: '料理していない'),
    ),
  ),
  Doushi(
    isIrregular: true,
    infinitive: '練習する',
    infinitiveFurigana: 'れんしゅうする',
    root: '練習',
    translation: NA.t('renshuusuru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'れんしゅうする', kanjiWord: '練習する'),
      pastSimple: JWord(kanaWord: 'れんしゅうした', kanjiWord: '練習した'),
      negative: JWord(kanaWord: 'れんしゅうしない', kanjiWord: '練習しない'),
      negativePast: JWord(kanaWord: 'れんしゅうしなかった', kanjiWord: '練習しなかった'),
      presentProgressive: JWord(kanaWord: 'れんしゅうしている', kanjiWord: '練習している'),
      negativePresentProgressive:
          JWord(kanaWord: 'れんしゅうしていない', kanjiWord: '練習していない'),
    ),
  ),
  Doushi(
    isIrregular: true,
    infinitive: '結婚する',
    infinitiveFurigana: 'けっこんする',
    root: '結婚',
    translation: NA.t('kekkonsuru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'けっこんする', kanjiWord: '結婚する'),
      pastSimple: JWord(kanaWord: 'けっこんした', kanjiWord: '結婚した'),
      negative: JWord(kanaWord: 'けっこんしない', kanjiWord: '結婚しない'),
      negativePast: JWord(kanaWord: 'けっこんしなかった', kanjiWord: '結婚しなかった'),
      presentProgressive: JWord(kanaWord: 'けっこんしている', kanjiWord: '結婚している'),
      negativePresentProgressive:
          JWord(kanaWord: 'けっこんしていない', kanjiWord: '結婚していない'),
    ),
  ),
  Doushi(
    isIrregular: true,
    infinitive: '勉強する',
    infinitiveFurigana: 'べんきょう',
    root: '勉強',
    translation: NA.t('benkyousuru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'べんきょうする', kanjiWord: '勉強する'),
      pastSimple: JWord(kanaWord: 'べんきょうした', kanjiWord: '勉強した'),
      negative: JWord(kanaWord: 'べんきょうしない', kanjiWord: '勉強しない'),
      negativePast: JWord(kanaWord: 'べんきょうしなかった', kanjiWord: '勉強しなかった'),
      presentProgressive: JWord(kanaWord: 'べんきょうしている', kanjiWord: '勉強している'),
      negativePresentProgressive:
          JWord(kanaWord: 'べんきょうしていない', kanjiWord: '勉強していない'),
    ),
  ),
  Doushi(
    isIrregular: true,
    infinitive: '宿題する',
    infinitiveFurigana: 'しゅくだい',
    root: '宿題',
    translation: NA.t('shukudaisuru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'しゅくだいする', kanjiWord: '宿題する'),
      pastSimple: JWord(kanaWord: 'しゅくだいした', kanjiWord: '宿題した'),
      negative: JWord(kanaWord: 'しゅくだいしない', kanjiWord: '宿題しない'),
      negativePast: JWord(kanaWord: 'しゅくだいしなかった', kanjiWord: '宿題しなかった'),
      presentProgressive: JWord(kanaWord: 'しゅくだいしている', kanjiWord: '宿題している'),
      negativePresentProgressive:
          JWord(kanaWord: 'しゅくだいしていない', kanjiWord: '宿題していない'),
    ),
  ),
  Doushi(
    isIrregular: true,
    infinitive: '復習する',
    infinitiveFurigana: 'ふくしゅう',
    root: '復習',
    translation: NA.t('fukushuusuru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'ふくしゅうする', kanjiWord: '復習する'),
      pastSimple: JWord(kanaWord: 'ふくしゅうした', kanjiWord: '復習した'),
      negative: JWord(kanaWord: 'ふくしゅうしない', kanjiWord: '復習しない'),
      negativePast: JWord(kanaWord: 'ふくしゅうしなかった', kanjiWord: '復習しなかった'),
      presentProgressive: JWord(kanaWord: 'ふくしゅうしている', kanjiWord: '復習している'),
      negativePresentProgressive:
          JWord(kanaWord: 'ふくしゅうしていない', kanjiWord: '復習していない'),
    ),
  ),
  Doushi(
    isIrregular: true,
    infinitive: '電話する',
    infinitiveFurigana: 'でんわ',
    root: '電話し',
    translation: NA.t('denwasuru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'でんわする', kanjiWord: '電話する'),
      pastSimple: JWord(kanaWord: 'でんわした', kanjiWord: '電話した'),
      negative: JWord(kanaWord: 'でんわしない', kanjiWord: '電話しない'),
      negativePast: JWord(kanaWord: 'でんわしなかった', kanjiWord: '電話しなかった'),
      presentProgressive: JWord(kanaWord: 'でんわしている', kanjiWord: '電話している'),
      negativePresentProgressive:
          JWord(kanaWord: 'でんわしていない', kanjiWord: '電話していない'),
    ),
  ),
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
      negativePresentProgressive: JWord(kanaWord: 'でていない', kanjiWord: '出ていない'),
    ),
  ),
  Doushi(
    isIrregular: false,
    infinitive: '届く',
    infinitiveFurigana: 'とどく',
    root: '届',
    translation: NA.t('todokeru'),
    casual: DoushiConj(
      present: JWord(kanaWord: 'とどく', kanjiWord: '届く'),
      pastSimple: JWord(kanaWord: 'とどいた', kanjiWord: '届いた'),
      negative: JWord(kanaWord: 'とどかない', kanjiWord: '届かない'),
      negativePast: JWord(kanaWord: 'とどかなかった', kanjiWord: '届かなかった'),
      presentProgressive: JWord(kanaWord: 'とどいている', kanjiWord: '届いている'),
      negativePresentProgressive:
          JWord(kanaWord: 'とどいていない', kanjiWord: '届いていない'),
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
    translation: NA.t('arau'),
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
    translation: NA.t('tsukeru'),
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
      presentProgressive: JWord(kanaWord: ''),
      negativePresentProgressive: JWord(kanaWord: ''),
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
