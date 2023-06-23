import 'package:nalelu/furi_text.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/widgets/kanji.dart';

// TODO: Add note somewhere to tell users that examples given here are not
// textbook Japanese, but rather useful everyday Japanese sentences

List<Kanji> kanjiN5Bank = [
  // Kanji(
  //   translation: NA.t('北'),
  //   kanji: '北',
  //   onYomi: 'ホク',
  //   kunYomi: 'きた',
  //   phraseAnswers: [
  //     PhraseAnswer(
  //       translation: NA.t(''),
  //       phraseParts: [],
  //       answer: '',
  //     )
  //   ],
  // ),
  // Kanji(
  //   translation: NA.t('午'),
  //   kanji: '午',
  //   onYomi: 'ゴ',
  //   kunYomi: 'うま',
  //   phraseAnswers: [
  //     PhraseAnswer(
  //       translation: NA.t(''),
  //       phraseParts: [],
  //       answer: '',
  //     )
  //   ],
  // ),
  // Kanji(
  //   translation: NA.t('半'),
  //   kanji: '半',
  //   onYomi: 'ハン',
  //   kunYomi: 'なか、はん',
  //   phraseAnswers: [
  //     PhraseAnswer(
  //       translation: NA.t(''),
  //       phraseParts: [],
  //       answer: '',
  //     )
  //   ],
  // ),
  // Kanji(
  //   translation: NA.t('南'),
  //   kanji: '南',
  //   onYomi: 'ナン',
  //   kunYomi: 'みなみ',
  //   phraseAnswers: [
  //     PhraseAnswer(
  //       translation: NA.t(''),
  //       phraseParts: [],
  //       answer: '',
  //     )
  //   ],
  // ),
  // Kanji(
  //   translation: NA.t('国'),
  //   kanji: '国',
  //   onYomi: 'コク',
  //   kunYomi: 'くに',
  //   phraseAnswers: [
  //     PhraseAnswer(
  //       translation: NA.t(''),
  //       phraseParts: [],
  //       answer: '',
  //     )
  //   ],
  // ),
  // Kanji(
  //   translation: NA.t('女'),
  //   kanji: '女',
  //   onYomi: 'ジョ、ニョ、ニョウ',
  //   kunYomi: 'おんな',
  //   phraseAnswers: [
  //     PhraseAnswer(
  //       translation: NA.t(''),
  //       phraseParts: [],
  //       answer: '',
  //     )
  //   ],
  // ),
  //  Kanji(
  //   translation: NA.t('毎'),
  //   kanji: '毎',
  //   onYomi: 'マイ',
  //   kunYomi: 'ごと',
  //   phraseAnswers: [
  //     PhraseAnswer(
  //       translation: NA.t(''),
  //       phraseParts: [],
  //       answer: '',
  //     )
  //   ],
  // ),
  // Kanji(
  //   translation: NA.t('気'),
  //   kanji: '気',
  //   onYomi: 'キ、ケ',
  //   kunYomi: 'いき',
  //   phraseAnswers: [
  //     PhraseAnswer(
  //       translation: NA.t(''),
  //       phraseParts: [],
  //       answer: '',
  //     )
  //   ],
  // ),
  // Kanji(
  //   translation: NA.t('男'),
  //   kanji: '男',
  //   onYomi: 'ダン、ナン',
  //   kunYomi: 'おとこ',
  //   phraseAnswers: [
  //     PhraseAnswer(
  //       translation: NA.t(''),
  //       phraseParts: [],
  //       answer: '',
  //     )
  //   ],
  // ),
  Kanji(
    translation: NA.t('西'),
    kanji: '西',
    onYomi: 'セイ、サイ',
    kunYomi: 'にし',
    phraseAnswers: [
      PhraseAnswer(
        // 西日本は暑いですか？
        translation: NA.t('nishinihonwaatsuidesuka'),
        phraseParts: [
          FuriText(text: '西', furigana: '？', emphasize: true),
          FuriText(text: '日本', furigana: 'にほん'),
          FuriText(text: 'は'),
          FuriText(text: '暑', furigana: 'あつ'),
          FuriText(text: 'いですか？'),
        ],
        answer: 'にし',
      ),
      PhraseAnswer(
        // アメリカの西南にアリゾナがある
        translation: NA.t('amerikanoseinanniarizonagaaru'),
        phraseParts: [
          FuriText(text: 'アメリカ'),
          FuriText(text: 'の'),
          FuriText(text: '西', furigana: '？'),
          FuriText(text: '南', furigana: 'なん'),
          FuriText(text: 'に'),
          FuriText(text: 'アリゾナ'),
          FuriText(text: 'がある'),
        ],
        answer: 'せいなん',
      )
    ],
  ),
  Kanji(
      translation: NA.t('人'),
      kanji: '人',
      onYomi: 'ジン、ニン',
      kunYomi: 'ひと、-り、-と',
      phraseAnswers: [
        PhraseAnswer(
          // 人がいっぱい
          translation: NA.t('hitogaippai'),
          phraseParts: [
            FuriText(text: '人', furigana: '？', emphasize: true),
            FuriText(text: 'がいっぱい'),
          ],
          answer: 'ひと',
        ),
        PhraseAnswer(
          // 何人くるの？
          translation: NA.t('naninikuruno'),
          phraseParts: [
            FuriText(text: '何', furigana: 'なん', emphasize: true),
            FuriText(text: '人', furigana: '？', emphasize: true),
            FuriText(text: 'くるの？'),
          ],
          answer: 'なんにん',
        ),
        PhraseAnswer(
          // カナダ人は優しいです
          translation: NA.t('kanadajinwayasashiidesu'),
          phraseParts: [
            FuriText(text: 'カナダ', furigana: '？', emphasize: true),
            FuriText(text: '人', furigana: '？', emphasize: true),
            FuriText(text: 'は'),
            FuriText(text: '優', furigana: 'やさ'),
            FuriText(text: 'しいです'),
          ],
          answer: 'かなだじん',
        ),
        PhraseAnswer(
          // 二人しかいない
          translation: NA.t('futarishikainai'),
          phraseParts: [
            FuriText(text: '二', furigana: 'ふた', emphasize: true),
            FuriText(text: '人', furigana: '？', emphasize: true),
            FuriText(text: 'しかいない'),
          ],
          answer: 'ふたり',
        ),
      ]),
  Kanji(
      translation: NA.t('先'),
      kanji: '先',
      onYomi: 'セン',
      kunYomi: 'さき、ま',
      phraseAnswers: [
        PhraseAnswer(
          // 先に行きます
          translation: NA.t('sakiniikimasu'),
          phraseParts: [
            FuriText(text: '先', furigana: '？', emphasize: true),
            FuriText(text: 'に'),
            FuriText(text: '行', furigana: 'い'),
            FuriText(text: 'きます'),
          ],
          answer: 'さき',
        ),
        PhraseAnswer(
          // 先生は元気ですか？
          translation: NA.t('senseihagenkidesuka'),
          phraseParts: [
            FuriText(text: '先', furigana: '？', emphasize: true),
            FuriText(text: '生', furigana: 'せい', emphasize: true),
            FuriText(text: 'は'),
            FuriText(text: '元', furigana: 'げん'),
            FuriText(text: '気', furigana: 'き'),
            FuriText(text: 'ですか？'),
          ],
          answer: 'せんせい',
        ),
        PhraseAnswer(
          // 先週忙しかった
          translation: NA.t('senshuisogashikatta'),
          phraseParts: [
            FuriText(text: '先', furigana: '？', emphasize: true),
            FuriText(text: '週', furigana: 'しゅう', emphasize: true),
            FuriText(text: '忙', furigana: 'いそが'),
            FuriText(text: 'しかった'),
          ],
          answer: 'せんしゅう',
        ),
      ]),
  Kanji(
      translation: NA.t('名'),
      kanji: '名',
      onYomi: 'メイ、ミョウ',
      kunYomi: 'な',
      phraseAnswers: [
        PhraseAnswer(
          // 君の名は
          translation: NA.t('kiminonawa'),
          phraseParts: [
            FuriText(text: '君', furigana: 'きみ'),
            FuriText(text: 'の'),
            FuriText(text: '名', furigana: '？', emphasize: true),
            FuriText(text: 'は'),
          ],
          answer: 'な',
        ),
        PhraseAnswer(
          // 名前は何ですか
          translation: NA.t('namaehanandesuka'),
          phraseParts: [
            FuriText(text: '名', furigana: '？', emphasize: true),
            FuriText(text: '前', furigana: 'まえ', emphasize: true),
            FuriText(text: 'は'),
            FuriText(text: '何', furigana: 'なん'),
            FuriText(text: 'ですか？'),
          ],
          answer: 'なまえ',
        ),
        PhraseAnswer(
          // 有名な人を見たことない
          translation: NA.t('yuumeinahitowomitakotonai'),
          phraseParts: [
            FuriText(text: '有', furigana: 'ゆう', emphasize: true),
            FuriText(text: '名', furigana: '？', emphasize: true),
            FuriText(text: 'な'),
            FuriText(text: '人', furigana: 'ひと'),
            FuriText(text: 'を'),
            FuriText(text: '見', furigana: 'み'),
            FuriText(text: 'たことない'),
          ],
          answer: 'ゆうめい',
        )
      ]),
  Kanji(
      translation: NA.t('友'),
      kanji: '友',
      onYomi: 'ユウ',
      kunYomi: 'とも',
      phraseAnswers: [
        PhraseAnswer(
          translation: NA.t(''),
          phraseParts: [],
          answer: '',
        )
      ]),
  Kanji(
      translation: NA.t('天'),
      kanji: '天',
      onYomi: 'テン',
      kunYomi: 'あまつ、あめ、あま',
      phraseAnswers: [
        PhraseAnswer(
          // 天気がいいです
          translation: NA.t('tenkgaiidesu'),
          phraseParts: [
            FuriText(text: '天', furigana: '？', emphasize: true),
            FuriText(text: '気', furigana: 'き', emphasize: true),
            FuriText(text: 'がいいです'),
          ],
          answer: 'てんき',
        ),
      ]),
  Kanji(
      translation: NA.t('子'),
      kanji: '子',
      onYomi: 'シ、ス、ツ',
      kunYomi: 'こ',
      phraseAnswers: [
        PhraseAnswer(
          // 子供がいますか？
          translation: NA.t('kodomonogaimasuka'),
          phraseParts: [
            FuriText(text: '子', furigana: '？', emphasize: true),
            FuriText(text: '供', furigana: 'ども', emphasize: true),
            FuriText(text: 'がいますか？'),
          ],
          answer: 'こども',
        ),
        PhraseAnswer(
          //  女子たちは学校に行きます
          translation: NA.t('joshitachihagakkouniikimasu'),
          phraseParts: [
            FuriText(text: '女', furigana: 'じょ', emphasize: true),
            FuriText(text: '子', furigana: '？', emphasize: true),
            FuriText(text: 'たちは'),
            FuriText(text: '学校', furigana: 'がっこう'),
            FuriText(text: 'に'),
            FuriText(text: '行', furigana: 'い'),
            FuriText(text: 'きます'),
          ],
          answer: 'じょし',
        ),
        PhraseAnswer(
          // 椅子に座ってください
          translation: NA.t('isunisuwattekudasai'),
          phraseParts: [
            FuriText(text: '椅', furigana: 'い', emphasize: true),
            FuriText(text: '子', furigana: '？', emphasize: true),
            FuriText(text: 'に'),
            FuriText(text: '座', furigana: 'すわ'),
            FuriText(text: 'ってください'),
          ],
          answer: 'いす',
        ),
      ]),
  Kanji(
      translation: NA.t('時'),
      kanji: '時',
      onYomi: 'ジ',
      kunYomi: 'とき',
      phraseAnswers: [
        PhraseAnswer(
          // 時間がありますか？
          translation: NA.t('jikangaarimasuka'),
          phraseParts: [
            FuriText(text: '時', furigana: '？', emphasize: true),
            FuriText(text: '間', furigana: 'かん', emphasize: true),
            FuriText(text: 'がありますか？'),
          ],
          answer: 'じかん',
        ),
        PhraseAnswer(
          // 来た時に連絡してください
          translation: NA.t('kitatokinirenrakushitekudasai'),
          phraseParts: [
            FuriText(text: '来', furigana: 'き'),
            FuriText(
              text: 'た',
            ),
            FuriText(text: '時', furigana: '？', emphasize: true),
            FuriText(text: 'に'),
            FuriText(text: '連絡', furigana: 'れんらく'),
            FuriText(text: 'してください'),
          ],
          answer: 'とき',
        ),
      ]),
  Kanji(
      translation: NA.t('本'),
      kanji: '本',
      onYomi: 'ホン',
      kunYomi: 'もと',
      phraseAnswers: [
        PhraseAnswer(
          // 本読んでる
          translation: NA.t('honyonderu'),
          phraseParts: [
            FuriText(text: '本', furigana: '？', emphasize: true),
            FuriText(text: '読', furigana: 'よ'),
            FuriText(text: 'んでる'),
          ],
          answer: 'ほん',
        ),
        PhraseAnswer(
          // 本当ですか？
          translation: NA.t('hontoudesuka'),
          phraseParts: [
            FuriText(text: '本', furigana: '？', emphasize: true),
            FuriText(text: '当', furigana: 'とう', emphasize: true),
            FuriText(text: 'ですか？'),
          ],
          answer: 'ほんとう',
        ),
        PhraseAnswer(
          // 山本さんはいい人です
          translation: NA.t('yamamotosanhaiijindesu'),
          phraseParts: [
            FuriText(text: '山', furigana: 'やま', emphasize: true),
            FuriText(text: '本', furigana: '？', emphasize: true),
            FuriText(text: 'さんはいい'),
            FuriText(text: '人', furigana: 'ひと'),
            FuriText(text: 'です'),
          ],
          answer: 'やまもと',
        ),
      ]),
  Kanji(
      translation: NA.t('東'),
      kanji: '東',
      onYomi: 'トウ',
      kunYomi: 'ひがし',
      phraseAnswers: [
        PhraseAnswer(
          // 東京はすごいね
          translation: NA.t('toukyouhasugoine'),
          phraseParts: [
            FuriText(text: '東', furigana: '？', emphasize: true),
            FuriText(text: '京', furigana: 'きょう', emphasize: true),
            FuriText(text: 'は'),
            FuriText(text: 'すごい'),
            FuriText(text: 'ね'),
          ],
          answer: 'ようきょう',
        ),
        PhraseAnswer(
          // 東に山がたくさんある
          translation: NA.t('higashiyniyamagatakusanaru'),
          phraseParts: [
            FuriText(text: '東', furigana: '？', emphasize: true),
            FuriText(text: 'に'),
            FuriText(text: '山', furigana: 'やま'),
            FuriText(text: 'が'),
            FuriText(text: 'たくさん'),
            FuriText(text: 'ある'),
          ],
          answer: 'ひがし',
        ),
      ]),
  Kanji(
      translation: NA.t('生'),
      kanji: '生',
      onYomi: 'セイ, ショウ',
      kunYomi: 'い(きる), う(まれる), なま',
      phraseAnswers: [
        PhraseAnswer(
          // 生卵食べたい
          translation: NA.t('namatamagotabetai'),
          phraseParts: [
            FuriText(text: '生', furigana: '？', emphasize: true),
            FuriText(text: '卵', furigana: 'たまご'),
            FuriText(text: '食', furigana: 'た'),
            FuriText(text: 'べたい'),
          ],
          answer: 'なま',
        ),
        PhraseAnswer(
          // 先生は日本人です
          translation: NA.t('senseihanihonjindesu'),
          phraseParts: [
            FuriText(text: '先', furigana: 'せん', emphasize: true),
            FuriText(text: '生', furigana: '？', emphasize: true),
            FuriText(text: 'は'),
            FuriText(text: '日本人', furigana: 'にほんじん'),
            FuriText(text: 'です'),
          ],
          answer: 'せんせい',
        ),
        PhraseAnswer(
          // 生ビール二つください
          translation: NA.t('namabiirufutatsukudasai'),
          phraseParts: [
            FuriText(text: '生', furigana: '？', emphasize: true),
            FuriText(text: 'ビール'),
            FuriText(text: '二', furigana: 'ふた'),
            FuriText(text: 'つください'),
          ],
          answer: 'なま',
        ),
      ]),
  Kanji(
      translation: NA.t('車'),
      kanji: '車',
      onYomi: 'シャ',
      kunYomi: 'くるま',
      phraseAnswers: [
        PhraseAnswer(
          // 車ないところに行きたい
          translation: NA.t('kurumanaitokoroniikitai'),
          phraseParts: [
            FuriText(text: '車', furigana: '？', emphasize: true),
            FuriText(text: 'ないところに'),
            FuriText(text: '行', furigana: 'い'),
            FuriText(text: 'きたい'),
          ],
          answer: 'くるま',
        ),
        PhraseAnswer(
          // 電車で行こう
          translation: NA.t('denshadeikou'),
          phraseParts: [
            FuriText(text: '電', furigana: 'でん', emphasize: true),
            FuriText(text: '車', furigana: '？', emphasize: true),
            FuriText(text: 'で'),
            FuriText(text: '行', furigana: 'い'),
            FuriText(text: 'こう'),
          ],
          answer: 'でんしゃ',
        ),
      ]),
  Kanji(
      translation: NA.t('学'),
      kanji: '学',
      onYomi: 'ガク',
      kunYomi: 'まなぶ',
      phraseAnswers: [
        PhraseAnswer(
          // 学校に行く
          translation: NA.t('gakkouniiku'),
          phraseParts: [
            FuriText(text: '学', furigana: '？', emphasize: true),
            FuriText(text: '校', furigana: 'こう', emphasize: true),
            FuriText(text: 'に'),
            FuriText(text: '行', furigana: 'い'),
            FuriText(text: 'く'),
          ],
          answer: 'がっこう',
        ),
        PhraseAnswer(
          // 大学生です
          translation: NA.t('daigakuseidesu'),
          phraseParts: [
            FuriText(text: '大', furigana: 'だい', emphasize: true),
            FuriText(text: '学', furigana: '？', emphasize: true),
            FuriText(text: '生', furigana: 'せい', emphasize: true),
            FuriText(text: 'です'),
          ],
          answer: 'だいがくせい',
        ),
        PhraseAnswer(
          //　大学で多くのことを学んだ
          translation: NA.t('daigakudeookunokotowomananda'),
          phraseParts: [
            FuriText(text: '大学', furigana: 'だいがく'),
            FuriText(text: 'で'),
            FuriText(text: '多', furigana: 'おお'),
            FuriText(text: 'くのことを'),
            FuriText(text: '学', furigana: '？', emphasize: true),
            FuriText(text: 'んだ', emphasize: true),
          ],
          answer: 'まなんだ',
        ),
      ]),
  Kanji(
      translation: NA.t('校'),
      kanji: '校',
      onYomi: 'コウ, キョウ',
      kunYomi: '',
      phraseAnswers: [
        PhraseAnswer(
          // 学校に行く
          translation: NA.t('gakkouniiku'),
          phraseParts: [
            FuriText(text: '学', furigana: 'がっ', emphasize: true),
            FuriText(text: '校', furigana: '？', emphasize: true),
            FuriText(text: 'に'),
            FuriText(text: '行', furigana: 'い'),
            FuriText(text: 'く'),
          ],
          answer: 'がっこう',
        ),
      ]),
  Kanji(
      translation: NA.t('父'),
      kanji: '父',
      onYomi: 'フ, フウ',
      kunYomi: 'ちち, とう',
      phraseAnswers: [
        PhraseAnswer(
          // お父さんと一緒にいる
          translation: NA.t('otousantoisshoniiru'),
          phraseParts: [
            FuriText(text: 'お', emphasize: true),
            FuriText(text: '父', furigana: '？', emphasize: true),
            FuriText(text: 'さん', emphasize: true),
            FuriText(text: 'と'),
            FuriText(text: '一緒', furigana: 'いっしょ'),
            FuriText(text: 'にいる'),
          ],
          answer: 'おとうさん',
        ),
        PhraseAnswer(
          // 父は寝ている
          translation: NA.t('chichihaneteiru'),
          phraseParts: [
            FuriText(text: '父', furigana: '？', emphasize: true),
            FuriText(text: 'は'),
            FuriText(text: '寝', furigana: 'ね'),
            FuriText(text: 'ている'),
          ],
          answer: 'ちち',
        ),
      ]),
  Kanji(
      translation: NA.t('母'),
      kanji: '母',
      onYomi: 'ボ, ボウ',
      kunYomi: 'はは, かあ(さん)',
      phraseAnswers: [
        PhraseAnswer(
            // お母さんは優しい人です
            translation: NA.t('okaasanhayasashiihitodesu'),
            phraseParts: [
              FuriText(text: 'お', emphasize: true),
              FuriText(text: '母', furigana: '？', emphasize: true),
              FuriText(text: 'さん', emphasize: true),
              FuriText(text: 'は'),
              FuriText(text: '優', furigana: 'やさ'),
              FuriText(text: 'しい'),
              FuriText(text: '人', furigana: 'ひと'),
              FuriText(text: 'です'),
            ],
            answer: 'おかあさん'),
        PhraseAnswer(
          // 母の日はいつですか？
          translation: NA.t('hahanohihaitsudesuka'),
          phraseParts: [
            FuriText(text: '母', furigana: '？', emphasize: true),
            FuriText(text: 'の'),
            FuriText(text: '日', furigana: 'ひ'),
            FuriText(text: 'は'),
            FuriText(text: 'いつですか？'),
          ],
          answer: 'はは',
        ),
        PhraseAnswer(
          // 母国語はスペイン語です
          translation: NA.t('bokokugowasupeingo'),
          phraseParts: [
            FuriText(text: '母', furigana: '？', emphasize: true),
            FuriText(text: '国', furigana: 'こく', emphasize: true),
            FuriText(text: '語', furigana: 'ご', emphasize: true),
            FuriText(text: 'は'),
            FuriText(text: 'スペイン'),
            FuriText(text: '語', furigana: 'ご'),
            FuriText(text: 'です'),
          ],
          answer: 'ぼこくご',
        )
      ]),
  Kanji(
      translation: NA.t('雨'),
      kanji: '雨',
      onYomi: 'ウ, ユ',
      kunYomi: 'あめ',
      phraseAnswers: [
        PhraseAnswer(
          // 雨が降っています
          translation: NA.t('amegafutteimasu'),
          phraseParts: [
            FuriText(text: '雨', furigana: '？', emphasize: true),
            FuriText(text: 'が'),
            FuriText(text: '降', furigana: 'ふ'),
            FuriText(text: 'っています'),
          ],
          answer: 'あめ',
        ),
        PhraseAnswer(
          // 梅雨はいつですか？
          translation: NA.t('tsuyuhaitsudesuka'),
          phraseParts: [
            FuriText(text: '梅', furigana: 'つ', emphasize: true),
            FuriText(text: '雨', furigana: '？', emphasize: true),
            FuriText(text: 'は'),
            FuriText(text: 'いつですか？'),
          ],
          answer: 'つゆ',
        ),
      ]),
  Kanji(
      translation: NA.t('電'),
      kanji: '電',
      onYomi: 'デン, テン',
      kunYomi: '',
      phraseAnswers: [
        PhraseAnswer(
          // 電気を消してください
          translation: NA.t('denkiwokeshitekudasai'),
          phraseParts: [
            FuriText(text: '電', furigana: '？', emphasize: true),
            FuriText(text: '気', furigana: 'き', emphasize: true),
            FuriText(text: 'を'),
            FuriText(text: '消', furigana: 'け'),
            FuriText(text: 'してください'),
          ],
          answer: 'でんき',
        )
      ]),
  Kanji(
      translation: NA.t('語'),
      kanji: '語',
      onYomi: 'ゴ, ガ',
      kunYomi: 'かたる, かたらう',
      phraseAnswers: [
        PhraseAnswer(
          // 日本語を勉強します
          translation: NA.t('nihongoobenkyoushimasu'),
          phraseParts: [
            FuriText(text: '日本', furigana: 'にほん', emphasize: true),
            FuriText(text: '語', furigana: '？', emphasize: true),
            FuriText(text: 'を'),
            FuriText(text: '勉強', furigana: 'べんきょう'),
            FuriText(text: 'します'),
          ],
          answer: 'にほんご',
        ),
        PhraseAnswer(
          // 物語読んでくれる？
          translation: NA.t('monogatariyondekureru'),
          phraseParts: [
            FuriText(text: '物', furigana: 'もの', emphasize: true),
            FuriText(text: '語', furigana: '？', emphasize: true),
            FuriText(text: '読', furigana: 'よ'),
            FuriText(text: 'んでくれる？'),
          ],
          answer: 'ものがたり',
        ),
      ]),

  Kanji(
      translation: NA.t('間'),
      kanji: '間',
      onYomi: 'カン, ケン',
      kunYomi: 'あいだ, -ま',
      phraseAnswers: [
        PhraseAnswer(
          // 二人の間に座ってください
          translation: NA.t('futarinoaidanisawattekudasai'),
          phraseParts: [
            FuriText(text: '二人', furigana: 'ふたり'),
            FuriText(text: 'の'),
            FuriText(text: '間', furigana: '？', emphasize: true),
            FuriText(text: 'に'),
            FuriText(text: '座', furigana: 'すわ'),
            FuriText(text: 'ってください'),
          ],
          answer: 'あいだ',
        ),
        PhraseAnswer(
          // 今は時間がない
          translation: NA.t('imahajikanganai'),
          phraseParts: [
            FuriText(text: '今', furigana: 'いま'),
            FuriText(text: 'は'),
            FuriText(text: '時', furigana: 'じ', emphasize: true),
            FuriText(text: '間', furigana: '？', emphasize: true),
            FuriText(text: 'がない'),
          ],
          answer: 'じかん',
        ),
        PhraseAnswer(
          // 人間は自省する
          translation: NA.t('ningenhajiseisuru'),
          phraseParts: [
            FuriText(text: '人', furigana: 'にん', emphasize: true),
            FuriText(text: '間', furigana: '？', emphasize: true),
            FuriText(text: 'は'),
            FuriText(text: '自省', furigana: 'じせい'),
            FuriText(text: 'する'),
          ],
          answer: 'にんげん',
        ),
      ]),
  Kanji(
      translation: NA.t('何'),
      kanji: '何',
      onYomi: 'カ',
      kunYomi: 'なに, なん',
      phraseAnswers: [
        PhraseAnswer(
          // 何時ですか？
          translation: NA.t('nanjideskuka'),
          phraseParts: [
            FuriText(text: '何', furigana: '？', emphasize: true),
            FuriText(text: '時', furigana: 'じ', emphasize: true),
            FuriText(text: 'ですか？'),
          ],
          answer: 'なんじ',
        ),
        PhraseAnswer(
          // 何か食べたい
          translation: NA.t('nanikatabetai'),
          phraseParts: [
            FuriText(text: '何', furigana: '？', emphasize: true),
            FuriText(text: 'か', emphasize: true),
            FuriText(text: '食', furigana: 'た'),
            FuriText(text: 'べたい'),
          ],
          answer: 'なんか',
        ),
        PhraseAnswer(
          // これは何？
          translation: NA.t('korehanani'),
          phraseParts: [
            FuriText(text: 'これは'),
            FuriText(text: '何', furigana: '？', emphasize: true),
            FuriText(text: '？'),
          ],
          answer: 'なに',
        )
      ]),

  Kanji(
      translation: NA.t('一'),
      kanji: '一',
      onYomi: 'イチ',
      kunYomi: 'ひと, ひとつ, いっ',
      phraseAnswers: [
        PhraseAnswer(
            // 一人で行きたい
            translation: NA.t('hitorideikitai'),
            phraseParts: [
              FuriText(text: '一', furigana: '？', emphasize: true),
              FuriText(text: '人', furigana: 'り', emphasize: true),
              FuriText(text: 'で'),
              FuriText(text: '行', furigana: 'い'),
              FuriText(text: 'きたい'),
            ],
            answer: 'ひとり'),
        PhraseAnswer(
            // 彼は一番かっこいい
            translation: NA.t('karehaichibanikkoi'),
            phraseParts: [
              FuriText(text: '彼', furigana: 'かれ'),
              FuriText(text: 'は'),
              FuriText(text: '一', furigana: '？', emphasize: true),
              FuriText(text: '番', furigana: 'ばん', emphasize: true),
              FuriText(text: 'かっこいい'),
            ],
            answer: 'いちばん'),
        PhraseAnswer(
            // ビールはあと一本しかない
            translation: NA.t('biiruhaatoipponshikanai'),
            phraseParts: [
              FuriText(text: 'ビール', furigana: 'beer'),
              FuriText(text: 'は'),
              FuriText(text: 'あと'),
              FuriText(text: '一', furigana: '？', emphasize: true),
              FuriText(text: '本', furigana: 'ぽん', emphasize: true),
              FuriText(text: 'しかない'),
            ],
            answer: 'いっぽん'),
        PhraseAnswer(
            // ビール一つください
            translation: NA.t('biiruhitotsukudasai'),
            phraseParts: [
              FuriText(text: 'ビール', furigana: 'beer'),
              FuriText(text: '一', furigana: '？', emphasize: true),
              FuriText(text: 'つ', emphasize: true),
              FuriText(text: 'ください'),
            ],
            answer: 'ひとつ'),
      ]),
  Kanji(
      translation: NA.t('二'),
      kanji: '二',
      onYomi: 'ニ',
      kunYomi: 'ふた, ふたつ',
      phraseAnswers: [
        PhraseAnswer(
            // リンゴ二つ食べた
            translation: NA.t('ringofutatsutabeta'),
            phraseParts: [
              FuriText(text: 'リンゴ'),
              FuriText(text: '二', furigana: '？', emphasize: true),
              FuriText(text: 'つ', emphasize: true),
              FuriText(text: '食べた'),
            ],
            answer: 'ふたつ'),
        PhraseAnswer(
            // ２歳の子供がいます
            translation: NA.t('nisainokodogaimasu'),
            phraseParts: [
              FuriText(text: '二', furigana: '？', emphasize: true),
              FuriText(text: '歳', furigana: 'さい', emphasize: true),
              FuriText(text: 'の'),
              FuriText(text: '子供', furigana: 'こども'),
              FuriText(text: 'がいます'),
            ],
            answer: 'にさい'),
      ]),
  Kanji(
      translation: NA.t('三'),
      kanji: '三',
      onYomi: 'サン, ゾウ',
      kunYomi: 'み, みつ, みっつ',
      phraseAnswers: [
        PhraseAnswer(
            // 三月に来ないほうがいいよ
            translation: NA.t('sangatsunikonaihougaīyo'),
            phraseParts: [
              FuriText(text: '三', furigana: '？', emphasize: true),
              FuriText(text: '月', furigana: 'がつ', emphasize: true),
              FuriText(text: 'に'),
              FuriText(text: '来', furigana: 'こ'),
              FuriText(text: 'ないほうがいいよ'),
            ],
            answer: 'さんがつ'),
        PhraseAnswer(
            // ゲームが三つもあります
            translation: NA.t('geemugamittsumoarimasu'),
            phraseParts: [
              FuriText(text: 'ゲーム', furigana: 'game'),
              FuriText(text: 'が'),
              FuriText(text: '三', furigana: '？', emphasize: true),
              FuriText(text: 'つ', emphasize: true),
              FuriText(text: 'もあります'),
            ],
            answer: 'みっつ'),
      ]),
  Kanji(
      translation: NA.t('四'),
      kanji: '四',
      onYomi: 'シ',
      kunYomi: 'よ, よつ, よっつ',
      phraseAnswers: [
        PhraseAnswer(
            // 四月はまだ涼しいよ
            translation: NA.t('shigatsuhamadasuzushiiyo'),
            phraseParts: [
              FuriText(text: '四', furigana: '？', emphasize: true),
              FuriText(text: '月', furigana: 'がつ', emphasize: true),
              FuriText(text: 'はまだ'),
              FuriText(text: '涼', furigana: 'すず'),
              FuriText(text: 'しいよ'),
            ],
            answer: 'しがつ'),
        PhraseAnswer(
            // あと四日でクリスマスだ
            translation: NA.t('atoyokkadekurisumasuda'),
            phraseParts: [
              FuriText(text: 'あと'),
              FuriText(text: '四', furigana: '？', emphasize: true),
              FuriText(text: '日', furigana: 'か', emphasize: true),
              FuriText(text: 'で'),
              FuriText(text: 'クリスマス', furigana: 'Christmas'),
              FuriText(text: 'だ'),
            ],
            answer: 'よっか'),
        PhraseAnswer(
            // メッシは四ゴールを挙げた
            translation: NA.t('messhihayongooruwoageta'),
            phraseParts: [
              FuriText(text: 'メッシ', furigana: 'Messi'),
              FuriText(text: 'は'),
              FuriText(text: '四', furigana: '？', emphasize: true),
              FuriText(text: 'ゴール', furigana: 'goal'),
              FuriText(text: 'を'),
              FuriText(text: '挙', furigana: 'あ'),
              FuriText(text: 'げた'),
            ],
            answer: 'よん'),
      ]),
  Kanji(
      translation: NA.t('五'),
      kanji: '五',
      onYomi: 'ゴ',
      kunYomi: 'いつ, いつつ',
      phraseAnswers: [
        PhraseAnswer(
            // 星が五つしか見えない
            translation: NA.t('hoshigaitsutsushikamienai'),
            phraseParts: [
              FuriText(text: '星', furigana: 'ほし'),
              FuriText(text: 'が'),
              FuriText(text: '五', furigana: '？', emphasize: true),
              FuriText(text: 'つ', emphasize: true),
              FuriText(text: 'しか'),
              FuriText(text: '見', furigana: 'み'),
              FuriText(text: 'えない'),
            ],
            answer: 'いつつ'),
        PhraseAnswer(
            // 五月からだんだん暑くなる
            translation: NA.t('gogatsukaradandanatsukunaru'),
            phraseParts: [
              FuriText(text: '五', furigana: '？', emphasize: true),
              FuriText(text: '月', furigana: 'がつ', emphasize: true),
              FuriText(text: 'からだんだん'),
              FuriText(text: '暑', furigana: 'あつ'),
              FuriText(text: 'くなる'),
            ],
            answer: 'ごがつ'),
        PhraseAnswer(
            // マンガは五百円くらいする
            translation: NA.t('mangahagohyakuenkuraisuru'),
            phraseParts: [
              FuriText(text: 'マンガは'),
              FuriText(text: '五', furigana: '？', emphasize: true),
              FuriText(text: '百円', furigana: 'ひゃくえん', emphasize: true),
              FuriText(text: 'くらいする'),
            ],
            answer: 'ごひゃくえん'),
      ]),
  Kanji(
      translation: NA.t('六'),
      kanji: '六',
      onYomi: 'ロク',
      kunYomi: 'む, むつ, むっつ',
      phraseAnswers: [
        PhraseAnswer(
            // 生ビール六つください
            translation: NA.t('namabirumuttukudasai'),
            phraseParts: [
              FuriText(text: '生', furigana: 'なま'),
              FuriText(text: 'ビール', furigana: 'beer'),
              FuriText(text: '六', furigana: '？', emphasize: true),
              FuriText(text: 'つ', emphasize: true),
              FuriText(text: 'ください'),
            ],
            answer: 'むっつ'),
        PhraseAnswer(
            // もうすぐ六月です
            translation: NA.t('mousugurokugatsudesu'),
            phraseParts: [
              FuriText(text: 'もうすぐ'),
              FuriText(text: '六', furigana: '？', emphasize: true),
              FuriText(text: '月', furigana: 'がつ', emphasize: true),
              FuriText(text: 'です'),
            ],
            answer: 'ろくがつ'),
        PhraseAnswer(
            // 六日はあいてる？
            translation: NA.t('muikahaaiteru'),
            phraseParts: [
              FuriText(text: '六', furigana: '？', emphasize: true),
              FuriText(text: '日', furigana: 'か', emphasize: true),
              FuriText(text: 'はあいてる？'),
            ],
            answer: 'むいか'),
      ]),
  Kanji(
      translation: NA.t('七'),
      kanji: '七',
      onYomi: 'シチ',
      kunYomi: 'なな, なの',
      phraseAnswers: [
        PhraseAnswer(
            // りんご七つください
            translation: NA.t('ringonanatsukudasai'),
            phraseParts: [
              FuriText(text: 'りんご'),
              FuriText(text: '七', furigana: '？', emphasize: true),
              FuriText(text: 'つ', emphasize: true),
              FuriText(text: 'ください'),
            ],
            answer: 'ななつ'),
        PhraseAnswer(
            // 七月に休みがない
            translation: NA.t('sichigatsuniyasumiganai'),
            phraseParts: [
              FuriText(text: '七', furigana: '？', emphasize: true),
              FuriText(text: '月', furigana: 'がつ', emphasize: true),
              FuriText(text: 'に'),
              FuriText(text: '休', furigana: 'やす'),
              FuriText(text: 'みがない'),
            ],
            answer: 'しちがつ'),
        PhraseAnswer(
            // 七日もいるの？
            translation: NA.t('nanokamoiruno'),
            phraseParts: [
              FuriText(text: '七', furigana: '？', emphasize: true),
              FuriText(text: '日', furigana: 'か', emphasize: true),
              FuriText(text: 'もいるの？'),
            ],
            answer: 'なのか'),
      ]),
  Kanji(
      translation: NA.t('八'),
      kanji: '八',
      onYomi: 'ハチ',
      kunYomi: 'や, よう',
      phraseAnswers: [
        // PhraseAnswer(
        //     translation: NA.t(''),
        //     phraseParts: [
        //       FuriText(text: '八つ', furigana: '？', emphasize: true),
        //     ],
        //     answer: 'やっ'),
        PhraseAnswer(
            // 八月の天気はどうですか？
            translation: NA.t('hachigatsunotenkihadoudesuka'),
            phraseParts: [
              FuriText(text: '八', furigana: '？', emphasize: true),
              FuriText(text: '月', furigana: 'がつ', emphasize: true),
              FuriText(text: 'の'),
              FuriText(text: '天気', furigana: 'てんき'),
              FuriText(text: 'はどうですか？'),
            ],
            answer: 'はちがつ'),
        PhraseAnswer(
            // 八日に何をしますか？
            translation: NA.t('youkaninaniwoshimasuka'),
            phraseParts: [
              FuriText(text: '八', furigana: '？', emphasize: true),
              FuriText(text: '日', furigana: 'か', emphasize: true),
              FuriText(text: 'に'),
              FuriText(text: '何', furigana: 'なに'),
              FuriText(text: 'をしますか？'),
            ],
            answer: 'ようか'),
      ]),
  Kanji(
      translation: NA.t('九'),
      kanji: '九',
      onYomi: 'キュウ, ク',
      kunYomi: 'ここの, ここのつ',
      phraseAnswers: [
        PhraseAnswer(
            // 九月にスペインに行きます
            translation: NA.t('kugatsunisupeinniikimasu'),
            phraseParts: [
              FuriText(text: '九', furigana: '？', emphasize: true),
              FuriText(text: '月', furigana: 'がつ', emphasize: true),
              FuriText(text: 'に'),
              FuriText(text: 'スペイン', furigana: 'Spain'),
              FuriText(text: 'に'),
              FuriText(text: '行', furigana: 'い'),
              FuriText(text: 'きます'),
            ],
            answer: 'くがつ'),
        PhraseAnswer(
            // 九日に会いましょう
            translation: NA.t('kokonokaniaimashou'),
            phraseParts: [
              FuriText(text: '九', furigana: '？', emphasize: true),
              FuriText(text: '日', furigana: 'か', emphasize: true),
              FuriText(text: 'に'),
              FuriText(text: '会', furigana: 'あ'),
              FuriText(text: 'いましょう'),
            ],
            answer: 'ここのか'),
      ]),
  Kanji(
      translation: NA.t('十'),
      kanji: '十',
      onYomi: 'ジュウ',
      kunYomi: 'とお',
      phraseAnswers: [
        PhraseAnswer(
            // 十月は寒いですか？
            translation: NA.t('juugatsuhasamuidesuka'),
            phraseParts: [
              FuriText(text: '十', furigana: '？', emphasize: true),
              FuriText(text: '月', furigana: 'がつ', emphasize: true),
              FuriText(text: 'は'),
              FuriText(text: '寒', furigana: 'さむ'),
              FuriText(text: 'いですか？'),
            ],
            answer: 'じゅうがつ'),
        PhraseAnswer(
            // 十日分の服持ってきてね
            translation: NA.t('tookabunnofukumottekitene'),
            phraseParts: [
              FuriText(text: '十', furigana: '？', emphasize: true),
              FuriText(text: '日', furigana: 'か', emphasize: true),
              FuriText(text: '分', furigana: 'ぶん'),
              FuriText(text: 'の'),
              FuriText(text: '服', furigana: 'ふく'),
              FuriText(text: '持', furigana: 'も'),
              FuriText(text: 'ってきてね'),
            ],
            answer: 'とおか'),
        PhraseAnswer(
            // 十分食べた？
            translation: NA.t('juubuntabeta'),
            phraseParts: [
              FuriText(text: '十', furigana: '？', emphasize: true),
              FuriText(text: '分', furigana: 'ぶん', emphasize: true),
              FuriText(text: '食', furigana: 'た'),
              FuriText(text: 'べた？'),
            ],
            answer: 'じゅうぶん'),
      ]),
  Kanji(
      translation: NA.t('百'),
      kanji: '百',
      onYomi: 'ヒャク',
      kunYomi: 'もも',
      phraseAnswers: [
        PhraseAnswer(
            // 腹筋を百回やった
            translation: NA.t('fukkinwohyakkaiyatta'),
            phraseParts: [
              FuriText(text: '腹筋', furigana: 'ふっきん'),
              FuriText(text: 'を'),
              FuriText(text: '百', furigana: '？', emphasize: true),
              FuriText(text: '回', furigana: 'かい', emphasize: true),
              FuriText(text: 'やった'),
            ],
            answer: 'ひゃっかい'),
        PhraseAnswer(
            // 三百円ある？
            translation: NA.t('sambyakuenaru'),
            phraseParts: [
              FuriText(text: '三', furigana: 'さん', emphasize: true),
              FuriText(text: '百', furigana: '？', emphasize: true),
              FuriText(text: '円', furigana: 'えん', emphasize: true),
              FuriText(text: 'ある？'),
            ],
            answer: 'さんびゃくえん'),
      ]),
  Kanji(
      translation: NA.t('千'),
      kanji: '千',
      onYomi: 'セン',
      kunYomi: 'ち',
      phraseAnswers: [
        PhraseAnswer(
            // 二千人も参加しました
            translation: NA.t('sansenninmosankashimashita'),
            phraseParts: [
              FuriText(text: '三', furigana: 'さん', emphasize: true),
              FuriText(text: '千', furigana: '？', emphasize: true),
              FuriText(text: '人', furigana: 'にん', emphasize: true),
              FuriText(text: 'も'),
              FuriText(text: '参加', furigana: 'さんか'),
              FuriText(text: 'しました'),
            ],
            answer: 'さんせんにん'),
        PhraseAnswer(
            // 三千秒は何時間ですか？
            translation: NA.t('sanzenbyouhananjikandesuka'),
            phraseParts: [
              FuriText(text: '三', furigana: 'さん', emphasize: true),
              FuriText(text: '千', furigana: '？', emphasize: true),
              FuriText(text: '秒', furigana: 'びょう', emphasize: true),
              FuriText(text: 'は'),
              FuriText(text: '何', furigana: 'なん'),
              FuriText(text: '時間', furigana: 'じかん'),
              FuriText(text: 'ですか？'),
            ],
            answer: 'さんぜんびょう'),
      ]),
  Kanji(
      translation: NA.t('万'),
      kanji: '万',
      onYomi: 'マン, バン',
      kunYomi: 'よろず',
      phraseAnswers: [
        PhraseAnswer(
            // 一万円もない
            translation: NA.t('nimanenmonai'),
            phraseParts: [
              FuriText(text: 'ニ', furigana: 'に', emphasize: true),
              FuriText(text: '万', furigana: '？', emphasize: true),
              FuriText(text: '円', furigana: 'えん', emphasize: true),
              FuriText(text: 'もない'),
            ],
            answer: 'にまんえん'),
      ]),
  Kanji(
      translation: NA.t('円'),
      kanji: '円',
      onYomi: 'エン',
      kunYomi: 'まる, まるい, まど, まどか',
      phraseAnswers: [
        PhraseAnswer(
            translation: NA.t('engatakakunatta'),
            phraseParts: [
              // 円が高くなった
              FuriText(text: '円', furigana: '？', emphasize: true),
              FuriText(text: 'が'),
              FuriText(text: '高', furigana: 'たか'),
              FuriText(text: 'くなった'),
            ],
            answer: 'えん'),
        PhraseAnswer(
            // 四千円するよ
            translation: NA.t('yonsenensuruyo'),
            phraseParts: [
              FuriText(text: '四万', furigana: 'よんせん', emphasize: true),
              FuriText(text: '円', furigana: '？', emphasize: true),
              FuriText(text: 'するよ'),
            ],
            answer: 'よんせんえん'),
      ]),
  Kanji(
      translation: NA.t('日'),
      kanji: '日',
      onYomi: 'ニチ, ジツ',
      kunYomi: 'ひ, か, かつ, かれる',
      phraseAnswers: [
        PhraseAnswer(
            // 日本に行きたい
            translation: NA.t('nihonniikitai'),
            phraseParts: [
              FuriText(text: '日', furigana: '？', emphasize: true),
              FuriText(text: '本', furigana: 'ほん', emphasize: true),
              FuriText(text: 'に'),
              FuriText(text: '行', furigana: 'い'),
              FuriText(text: 'きたい'),
            ],
            answer: 'にほん'),
        PhraseAnswer(
            // 今日は日が強い
            translation: NA.t('kyouhahigatsuyoi'),
            phraseParts: [
              FuriText(text: '今日', furigana: 'きょう'),
              FuriText(text: 'は'),
              FuriText(text: '日', furigana: '？', emphasize: true),
              FuriText(text: 'が'),
              FuriText(text: '強', furigana: 'つよ'),
              FuriText(text: 'い'),
            ],
            answer: 'ひ'),
        PhraseAnswer(
            // 次の休日はいつですか？
            translation: NA.t('tsuginokyuujitsuhaitsudesuka'),
            phraseParts: [
              FuriText(text: '次', furigana: 'つぎ'),
              FuriText(text: 'の'),
              FuriText(text: '休', furigana: 'きゅう', emphasize: true),
              FuriText(text: '日', furigana: '？', emphasize: true),
              FuriText(text: 'はいつですか？'),
            ],
            answer: 'きゅうじつ'),
      ]),
  Kanji(
      translation: NA.t('月'),
      kanji: '月',
      onYomi: 'ゲツ, ガツ',
      kunYomi: 'つき',
      phraseAnswers: [
        PhraseAnswer(
            // 昨日の月曜日だった
            translation: NA.t('kinouhagetsuyoubidatta'),
            phraseParts: [
              FuriText(text: '昨日', furigana: 'きのう'),
              FuriText(text: 'は'),
              FuriText(text: '月', furigana: '？', emphasize: true),
              FuriText(text: '曜日', furigana: 'ようび', emphasize: true),
            ],
            answer: 'げつようび'),
        PhraseAnswer(
            // 一月は寒いです
            translation: NA.t('ichigatsuhasumuidesu'),
            phraseParts: [
              FuriText(text: '一', furigana: 'いち', emphasize: true),
              FuriText(text: '月', furigana: '？', emphasize: true),
              FuriText(text: 'は'),
              FuriText(text: '寒', furigana: 'さむ'),
              FuriText(text: 'いです'),
            ],
            answer: 'いちがつ'),
        PhraseAnswer(
            // 二ヶ月の休み
            translation: NA.t('nikagetsunoyasumi'),
            phraseParts: [
              FuriText(text: '二', furigana: 'に', emphasize: true),
              FuriText(text: 'ヶ月', furigana: '？', emphasize: true),
              FuriText(text: 'の'),
              FuriText(text: '休', furigana: 'やす'),
              FuriText(text: 'み'),
            ],
            answer: 'にかげつ'),
      ]),
  Kanji(
      translation: NA.t('火'),
      kanji: '火',
      onYomi: 'カ',
      kunYomi: 'ひ, ほのお',
      phraseAnswers: [
        PhraseAnswer(
            // 明日は火曜日ですね？
            translation: NA.t('ashitaehakayoubidesune'),
            phraseParts: [
              FuriText(text: '明日'),
              FuriText(text: 'は'),
              FuriText(text: '火', furigana: '？', emphasize: true),
              FuriText(text: '曜日', furigana: 'ようび', emphasize: true),
              FuriText(text: 'ですね？'),
            ],
            answer: 'かようび'),
        PhraseAnswer(
            // ハワイに火山がある
            translation: NA.t('hawainikazangaaru'),
            phraseParts: [
              FuriText(text: 'ハワイ', furigana: 'hawaii'),
              FuriText(text: 'に'),
              FuriText(text: '火', furigana: '？', emphasize: true),
              FuriText(text: '山', furigana: 'ざん', emphasize: true),
              FuriText(text: 'がある'),
            ],
            answer: 'かざん'),
        PhraseAnswer(
            // 火を付けてください
            translation: NA.t('hiwotsuketekudasai'),
            phraseParts: [
              FuriText(text: '火', furigana: '？', emphasize: true),
              FuriText(text: 'を'),
              FuriText(text: '付', furigana: 'つ'),
              FuriText(text: 'けてください'),
            ],
            answer: 'ひ'),
      ]),
  Kanji(
      translation: NA.t('水'),
      kanji: '水',
      onYomi: 'スイ',
      kunYomi: 'みず, みずうみ',
      phraseAnswers: [
        PhraseAnswer(
            // 水曜日に遊ぼう
            translation: NA.t('suioyoubiniasobou'),
            phraseParts: [
              FuriText(text: '水', furigana: '？', emphasize: true),
              FuriText(text: '曜日', furigana: 'ようび', emphasize: true),
              FuriText(text: 'に'),
              FuriText(text: '遊', furigana: 'あそ'),
              FuriText(text: 'ぼう'),
            ],
            answer: 'すいようび'),
        PhraseAnswer(
            // お水しか飲みたくない
            translation: NA.t('omizushikanomitakunai'),
            phraseParts: [
              FuriText(text: 'お', emphasize: true),
              FuriText(text: '水', furigana: '？', emphasize: true),
              FuriText(text: 'しか'),
              FuriText(text: '飲', furigana: 'の'),
              FuriText(text: 'みたくない'),
            ],
            answer: 'おみず'),
        PhraseAnswer(
            // 水道の匂いがする
            translation: NA.t('suinonioigasuru'),
            phraseParts: [
              FuriText(text: '水', furigana: '？', emphasize: true),
              FuriText(text: '道', furigana: 'どう', emphasize: true),
              FuriText(text: 'の'),
              FuriText(text: '匂', furigana: 'にお'),
              FuriText(text: 'いがする'),
            ],
            answer: 'すいどう'),
      ]),

  Kanji(
      translation: NA.t('木'),
      kanji: '木',
      onYomi: 'ボク, モク',
      kunYomi: 'き, こ',
      phraseAnswers: [
        PhraseAnswer(
            // この辺は、木が多いです
            translation: NA.t('konohenhakigaooiidesu'),
            phraseParts: [
              FuriText(text: 'この辺', furigana: 'このへん'),
              FuriText(text: 'は、'),
              FuriText(text: '木', furigana: '？', emphasize: true),
              FuriText(text: 'が'),
              FuriText(text: '多', furigana: 'おおい'),
              FuriText(text: 'いです'),
            ],
            answer: 'き'),
        PhraseAnswer(
            // 木曜日に帰る
            translation: NA.t('mokuyoubinikaeru'),
            phraseParts: [
              FuriText(text: '木', furigana: '？', emphasize: true),
              FuriText(text: '曜日', furigana: 'ようび', emphasize: true),
              FuriText(text: 'に'),
              FuriText(text: '帰', furigana: 'かえ'),
              FuriText(text: 'る'),
            ],
            answer: 'もくようび'),
      ]),
  Kanji(
      translation: NA.t('金'),
      kanji: '金',
      onYomi: 'キン, コン, ゴン',
      kunYomi: 'かね, かな, がね',
      phraseAnswers: [
        PhraseAnswer(
            // お金がない
            translation: NA.t('okaneganai'),
            phraseParts: [
              FuriText(text: 'お', emphasize: true),
              FuriText(text: '金', furigana: '？', emphasize: true),
              FuriText(text: 'がない'),
            ],
            answer: 'おかね'),
        PhraseAnswer(
            // 金魚が病気になった
            translation: NA.t('kingyogabyoukiniatta'),
            phraseParts: [
              FuriText(text: '金', furigana: '？', emphasize: true),
              FuriText(text: '魚', furigana: 'ぎょ', emphasize: true),
              FuriText(text: 'が'),
              FuriText(text: '病気', furigana: 'びょうき'),
              FuriText(text: 'になった'),
            ],
            answer: 'きんぎょ'),
        PhraseAnswer(
            // 金曜日にまで仕事します
            translation: NA.t('kingyoubinimadeshigotoshimasu'),
            phraseParts: [
              FuriText(text: '金', furigana: '？', emphasize: true),
              FuriText(text: '曜日', furigana: 'ようび', emphasize: true),
              FuriText(text: 'にまで'),
              FuriText(text: '仕事', furigana: 'しごと'),
              FuriText(text: 'します'),
            ],
            answer: 'きん'),
      ]),
  Kanji(
      translation: NA.t('土'),
      kanji: '土',
      onYomi: 'ド, ト',
      kunYomi: 'つち',
      phraseAnswers: [
        PhraseAnswer(
            // 土で汚れている
            translation: NA.t('tsuchideyogoreteiru'),
            phraseParts: [
              FuriText(text: '土', furigana: '？', emphasize: true),
              FuriText(text: 'で'),
              FuriText(text: '汚', furigana: 'よご'),
              FuriText(text: 'れている'),
            ],
            answer: 'つち'),
        PhraseAnswer(
            // 土曜日にあいましょう
            translation: NA.t('dooyoubiniaimashou'),
            phraseParts: [
              FuriText(text: '土', furigana: '？', emphasize: true),
              FuriText(text: '曜日', furigana: 'ようび', emphasize: true),
              FuriText(text: 'にあいましょう'),
            ],
            answer: 'どようび'),
      ]),

  Kanji(
      translation: NA.t('年'),
      kanji: '年',
      onYomi: 'ネン',
      kunYomi: 'とし',
      phraseAnswers: [
        PhraseAnswer(
            // 今年は何年ですか？
            translation: NA.t('kotoshihanannendesuka'),
            phraseParts: [
              FuriText(text: '今年', furigana: 'ことし'),
              FuriText(text: 'は'),
              FuriText(text: '何', furigana: 'なん', emphasize: true),
              FuriText(text: '年', furigana: '？', emphasize: true),
              FuriText(text: 'ですか？'),
            ],
            answer: 'なんねん'),
        PhraseAnswer(
            // 去年アメリカに行った
            translation: NA.t('kyonenamerikaniittta'),
            phraseParts: [
              FuriText(text: '去', furigana: 'きょ', emphasize: true),
              FuriText(text: '年', furigana: '？', emphasize: true),
              FuriText(text: 'アメリカ', furigana: 'america'),
              FuriText(text: 'に'),
              FuriText(text: '行', furigana: 'い'),
              FuriText(text: 'った'),
            ],
            answer: 'きょねん'),
        PhraseAnswer(
            // 来年から日本に住む
            translation: NA.t('rainenkaranihonnisumu'),
            phraseParts: [
              FuriText(text: '来', furigana: 'らい', emphasize: true),
              FuriText(text: '年', furigana: '？', emphasize: true),
              FuriText(text: 'から'),
              FuriText(text: '日本', furigana: 'にほん'),
              FuriText(text: 'に'),
              FuriText(text: '住', furigana: 'す'),
              FuriText(text: 'む'),
            ],
            answer: 'らいねん'),
      ]),
  Kanji(
      translation: NA.t('上'),
      kanji: '上',
      onYomi: 'ジョウ, ショウ',
      kunYomi: 'うえ, あがる, あげる, のぼる, のぼせる, のぼす',
      phraseAnswers: [
        PhraseAnswer(
            // 2階にあがって
            translation: NA.t('nikainiagatte'),
            phraseParts: [
              FuriText(text: '二階', furigana: 'にかい'),
              FuriText(text: 'に'),
              FuriText(text: '上', furigana: '？', emphasize: true),
              FuriText(text: 'がって', emphasize: true),
            ],
            answer: 'あがって'),
        PhraseAnswer(
            // 日本語上手ですね
            translation: NA.t('nihongojouzudesune'),
            phraseParts: [
              FuriText(text: '日本語', furigana: 'にほんご'),
              FuriText(text: '上', furigana: '？', emphasize: true),
              FuriText(text: '手', furigana: 'ず', emphasize: true),
              FuriText(text: 'ですね'),
            ],
            answer: 'じょうず'),
      ]),
  Kanji(
      translation: NA.t('下'),
      kanji: '下',
      onYomi: 'カ, ゲ, ヘ',
      kunYomi: 'した, しも, もと, さがる, さげる, くだる, くだす, くださる',
      phraseAnswers: [
        PhraseAnswer(
            // 下を向いて歩いてる
            translation: NA.t('shitawomuitearuiteteru'),
            phraseParts: [
              FuriText(text: '下', furigana: '？', emphasize: true),
              FuriText(text: 'を'),
              FuriText(text: '向', furigana: 'む'),
              FuriText(text: 'いて'),
              FuriText(text: '歩', furigana: 'ある'),
              FuriText(text: 'いてる'),
            ],
            answer: 'した'),
        PhraseAnswer(
            // スピードを下げて
            translation: NA.t('supiidoosagete'),
            phraseParts: [
              FuriText(text: 'スピード', furigana: 'speed'),
              FuriText(text: 'を'),
              FuriText(text: '下', furigana: '？', emphasize: true),
              FuriText(text: 'げて', emphasize: true),
            ],
            answer: 'さげて'),
        PhraseAnswer(
            // スポーツの下手な人
            translation: NA.t('supootsunohetanahito'),
            phraseParts: [
              FuriText(text: 'スポーツ', furigana: 'sports'),
              FuriText(text: 'の'),
              FuriText(text: '下', furigana: '？', emphasize: true),
              FuriText(text: '手', furigana: 'た', emphasize: true),
              FuriText(text: 'な'),
              FuriText(text: '人', furigana: 'ひと'),
            ],
            answer: 'へた'),
      ]),
  Kanji(
      translation: NA.t('中'),
      kanji: '中',
      onYomi: 'チュウ',
      kunYomi: 'なか',
      phraseAnswers: [
        PhraseAnswer(
            // 中に何がありますか？
            translation: NA.t('nakanihanigaimasuka'),
            phraseParts: [
              FuriText(text: '中', furigana: '？', emphasize: true),
              FuriText(text: 'に'),
              FuriText(text: '何', furigana: 'なに'),
              FuriText(text: 'がありますか？'),
            ],
            answer: 'なか'),
        PhraseAnswer(
            // 一日中雨が降った
            translation: NA.t('ichinichichuuumegafutta'),
            phraseParts: [
              FuriText(text: '一日', furigana: 'いちにち', emphasize: true),
              FuriText(text: '中', furigana: '？', emphasize: true),
              FuriText(text: '雨', furigana: 'あめ'),
              FuriText(text: 'が'),
              FuriText(text: '降', furigana: 'ふ'),
              FuriText(text: 'った'),
            ],
            answer: 'いちにちちゅう'),
      ]),
  Kanji(
      translation: NA.t('外'),
      kanji: '外',
      onYomi: 'ガイ',
      kunYomi: 'そと, ほか, はずす, はずれる',
      phraseAnswers: [
        PhraseAnswer(
            //
            translation: NA.t('sotoasobimashou'),
            phraseParts: [
              FuriText(text: '外', furigana: '？', emphasize: true),
              FuriText(text: 'で'),
              FuriText(text: '遊', furigana: 'あそ'),
              FuriText(text: 'びましょう'),
            ],
            answer: 'そと'),
        PhraseAnswer(
            // 外国人も日本語を話せます
            translation: NA.t('gaikokujinnmonihonngowohanasemasu'),
            phraseParts: [
              FuriText(text: '外', furigana: '？', emphasize: true),
              FuriText(text: '国人', furigana: 'こくじん', emphasize: true),
              FuriText(text: 'も'),
              FuriText(text: '日本語', furigana: 'にほんご'),
              FuriText(text: 'を'),
              FuriText(text: '話', furigana: 'はな'),
              FuriText(text: 'せます'),
            ],
            answer: 'がいこくじん'),
        PhraseAnswer(
            // 外側がきたない
            translation: NA.t('sotogawagakitanai'),
            phraseParts: [
              FuriText(text: '外', furigana: '？', emphasize: true),
              FuriText(text: '側', furigana: 'がわ', emphasize: true),
              FuriText(text: 'が'),
              FuriText(text: 'きたない'),
            ],
            answer: 'そとがわ'),
      ]),
  Kanji(
      translation: NA.t('前'),
      kanji: '前',
      onYomi: 'ゼン',
      kunYomi: 'まえ',
      phraseAnswers: [
        PhraseAnswer(
            // 午前だけ仕事した
            translation: NA.t('gozendakeshigotoshita'),
            phraseParts: [
              FuriText(text: '午', furigana: 'ご', emphasize: true),
              FuriText(text: '前', furigana: '？', emphasize: true),
              FuriText(text: 'だけ'),
              FuriText(text: '仕事', furigana: 'しごと'),
              FuriText(text: 'した'),
            ],
            answer: 'ごぜん'),
        PhraseAnswer(
            // ３年前に日本に行った
            translation: NA.t('sannenmaenihonnniittta'),
            phraseParts: [
              FuriText(text: '３年', furigana: 'さんねん'),
              FuriText(text: '前', furigana: '？', emphasize: true),
              FuriText(text: 'に'),
              FuriText(text: '日本', furigana: 'にほん'),
              FuriText(text: 'に'),
              FuriText(text: '行', furigana: 'い'),
              FuriText(text: 'った'),
            ],
            answer: 'まえ'),
      ]),
  Kanji(
      translation: NA.t('後'),
      kanji: '後',
      onYomi: 'ゴ, コウ',
      kunYomi: 'うしろ, あと, のち',
      phraseAnswers: [
        PhraseAnswer(
            // あとで電話する
            translation: NA.t('atosudendenwasuru'),
            phraseParts: [
              FuriText(text: '後', furigana: '？', emphasize: true),
              FuriText(text: 'で'),
              FuriText(text: '電話', furigana: 'でんわ'),
              FuriText(text: 'する'),
            ],
            answer: 'あと'),
        PhraseAnswer(
            // 午後に予約がある
            translation: NA.t('gogoyniyoyakugaaru'),
            phraseParts: [
              FuriText(text: '午', furigana: 'ご', emphasize: true),
              FuriText(text: '後', furigana: '？', emphasize: true),
              FuriText(text: 'に'),
              FuriText(text: '予約', furigana: 'よやく'),
              FuriText(text: 'がある'),
            ],
            answer: 'ごご'),
        PhraseAnswer(
            // 後ろに座ってください
            translation: NA.t('ushironisuwattekudasai'),
            phraseParts: [
              FuriText(text: '後', furigana: '？', emphasize: true),
              FuriText(text: 'ろ', emphasize: true),
              FuriText(text: 'に'),
              FuriText(text: '座', furigana: 'すわ'),
              FuriText(text: 'ってください'),
            ],
            answer: 'うしろ'),
        PhraseAnswer(
            // 週の後半は天気がよかった
            translation: NA.t('shuunokouhanhatenkigayokatta'),
            phraseParts: [
              FuriText(text: '週', furigana: 'しゅう'),
              FuriText(text: 'の'),
              FuriText(text: '後', furigana: '？', emphasize: true),
              FuriText(text: '半', furigana: 'はん', emphasize: true),
              FuriText(text: 'は'),
              FuriText(text: '天気', furigana: 'てんき'),
              FuriText(text: 'がよかった'),
            ],
            answer: 'こうはん'),
      ]),
  Kanji(
      translation: NA.t('右'),
      kanji: '右',
      onYomi: 'ウ, ユウ',
      kunYomi: 'みぎ',
      phraseAnswers: [
        PhraseAnswer(
            // 右の人は誰？
            translation: NA.t('miginohitohadare'),
            phraseParts: [
              FuriText(text: '右', furigana: '？', emphasize: true),
              FuriText(text: 'の'),
              FuriText(text: '人', furigana: 'ひと'),
              FuriText(text: 'は'),
              FuriText(text: '誰', furigana: 'だれ'),
              FuriText(text: '？'),
            ],
            answer: 'みぎ'),
        PhraseAnswer(
            // 右手で拭ってみて
            translation: NA.t('migitedenuguttemite'),
            phraseParts: [
              FuriText(text: '右', furigana: '？', emphasize: true),
              FuriText(text: '手', furigana: 'て', emphasize: true),
              FuriText(text: 'で'),
              FuriText(text: '拭', furigana: 'ぬぐ'),
              FuriText(text: 'ってみて'),
            ],
            answer: 'みぎて'),
        PhraseAnswer(
          // 右折してください
          translation: NA.t('usetsushitekudasai'),
          phraseParts: [
            FuriText(text: '右', furigana: '？', emphasize: true),
            FuriText(text: '折', furigana: 'せつ', emphasize: true),
            FuriText(text: 'してください'),
          ],
          answer: 'うせつ',
        )
      ]),
  Kanji(
      translation: NA.t('左'),
      kanji: '左',
      onYomi: 'サ, シャ',
      kunYomi: 'ひだり',
      phraseAnswers: [
        PhraseAnswer(
            // もうちょっと左に動いて
            translation: NA.t('mouchottomiginiugoite'),
            phraseParts: [
              FuriText(text: 'もうちょっと'),
              FuriText(text: '左', furigana: '？', emphasize: true),
              FuriText(text: 'に'),
              FuriText(text: '動', furigana: 'うご'),
            ],
            answer: 'ひだり'),
        PhraseAnswer(
            //　次の道で左折してください
            translation: NA.t('tsuginomichidehsasetsushitekudasai'),
            phraseParts: [
              FuriText(text: '次', furigana: 'つぎ'),
              FuriText(text: 'の'),
              FuriText(text: '道', furigana: 'みち'),
              FuriText(text: 'で'),
              FuriText(text: '左', furigana: '？', emphasize: true),
              FuriText(text: '折', furigana: 'せつ', emphasize: true),
              FuriText(text: 'してください'),
            ],
            answer: 'させつ'),
      ]),
  Kanji(
      translation: NA.t('大'),
      kanji: '大',
      onYomi: 'ダイ, タイ',
      kunYomi: 'おお, おお(きい)',
      phraseAnswers: [
        PhraseAnswer(
            // 大きい車は邪魔だ
            translation: NA.t('ookiikurumahajimada'),
            phraseParts: [
              FuriText(text: '大', furigana: '？', emphasize: true),
              FuriText(text: 'きい', emphasize: true),
              FuriText(text: '車', furigana: 'くるま'),
              FuriText(text: 'は'),
              FuriText(text: '邪魔', furigana: 'じゃま'),
              FuriText(text: 'だ'),
            ],
            answer: 'おおきい'),
        PhraseAnswer(
            // 大学に行きたい
            translation: NA.t('daigakunikitai'),
            phraseParts: [
              FuriText(text: '大', furigana: '？', emphasize: true),
              FuriText(text: '学', furigana: 'がく', emphasize: true),
              FuriText(text: 'に'),
              FuriText(text: '行きたい'),
            ],
            answer: 'だいがく'),
        PhraseAnswer(
            // 大型の車
            translation: NA.t('oogatanokuruma'),
            phraseParts: [
              FuriText(text: '大', furigana: '？', emphasize: true),
              FuriText(text: '型', furigana: 'がた', emphasize: true),
              FuriText(text: 'の'),
              FuriText(text: '車', furigana: 'くるま'),
            ],
            answer: 'おおがた'),
      ]),
  Kanji(
      translation: NA.t('小'),
      kanji: '小',
      onYomi: 'ショウ',
      kunYomi: 'ちい(さい), こ, こ, お, さ',
      phraseAnswers: [
        PhraseAnswer(
            // あの小さい犬は誰のですか？
            translation: NA.t('anosukunainuhadaredesuka'),
            phraseParts: [
              FuriText(text: 'あの'),
              FuriText(text: '小', furigana: '？', emphasize: true),
              FuriText(text: 'さい', emphasize: true),
              FuriText(text: '犬', furigana: 'いぬ'),
              FuriText(text: 'は'),
              FuriText(text: '誰', furigana: 'だれ'),
              FuriText(text: 'の'),
              FuriText(text: 'ですか？'),
            ],
            answer: 'ちいさい'),
        PhraseAnswer(
            // 画像を縮小して
            translation: NA.t('gazouwoshukushoushite'),
            phraseParts: [
              FuriText(text: '画像', furigana: 'がぞう'),
              FuriText(text: 'を'),
              FuriText(text: '縮', furigana: 'しゅく', emphasize: true),
              FuriText(text: '小', furigana: '？', emphasize: true),
              FuriText(text: 'して'),
            ],
            answer: 'しゅくしょう'),
      ]),
  Kanji(
      translation: NA.t('長'),
      kanji: '長',
      onYomi: 'チョウ',
      kunYomi: 'なが, なが(い)',
      phraseAnswers: [
        PhraseAnswer(
            translation: NA.t('nagaikaminokegasuki'),
            phraseParts: [
              // 長い髪の毛が好き？
              FuriText(text: '長', furigana: '？', emphasize: true),
              FuriText(text: 'い', emphasize: true),
              FuriText(text: '髪', furigana: 'かみ'),
              FuriText(text: 'の'),
              FuriText(text: '毛', furigana: 'け'),
              FuriText(text: 'が'),
              FuriText(text: '好', furigana: 'す'),
              FuriText(text: 'き？'),
            ],
            answer: 'ながい'),
        PhraseAnswer(
            // 学長は誰ですか？
            translation: NA.t('kouchouhadaredesuka'),
            phraseParts: [
              FuriText(text: '学', furigana: 'こう', emphasize: true),
              FuriText(text: '長', furigana: '？', emphasize: true),
              FuriText(text: 'は'),
              FuriText(text: '誰', furigana: 'だれ'),
              FuriText(text: 'ですか？'),
            ],
            answer: 'こうちょう'),
      ]),

  Kanji(
      translation: NA.t('高'),
      kanji: '高',
      onYomi: 'コウ',
      kunYomi: 'たかい, たか, だか, たか.まる, たか.める',
      phraseAnswers: [
        PhraseAnswer(
            // 一番背の高い人は誰ですか？
            translation: NA.t('ichibansenotakaihitohadaresesuka'),
            phraseParts: [
              FuriText(text: '一番', furigana: 'いちばん'),
              FuriText(text: '背', furigana: 'せ'),
              FuriText(text: 'の'),
              FuriText(text: '高', furigana: '？', emphasize: true),
              FuriText(text: 'い', emphasize: true),
              FuriText(text: '人', furigana: 'ひと'),
              FuriText(text: 'は'),
              FuriText(text: '誰', furigana: 'だれ'),
              FuriText(text: 'ですか？'),
            ],
            answer: 'たかい'),
        PhraseAnswer(
            // 高級なレストランに行った
            translation: NA.t('koukyuunaresutoranniitta'),
            phraseParts: [
              FuriText(text: '高', furigana: '？', emphasize: true),
              FuriText(text: '級', furigana: 'きゅう', emphasize: true),
              FuriText(text: 'な'),
              FuriText(text: 'レストラン', furigana: 'restaurant'),
              FuriText(text: 'に'),
              FuriText(text: '行', furigana: 'い'),
              FuriText(text: 'った'),
            ],
            answer: 'こうきゅう'),
      ]),

  Kanji(
      translation: NA.t('白'),
      kanji: '白',
      onYomi: 'ハク, ビャク',
      kunYomi: 'しろ',
      phraseAnswers: [
        PhraseAnswer(
            // 白い車はどう？
            translation: NA.t('shiroikurumahadou'),
            phraseParts: [
              FuriText(text: '白', furigana: '？', emphasize: true),
              FuriText(text: 'い', emphasize: true),
              FuriText(text: '車', furigana: 'くるま'),
              FuriText(text: 'はどう？')
            ],
            answer: 'しろい'),
        PhraseAnswer(
            // ノルウェーは白人が多いい
            translation: NA.t('noruweihahakujinngaooii'),
            phraseParts: [
              FuriText(text: 'ノルウェー', furigana: 'Norway'),
              FuriText(text: 'は'),
              FuriText(text: '白', furigana: '？', emphasize: true),
              FuriText(text: '人', furigana: 'じん', emphasize: true),
              FuriText(text: 'が'),
              FuriText(text: '多', furigana: 'おお'),
              FuriText(text: 'いい'),
            ],
            answer: 'はくじん'),
      ]),

  Kanji(
      translation: NA.t('食'),
      kanji: '食',
      onYomi: 'ショク, ジキ',
      kunYomi: 'く(う), く(らう), た(べる)',
      phraseAnswers: [
        PhraseAnswer(
            // よく食べるね
            translation: NA.t('yokutaberune'),
            phraseParts: [
              FuriText(text: 'よく'),
              FuriText(text: '食', furigana: '？', emphasize: true),
              FuriText(text: 'べる', emphasize: true),
              FuriText(text: 'ね'),
            ],
            answer: 'たべる'),
        PhraseAnswer(
            // 食べ物ぜんぜんない
            translation: NA.t('tabemonozenzennai'),
            phraseParts: [
              FuriText(text: '食', furigana: '？', emphasize: true),
              FuriText(text: 'べ', emphasize: true),
              FuriText(text: '物', furigana: 'もの', emphasize: true),
              FuriText(text: 'ぜんぜんない')
            ],
            answer: 'たべもの'),
        PhraseAnswer(
            // 和食が好き？
            translation: NA.t('washokugasuki'),
            phraseParts: [
              FuriText(text: '和', furigana: 'わ', emphasize: true),
              FuriText(text: '食', furigana: '？', emphasize: true),
              FuriText(text: 'がすき？')
            ],
            answer: 'わしょく'),
      ]),

  Kanji(
      translation: NA.t('見'),
      kanji: '見',
      onYomi: 'ケン',
      kunYomi: 'み',
      phraseAnswers: [
        PhraseAnswer(
            // 何を見てるの？
            translation: NA.t('sorewomieru'),
            phraseParts: [
              FuriText(text: 'それを'),
              FuriText(text: '見', furigana: '？', emphasize: true),
              FuriText(text: 'える', emphasize: true),
              FuriText(text: '？'),
            ],
            answer: 'みえる'),
        PhraseAnswer(
            // 花見しよう
            translation: NA.t('hanamishiyou'),
            phraseParts: [
              FuriText(text: '花', furigana: 'はな', emphasize: true),
              FuriText(text: '見', furigana: '？', emphasize: true),
              FuriText(text: 'しよう')
            ],
            answer: 'はなみ'),
        PhraseAnswer(
            // わたしの意見
            translation: NA.t('watashinoiken'),
            phraseParts: [
              FuriText(text: 'わたしの'),
              FuriText(text: '意', furigana: 'い', emphasize: true),
              FuriText(text: '見', furigana: '？', emphasize: true),
            ],
            answer: 'いけん'),
      ]),
  Kanji(
      translation: NA.t('聞'),
      kanji: '聞',
      onYomi: 'ブン, モン',
      kunYomi: 'きく, きこえる',
      phraseAnswers: [
        PhraseAnswer(
            // ちゃんと聞いて
            translation: NA.t('chantokiite'),
            phraseParts: [
              FuriText(text: 'ちゃんと'),
              FuriText(text: '聞', furigana: '？', emphasize: true),
              FuriText(text: 'いて', emphasize: true),
            ],
            answer: 'きいて'),
        PhraseAnswer(
            // 何かを聞こえた
            translation: NA.t('nanikawokikoeta'),
            phraseParts: [
              FuriText(text: '何', furigana: 'なに'),
              FuriText(text: 'かを'),
              FuriText(text: '聞', furigana: '？', emphasize: true),
              FuriText(text: 'こえた', emphasize: true),
            ],
            answer: 'きこえた'),
      ]),
  Kanji(
      translation: NA.t('話'),
      kanji: '話',
      onYomi: 'ワ',
      kunYomi: 'はなす, はなし',
      phraseAnswers: [
        PhraseAnswer(
            // どういう話ですか？
            translation: NA.t('douiuhanashidesuka'),
            phraseParts: [
              FuriText(text: 'どういう'),
              FuriText(text: '話', furigana: '？', emphasize: true),
              FuriText(text: 'ですか？')
            ],
            answer: 'はなし'),
        PhraseAnswer(
            // 母に電話した
            translation: NA.t('hahanidenwashita'),
            phraseParts: [
              FuriText(text: '母', furigana: 'はは'),
              FuriText(text: 'に'),
              FuriText(text: '電', furigana: 'でん', emphasize: true),
              FuriText(text: '話', furigana: '？', emphasize: true),
              FuriText(text: 'した')
            ],
            answer: 'でんわ'),
        PhraseAnswer(
            // 友達と会話したい
            translation: NA.t('tomodathitokaiwashitai'),
            phraseParts: [
              FuriText(text: '友達', furigana: 'ともだち'),
              FuriText(text: 'と'),
              FuriText(text: '会', furigana: 'かい', emphasize: true),
              FuriText(text: '話', furigana: '？', emphasize: true),
              FuriText(text: 'したい')
            ],
            answer: 'かいわ'),
      ]),
  Kanji(
      translation: NA.t('読'),
      kanji: '読',
      onYomi: 'ドク, トク',
      kunYomi: 'よむ',
      phraseAnswers: [
        PhraseAnswer(
            // 毎日新聞を読む
            translation: NA.t('mainichishinbunwoyomu'),
            phraseParts: [
              FuriText(text: '毎日', furigana: 'まいにち'),
              FuriText(text: '新聞', furigana: 'しんぶん'),
              FuriText(text: 'を'),
              FuriText(text: '読', furigana: '？', emphasize: true),
              FuriText(text: 'む', emphasize: true),
            ],
            answer: 'よむ'),
        PhraseAnswer(
            // この漢字の読み方わからない
            translation: NA.t('konokanjinoyomikatawakaranai'),
            phraseParts: [
              FuriText(text: 'この'),
              FuriText(text: '漢字', furigana: 'かんじ'),
              FuriText(text: 'の'),
              FuriText(text: '読', furigana: '？', emphasize: true),
              FuriText(text: 'み', emphasize: true),
              FuriText(text: '方', furigana: 'かた', emphasize: true),
              FuriText(text: 'わからない'),
            ],
            answer: 'よみかた'),
        PhraseAnswer(
            //　本の読者
            translation: NA.t('honnodokusha'),
            phraseParts: [
              FuriText(text: '本', furigana: 'ほん'),
              FuriText(text: 'の'),
              FuriText(text: '読', furigana: '？', emphasize: true),
              FuriText(text: '者', furigana: 'しゃ', emphasize: true),
            ],
            answer: 'どくしゃ'),
        PhraseAnswer(
            // JLPTの読解は難しいです
            translation: NA.t('jlptnodokkaihamuzukasiidesu'),
            phraseParts: [
              FuriText(text: 'JLPT'),
              FuriText(text: 'の'),
              FuriText(text: '読', furigana: '？', emphasize: true),
              FuriText(text: '解', furigana: 'かい', emphasize: true),
              FuriText(text: 'は'),
              FuriText(text: '難', furigana: 'む'),
              FuriText(text: 'しいです'),
            ],
            answer: 'どっかい'),
      ]),

  Kanji(
      translation: NA.t('書'),
      kanji: '書',
      onYomi: 'ショ',
      kunYomi: 'かく',
      phraseAnswers: [
        PhraseAnswer(
            // 辞書を使ったよ
            translation: NA.t('jishowotsukattayo'),
            phraseParts: [
              FuriText(text: '辞', furigana: 'じ', emphasize: true),
              FuriText(text: '書', furigana: '？', emphasize: true),
              FuriText(text: 'を'),
              FuriText(text: '使', furigana: 'つ'),
              FuriText(text: 'ったよ'),
            ],
            answer: 'じしょ'),
        PhraseAnswer(
            // どこに書くの？
            translation: NA.t('dokonikakuno'),
            phraseParts: [
              FuriText(text: 'どこに'),
              FuriText(text: '書', furigana: '？', emphasize: true),
              FuriText(text: 'く', emphasize: true),
              FuriText(text: 'の？'),
            ],
            answer: 'かく'),
      ]),
  Kanji(
      translation: NA.t('入'),
      kanji: '入',
      onYomi: 'ニュウ',
      kunYomi: 'いる, いる, いれる, いれ',
      phraseAnswers: [
        PhraseAnswer(
            // これは入口じゃない
            translation: NA.t('korehairiguchijanai'),
            phraseParts: [
              FuriText(text: 'これは'),
              FuriText(text: '入', furigana: '？', emphasize: true),
              FuriText(text: '口', furigana: 'ぐち', emphasize: true),
              FuriText(text: 'じゃない'),
            ],
            answer: 'いりぐち'),
        PhraseAnswer(
            // 名前を入力してください
            translation: NA.t('namaewonyuuryokushitekudasai'),
            phraseParts: [
              FuriText(text: '名前', furigana: 'なまえ'),
              FuriText(text: 'を'),
              FuriText(text: '入', furigana: '？', emphasize: true),
              FuriText(text: '力', furigana: 'りょく', emphasize: true),
              FuriText(text: 'してください'),
            ],
            answer: 'にゅうりょく'),
        PhraseAnswer(
            //　家の中に入れてくれる？
            translation: NA.t('ienonakaniiretekureru'),
            phraseParts: [
              FuriText(text: '家', furigana: 'いえ'),
              FuriText(text: 'の'),
              FuriText(text: '中', furigana: 'なか'),
              FuriText(text: 'に'),
              FuriText(text: '入', furigana: '？', emphasize: true),
              FuriText(text: 'れて', emphasize: true),
              FuriText(text: 'くれる？'),
            ],
            answer: 'いれて'),
      ]),
  Kanji(
      translation: NA.t('出'),
      kanji: '出',
      onYomi: 'シュツ',
      kunYomi: 'でる, でる, だす, だす, だれる, だれる',
      phraseAnswers: [
        PhraseAnswer(
            // 玄関から出て
            translation: NA.t('genkankaradete'),
            phraseParts: [
              FuriText(text: '玄関', furigana: 'げんかん'),
              FuriText(text: 'から'),
              FuriText(text: '出', furigana: '？', emphasize: true),
              FuriText(text: 'て', emphasize: true),
            ],
            answer: 'でて'),
        PhraseAnswer(
            // 本を出しましょう
            translation: NA.t('honnwodashimashou'),
            phraseParts: [
              FuriText(text: '本', furigana: 'ほん'),
              FuriText(text: 'を'),
              FuriText(text: '出', furigana: '？', emphasize: true),
              FuriText(text: 'しましょう', emphasize: true),
            ],
            answer: 'だしましょう'),
        PhraseAnswer(
            // 今日は出かけるよ!
            translation: NA.t('moudekakeruyo'),
            phraseParts: [
              FuriText(text: 'もう'),
              FuriText(text: '出', furigana: '？', emphasize: true),
              FuriText(text: 'かける', emphasize: true),
              FuriText(text: 'よ!'),
            ],
            answer: 'でかける'),
      ]),

  Kanji(
      translation: NA.t('休'),
      kanji: '休',
      onYomi: 'キュウ',
      kunYomi: 'やす(む), やす.まる, やす(める)',
      phraseAnswers: [
        PhraseAnswer(
            // お休みなさい
            translation: NA.t('oyasuminasai'),
            phraseParts: [
              FuriText(text: 'お', emphasize: true),
              FuriText(text: '休', furigana: '？', emphasize: true),
              FuriText(text: 'み', emphasize: true),
              FuriText(text: 'なさい'),
            ],
            answer: 'おやすみ'),
        PhraseAnswer(
            // ゆっくり休んでね
            translation: NA.t('yukkuriyasunde'),
            phraseParts: [
              FuriText(text: 'ゆっくり'),
              FuriText(text: '休', furigana: '？', emphasize: true),
              FuriText(text: 'んで', emphasize: true),
              FuriText(text: 'ね')
            ],
            answer: 'やすんで'),
        PhraseAnswer(
            // 今日は休日です
            translation: NA.t('kyouhakyuujitsudesu'),
            phraseParts: [
              FuriText(text: '今日', furigana: 'きょう'),
              FuriText(text: 'は'),
              FuriText(text: '休', furigana: '？', emphasize: true),
              FuriText(text: '日', furigana: 'じつ', emphasize: true),
              FuriText(text: 'です'),
            ],
            answer: 'きゅうじつ'),
      ]),
  Kanji(
      translation: NA.t('行'),
      kanji: '行',
      onYomi: 'コウ, ギョウ, アン',
      kunYomi: 'い(く), ゆ(く), おこな(う)',
      phraseAnswers: [
        PhraseAnswer(
            // どこに行くの？
            translation: NA.t('dokoniikuno'),
            phraseParts: [
              FuriText(text: 'どこに'),
              FuriText(text: '行', furigana: '？', emphasize: true),
              FuriText(text: 'く', emphasize: true),
              FuriText(text: 'の？'),
            ],
            answer: 'いく'),
        // PhraseAnswer(
        //     translation: NA.t('okonaukotogadekimasu'),
        //     phraseParts: [
        //       FuriText(text: '行う', furigana: '？', emphasize: true),
        //       FuriText(text: 'ことができます'),
        //     ],
        //     answer: 'おこなう'),
        PhraseAnswer(
            // 通行禁止
            translation: NA.t('tsuukoukinshi'),
            phraseParts: [
              FuriText(text: '通', furigana: 'つう', emphasize: true),
              FuriText(text: '行', furigana: '？', emphasize: true),
              FuriText(text: '禁止', furigana: 'きんし'),
            ],
            answer: 'つうこう'),
      ]),
  Kanji(
      translation: NA.t('来'),
      kanji: '来',
      onYomi: 'ライ, タイ',
      kunYomi: 'く(る), きた(る), きた(す), き(たす), き(たる), き',
      phraseAnswers: [
        PhraseAnswer(
            // 来月は５月です
            translation: NA.t('raigetsuhagogatsudesu'),
            phraseParts: [
              FuriText(text: '来', furigana: '？', emphasize: true),
              FuriText(text: '月', furigana: 'げつ', emphasize: true),
              FuriText(text: 'は'),
              FuriText(text: '５月', furigana: 'ごがつ'),
              FuriText(text: 'です'),
            ],
            answer: 'らいげつ'),
        PhraseAnswer(
            // 明日来日します
            translation: NA.t('ashitarainichishimasu'),
            phraseParts: [
              FuriText(text: '明日', furigana: 'あした'),
              FuriText(text: '来', furigana: '？', emphasize: true),
              FuriText(text: '日', furigana: 'にち', emphasize: true),
              FuriText(text: 'します'),
            ],
            answer: 'らいにち'),
        PhraseAnswer(
            // 早く来てね
            translation: NA.t('hayakukitene'),
            phraseParts: [
              FuriText(text: '早', furigana: 'はや'),
              FuriText(text: 'く'),
              FuriText(text: '来', furigana: '？', emphasize: true),
              FuriText(text: 'て', emphasize: true),
              FuriText(text: 'ね'),
            ],
            answer: 'きて'),
      ]),

  Kanji(
      translation: NA.t('山'),
      kanji: '山',
      onYomi: 'サン',
      kunYomi: 'やま',
      phraseAnswers: [
        PhraseAnswer(
            // その山が大きいです
            translation: NA.t('sonoyamagaookiidesu'),
            phraseParts: [
              FuriText(text: 'その'),
              FuriText(text: '山', furigana: '？', emphasize: true),
              FuriText(text: 'が'),
              FuriText(text: '大', furigana: 'おお'),
              FuriText(text: 'きいです')
            ],
            answer: 'やま'),
        PhraseAnswer(
            // 山田さんは近い？
            translation: NA.t('fujisanhachikai'),
            phraseParts: [
              FuriText(text: '富士', furigana: 'ふじ', emphasize: true),
              FuriText(text: '山', furigana: '？', emphasize: true),
              FuriText(text: 'は'),
              FuriText(text: '近', furigana: 'ち'),
              FuriText(text: 'い？')
            ],
            answer: 'ふじさん'),
      ]),
  Kanji(
      translation: NA.t('今'),
      kanji: '今',
      onYomi: 'コン',
      kunYomi: 'いま, きょう',
      phraseAnswers: [
        PhraseAnswer(
            // 今日はさむいね
            translation: NA.t('kongetsuhasamuine'),
            phraseParts: [
              FuriText(text: '今', furigana: '？', emphasize: true),
              FuriText(text: '月', furigana: 'げつ', emphasize: true),
              FuriText(text: 'は'),
              FuriText(text: 'さむいね')
            ],
            answer: 'こんげつ'),
        PhraseAnswer(
            // 今何時ですか？
            translation: NA.t('imahananjidesuka'),
            phraseParts: [
              FuriText(text: '今', furigana: '？', emphasize: true),
              FuriText(text: '何時', furigana: 'なんじ'),
              FuriText(text: 'ですか？')
            ],
            answer: 'いま'),
        PhraseAnswer(
            // 今日は月曜日だよ
            translation: NA.t('kyouhagetsuyoubidayo'),
            phraseParts: [
              FuriText(text: '今日', furigana: '？', emphasize: true),
              FuriText(text: 'は'),
              FuriText(text: '月曜日', furigana: 'げつようび'),
              FuriText(text: 'だよ'),
            ],
            answer: 'きょう'),
      ]),
  Kanji(
      translation: NA.t('川'),
      kanji: '川',
      onYomi: 'セン',
      kunYomi: 'かわ、がわ',
      phraseAnswers: [
        PhraseAnswer(
            // 川に行きましょう
            translation: NA.t('kawaniikimashou'),
            phraseParts: [
              FuriText(text: '川', furigana: '？', emphasize: true),
              FuriText(text: 'に'),
              FuriText(text: '行', furigana: 'い'),
              FuriText(text: 'きましょう'),
            ],
            answer: 'かわ'),
        PhraseAnswer(
            // 山川さん
            translation: NA.t('yamawakasan'),
            phraseParts: [
              FuriText(text: '山', furigana: 'やま', emphasize: true),
              FuriText(text: '川', furigana: '？', emphasize: true),
              FuriText(text: 'さん'),
            ],
            answer: 'やまかわ'),
        PhraseAnswer(
            // 品川駅にいるよ
            translation: NA.t('shinagawaekiniiruyo'),
            phraseParts: [
              FuriText(text: '品', furigana: 'しな', emphasize: true),
              FuriText(text: '川', furigana: '？', emphasize: true),
              FuriText(text: '駅', furigana: 'えき'),
              FuriText(text: 'にいるよ'),
            ],
            answer: 'しながわ'),
      ]),

  Kanji(
    translation: NA.t('分'),
    kanji: '分',
    onYomi: 'フン, ブン, プン',
    kunYomi: 'わける, わかる',
    phraseAnswers: [
      PhraseAnswer(
          // 真ん中から分ける
          translation: NA.t('mannakakarawakeru'),
          phraseParts: [
            FuriText(text: '真', furigana: 'ま'),
            FuriText(text: 'ん'),
            FuriText(text: '中', furigana: 'なか'),
            FuriText(text: 'から'),
            FuriText(text: '分', furigana: '？', emphasize: true),
            FuriText(text: 'ける', emphasize: true)
          ],
          answer: 'わける'),
      PhraseAnswer(
          // あと十分待ってね
          translation: NA.t('atojuppunmattene'),
          phraseParts: [
            FuriText(text: 'あと'),
            FuriText(text: '十', furigana: 'じゅう', emphasize: true),
            FuriText(text: '分', furigana: '？', emphasize: true),
            FuriText(text: 'まってね'),
          ],
          answer: 'じゅうぷん'),
      PhraseAnswer(
          // 日本語が分かる
          translation: NA.t('nihonngogawakaru'),
          phraseParts: [
            FuriText(text: '日本語', furigana: 'にほんご'),
            FuriText(text: 'が'),
            FuriText(text: '分', furigana: '？', emphasize: true),
            FuriText(text: 'かる', emphasize: true),
          ],
          answer: 'わかる'),
    ],
  ),
];
