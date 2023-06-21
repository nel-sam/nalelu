import 'package:nalelu/furi_text.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/widgets/kanji.dart';

List<Kanji> kanjiN3Bank = [
  //     Kanji(
  //     translation: NA.t('市'),
  //     kanji: '市',
  //     onYomi: 'シ',
  //     kunYomi: 'いち',
  // phraseAnswers: [PhraseAnswer(translation: NA.t(''),phraseParts: [],answer: '',)]),
  Kanji(
      translation: NA.t('石'),
      kanji: '石',
      onYomi: 'セキ、シャク、コク',
      kunYomi: 'いし',
      phraseAnswers: [
        PhraseAnswer(
          // 彼は石を投げた
          translation: NA.t('karehaishiotageta'),
          phraseParts: [
            FuriText(text: '彼', furigana: 'かれ'),
            FuriText(text: 'は'),
            FuriText(text: '石', furigana: '？', emphasize: true),
            FuriText(text: 'を'),
            FuriText(text: '投', furigana: 'な'),
            FuriText(text: 'げた'),
          ],
          answer: 'いし',
        ),
        PhraseAnswer(
          // 石油は悪いですか？
          translation: NA.t('sekiyuhawaruidesuka'),
          phraseParts: [
            FuriText(text: '石', furigana: '？', emphasize: true),
            FuriText(text: '油', furigana: 'ゆ', emphasize: true),
            FuriText(text: 'は'),
            FuriText(text: '悪', furigana: 'わる'),
            FuriText(text: 'い'),
            FuriText(text: 'です'),
            FuriText(text: 'か？'),
          ],
          answer: 'せきゆ',
        ),
      ]),
  Kanji(
      translation: NA.t('耳'),
      kanji: '耳',
      onYomi: 'ジ',
      kunYomi: 'みみ',
      phraseAnswers: [
        PhraseAnswer(
          // 耳が痛い
          translation: NA.t('mimigaitai'),
          phraseParts: [
            FuriText(text: '耳', furigana: '？', emphasize: true),
            FuriText(text: 'が'),
            FuriText(text: '痛', furigana: 'いた'),
            FuriText(text: 'い'),
          ],
          answer: 'みみ',
        )
        // TODO: One for onYomi
      ]),
  Kanji(
      translation: NA.t('調'),
      kanji: '調',
      onYomi: 'チョウ',
      kunYomi: 'しらべる, ととのう',
      phraseAnswers: [
        PhraseAnswer(
          // いくらか調べてくれる？
          translation: NA.t('ikurakashirabetekureru'),
          phraseParts: [
            FuriText(text: 'いくらか'),
            FuriText(text: '調', furigana: '？', emphasize: true),
            FuriText(text: 'べて', emphasize: true),
            FuriText(text: 'くれる？'),
          ],
          answer: 'しらべて',
        ),
        PhraseAnswer(
          // 調子が悪い
          translation: NA.t('choushigawarui'),
          phraseParts: [
            FuriText(text: '調', furigana: '？', emphasize: true),
            FuriText(text: '子', furigana: 'し', emphasize: true),
            FuriText(text: 'が'),
            FuriText(text: '悪', furigana: 'わる'),
            FuriText(text: 'い'),
          ],
          answer: 'ちょうし',
        ),
        PhraseAnswer(
          // 警察は調査しています
          translation: NA.t('keisatsuhachousashiteimasu'),
          phraseParts: [
            FuriText(text: '警察', furigana: 'けいさつ'),
            FuriText(text: 'は'),
            FuriText(text: '調', furigana: '？', emphasize: true),
            FuriText(text: '査', furigana: 'さ', emphasize: true),
            FuriText(text: 'しています'),
          ],
          answer: 'ちょうさ',
        )
      ]),
  Kanji(
      translation: NA.t('具'),
      kanji: '具',
      onYomi: 'グ',
      kunYomi: 'そなえる',
      phraseAnswers: [
        PhraseAnswer(
          // 家具を買いました
          translation: NA.t('kaguwokaimashita'),
          phraseParts: [
            FuriText(text: '家', furigana: 'か', emphasize: true),
            FuriText(text: '具', furigana: '？', emphasize: true),
            FuriText(text: 'を'),
            FuriText(text: '買', furigana: 'か'),
            FuriText(text: 'いました'),
          ],
          answer: 'かぐ',
        ),
        PhraseAnswer(
          // 具体的な日本語を教えてください
          translation: NA.t('gutaitekinanihongowooshietekudasai'),
          phraseParts: [
            FuriText(text: '具', furigana: '？', emphasize: true),
            FuriText(text: '体的', furigana: 'たいてき', emphasize: true),
            FuriText(text: 'な'),
            FuriText(text: '日本語', furigana: 'にほんご'),
            FuriText(text: 'を'),
            FuriText(text: '教', furigana: 'おし'),
            FuriText(text: 'えてください'),
          ],
          answer: 'ぐたいてき',
        )
      ]),
  Kanji(
      translation: NA.t('寒'),
      kanji: '寒',
      onYomi: 'カン',
      kunYomi: 'さむ(い), さむ(がる)',
      phraseAnswers: [
        PhraseAnswer(
            // アラスカは寒いですね
            translation: NA.t('arusakahasamuidesune'),
            phraseParts: [
              FuriText(text: 'アラスカ', furigana: 'Alaska'),
              FuriText(text: 'は'),
              FuriText(text: '寒', furigana: '？', emphasize: true),
              FuriText(text: 'い', emphasize: true),
              FuriText(text: 'ですね'),
            ],
            answer: 'さむい'),
        PhraseAnswer(
            // その人は寒がりです
            translation: NA.t('sonohitohasamugaridesu'),
            phraseParts: [
              FuriText(text: 'その'),
              FuriText(text: '人', furigana: 'ひと'),
              FuriText(text: 'は'),
              FuriText(text: '寒', furigana: '？', emphasize: true),
              FuriText(text: 'がり', emphasize: true),
              FuriText(text: 'です'),
            ],
            answer: 'さむがり'),
      ]),
  Kanji(
      translation: NA.t('暗'),
      kanji: '暗',
      onYomi: 'アン',
      kunYomi: 'くら(い)',
      phraseAnswers: [
        PhraseAnswer(
            // 部屋は暗いね
            translation: NA.t('heyahekuraine'),
            phraseParts: [
              FuriText(text: '部屋', furigana: 'へや'),
              FuriText(text: 'は'),
              FuriText(text: '暗', furigana: '？', emphasize: true),
              FuriText(text: 'い', emphasize: true),
              FuriText(text: 'ね'),
            ],
            answer: 'くらい'),
        PhraseAnswer(
            // 暗記が苦手です
            translation: NA.t('ankiganigatedesu'),
            phraseParts: [
              FuriText(text: '暗', furigana: '？', emphasize: true),
              FuriText(text: '記', furigana: 'き', emphasize: true),
              FuriText(text: 'が'),
              FuriText(text: '苦手', furigana: 'にがて'),
              FuriText(text: 'です'),
            ],
            answer: 'あんき'),
      ]),
  Kanji(
      translation: NA.t('忙'),
      kanji: '忙',
      onYomi: 'ボウ',
      kunYomi: 'いそが(しい)',
      phraseAnswers: [
        PhraseAnswer(
            // 今日はちょっと忙しい
            translation: NA.t('kyouhachottoisogashii'),
            phraseParts: [
              FuriText(text: '今日', furigana: 'きょう'),
              FuriText(text: 'は'),
              FuriText(text: 'ちょっと'),
              FuriText(text: '忙', furigana: '？', emphasize: true),
              FuriText(text: 'しい', emphasize: true),
            ],
            answer: 'いそがしい'),
        PhraseAnswer(
            // ご多忙の中
            translation: NA.t('gotabounonaka'),
            phraseParts: [
              FuriText(text: 'ご'),
              FuriText(text: '多', furigana: 'た', emphasize: true),
              FuriText(text: '忙', furigana: '？', emphasize: true),
              FuriText(text: 'の'),
              FuriText(text: '中', furigana: 'なか'),
            ],
            answer: 'たぼう'),
      ]),
  Kanji(
      translation: NA.t('静'),
      kanji: '静',
      onYomi: 'セイ, ジョウ',
      kunYomi: 'しず, しず(か), しず(まる), しず(める)',
      phraseAnswers: [
        PhraseAnswer(
            // 静かな所が好きです
            translation: NA.t('shizukanatokorogasukidesu'),
            phraseParts: [
              FuriText(text: '静', furigana: '？', emphasize: true),
              FuriText(text: 'か', emphasize: true),
              FuriText(text: 'な'),
              FuriText(text: '所', furigana: 'ところ'),
              FuriText(text: 'が'),
              FuriText(text: '好', furigana: 'す'),
              FuriText(text: 'きです'),
            ],
            answer: 'しずか'),
        PhraseAnswer(
            // 静電気は危険ですか？
            translation: NA.t('seidenkihakikendesuka'),
            phraseParts: [
              FuriText(text: '静', furigana: '？', emphasize: true),
              FuriText(text: '電気', furigana: 'でんき', emphasize: true),
              FuriText(text: 'は'),
              FuriText(text: '危険', furigana: 'きけん'),
              FuriText(text: 'ですか？'),
            ],
            answer: 'せいでんき'),
      ]),
  Kanji(
      translation: NA.t('難'),
      kanji: '難',
      onYomi: 'ナン',
      kunYomi: 'むずか(しい), (あり)が(とう)',
      phraseAnswers: [
        PhraseAnswer(
            // 宿題は難しすぎる
            translation: NA.t('shukudaihamuzukashiisugiru'),
            phraseParts: [
              FuriText(text: '宿題', furigana: 'しゅくだい'),
              FuriText(text: 'は'),
              FuriText(text: '難', furigana: '？', emphasize: true),
              FuriText(text: 'しい', emphasize: true),
              FuriText(text: 'すぎる'),
            ],
            answer: 'むずかしい'),
        PhraseAnswer(
            // この問題は難しいです
            translation: NA.t('kitekuretearigatou'),
            phraseParts: [
              FuriText(text: '来', furigana: 'き'),
              FuriText(text: 'て'),
              FuriText(text: 'くれて'),
              FuriText(text: '有', furigana: 'あ', emphasize: true),
              FuriText(text: 'り', emphasize: true),
              FuriText(text: '難', furigana: '？', emphasize: true),
              FuriText(text: 'う', emphasize: true)
            ],
            answer: 'ありがとう'),
      ]),
  Kanji(
      translation: NA.t('好'),
      kanji: '好',
      onYomi: 'コウ',
      kunYomi: 'このむ, この(む)',
      phraseAnswers: [
        PhraseAnswer(
            // お好み焼き食べたことある？
            translation: NA.t('kokonimiyakitabekotoaru'),
            phraseParts: [
              FuriText(text: 'お', emphasize: true),
              FuriText(text: '好', furigana: '？', emphasize: true),
              FuriText(text: 'み', emphasize: true),
              FuriText(text: '焼', furigana: 'や', emphasize: true),
              FuriText(text: 'き', emphasize: true),
              FuriText(text: '食', furigana: 'た'),
              FuriText(text: 'べたことある？'),
            ],
            answer: 'おこのみやき'),
        PhraseAnswer(
            // お好み焼き食べたことある？
            translation: NA.t('koredaisuki'),
            phraseParts: [
              FuriText(text: 'これ'),
              FuriText(text: '大', furigana: 'だい', emphasize: true),
              FuriText(text: '好', furigana: '？', emphasize: true),
              FuriText(text: 'き', emphasize: true),
            ],
            answer: 'だいすき'),
        PhraseAnswer(
            // お好み焼き食べたことある？
            translation: NA.t('osushihadaikoubutsudesu'),
            phraseParts: [
              FuriText(text: 'おすしは'),
              FuriText(text: '大', furigana: 'だい', emphasize: true),
              FuriText(text: '好', furigana: '？', emphasize: true),
              FuriText(text: '物', furigana: 'ぶつ', emphasize: true),
              FuriText(text: 'です'),
            ],
            answer: 'だいこうぶつ'),
      ]),
  Kanji(
      translation: NA.t('座'),
      kanji: '座',
      onYomi: 'ザ',
      kunYomi: 'すわ(る)',
      phraseAnswers: [
        PhraseAnswer(
            // ここに座って
            translation: NA.t('kokonisuwatte'),
            phraseParts: [
              FuriText(text: 'ここに'),
              FuriText(text: '座', furigana: '？', emphasize: true),
              FuriText(text: 'って', emphasize: true),
            ],
            answer: 'すわって'),
        PhraseAnswer(
            // 新幹線の座席
            translation: NA.t('shinkansennozaseki'),
            phraseParts: [
              FuriText(text: '新幹線', furigana: 'しんかんせん'),
              FuriText(text: 'の'),
              FuriText(text: '座', furigana: '？', emphasize: true),
              FuriText(text: '席', furigana: 'せき', emphasize: true)
            ],
            answer: 'ざせき'),
        PhraseAnswer(
            // 銀行口座がありません
            translation: NA.t('ginkoukouzagaarimasen'),
            phraseParts: [
              FuriText(text: '銀行', furigana: 'ぎんこう'),
              FuriText(text: '口', furigana: 'こう', emphasize: true),
              FuriText(text: '座', furigana: '？', emphasize: true),
              FuriText(text: 'がありません'),
            ],
            answer: 'こうざ'),
      ]),
  Kanji(
      translation: NA.t('閉'),
      kanji: '閉',
      onYomi: 'ヘイ',
      kunYomi: 'と(じる), と(ざす), し(める), し(まる)',
      phraseAnswers: [
        PhraseAnswer(
            // お店が閉まる
            translation: NA.t('omisegashimaru'),
            phraseParts: [
              FuriText(text: 'お'),
              FuriText(text: '店', furigana: 'みせ'),
              FuriText(text: 'が', furigana: ''),
              FuriText(text: '閉', furigana: '？', emphasize: true),
              FuriText(text: 'まる', emphasize: true),
            ],
            answer: 'しまる'),
        PhraseAnswer(
            // 目を閉じて
            translation: NA.t('mewotojiru'),
            phraseParts: [
              FuriText(text: '目', furigana: 'め'),
              FuriText(text: 'を'),
              FuriText(text: '閉', furigana: '？', emphasize: true),
              FuriText(text: 'じて', emphasize: true),
            ],
            answer: 'とじて'),
        PhraseAnswer(
            // お店が閉店しました
            translation: NA.t('omisegahaitenshimashita'),
            phraseParts: [
              FuriText(text: 'お'),
              FuriText(text: '店', furigana: 'みせ'),
              FuriText(text: 'が'),
              FuriText(text: '閉', furigana: '？', emphasize: true),
              FuriText(text: '店', furigana: 'てん', emphasize: true),
              FuriText(text: 'しました'),
            ],
            answer: 'へいてん'),
      ]),
];
