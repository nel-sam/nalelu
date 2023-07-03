import 'package:nalelu/furi_text.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/widgets/kanji.dart';

// TODO: Add note somewhere to tell users that examples given here are not
// textbook Japanese, but rather useful everyday Japanese sentences

List<Kanji> kanjiN5Bank = [
  Kanji(
      translation: NA.t('友'),
      kanji: '友',
      onYomi: 'ユウ',
      kunYomi: 'とも',
      phraseAnswers: [
        PhraseAnswer(
          translation: NA.t('tomodachigatakusaninai'),
          phraseParts: [
            FuriText(text: '友', furigana: '？', emphasize: true),
            FuriText(text: '達', furigana: 'だち', emphasize: true),
            FuriText(text: 'は'),
            FuriText(text: '沢', furigana: 'たく'),
            FuriText(text: '山', furigana: 'さん'),
            FuriText(text: 'いない'),
          ],
          answer: 'ともだち',
        ),
        PhraseAnswer(
          translation: NA.t('shinyuutoisshoniryokouniikitai'),
          phraseParts: [
            FuriText(text: '親', furigana: 'しん', emphasize: true),
            FuriText(text: '友', furigana: '？', emphasize: true),
            FuriText(text: 'と'),
            FuriText(text: '一', furigana: 'いっ'),
            FuriText(text: '緒', furigana: 'しょ'),
            FuriText(text: 'に'),
            FuriText(text: '旅', furigana: 'りょ'),
            FuriText(text: '行', furigana: 'こう'),
            FuriText(text: 'に'),
            FuriText(text: '行', furigana: 'い'),
            FuriText(text: 'きたい'),
          ],
          answer: 'しんゆう',
        ),
      ]),
  Kanji(
    translation: NA.t('北'),
    kanji: '北',
    onYomi: 'ホク',
    kunYomi: 'きた',
    phraseAnswers: [
      PhraseAnswer(
        translation: NA.t('kanadahahokubeiniarimasu'),
        phraseParts: [
          FuriText(text: 'カナダ', furigana: 'Canada'),
          FuriText(text: 'は'),
          FuriText(text: '北', furigana: '？', emphasize: true),
          FuriText(text: '米', furigana: 'べい', emphasize: true),
          FuriText(text: 'にあります'),
        ],
        answer: 'ほくべい',
      ),
      PhraseAnswer(
        translation: NA.t('hokkaidouniikitaidesu'),
        phraseParts: [
          FuriText(text: '北', furigana: '？', emphasize: true),
          FuriText(text: '海', furigana: 'かい', emphasize: true),
          FuriText(text: '道', furigana: 'どう', emphasize: true),
          FuriText(text: 'に'),
          FuriText(text: '行', furigana: 'い'),
          FuriText(text: 'きたいです'),
        ],
        answer: 'ほっかいどう',
      ),
      PhraseAnswer(
        translation: NA.t('kitanohougasamuidesu'),
        phraseParts: [
          FuriText(text: '北', furigana: '？', emphasize: true),
          FuriText(text: 'の'),
          FuriText(text: 'ほうが'),
          FuriText(text: '寒', furigana: 'さむ'),
          FuriText(text: 'いです'),
        ],
        answer: 'きた',
      )
    ],
  ),
  Kanji(
    translation: NA.t('午'),
    kanji: '午',
    onYomi: 'ゴ',
    kunYomi: 'うま',
    phraseAnswers: [
      PhraseAnswer(
        translation: NA.t('gogohananiwoshimasuka'),
        phraseParts: [
          FuriText(text: '午', furigana: '？', emphasize: true),
          FuriText(text: '後', furigana: 'ご', emphasize: true),
          FuriText(text: 'は'),
          FuriText(text: '何', furigana: 'なに'),
          FuriText(text: 'を'),
          FuriText(text: 'しますか？'),
        ],
        answer: 'ごご',
      )
    ],
  ),
  Kanji(
    translation: NA.t('半'),
    kanji: '半',
    onYomi: 'ハン',
    kunYomi: 'なか、はん',
    phraseAnswers: [
      PhraseAnswer(
        translation: NA.t('keekinohanbumimotabeta'),
        phraseParts: [
          FuriText(text: 'ケーキー', furigana: 'Cake'),
          FuriText(text: 'を'),
          FuriText(text: '半', furigana: '？', emphasize: true),
          FuriText(text: '分', furigana: 'ぶん', emphasize: true),
          FuriText(text: 'も'),
          FuriText(text: '食', furigana: 'た'),
          FuriText(text: 'べた'),
        ],
        answer: 'はんぶん',
      ),
      PhraseAnswer(
        translation: NA.t('atsuiharahanzubonokiteteiru'),
        phraseParts: [
          FuriText(text: '暑', furigana: 'あつ'),
          FuriText(text: 'いから'),
          FuriText(text: '半', furigana: '？', emphasize: true),
          FuriText(text: '袖', furigana: 'そで', emphasize: true),
          FuriText(text: 'を'),
          FuriText(text: '着', furigana: 'き'),
          FuriText(text: 'ている'),
        ],
        answer: 'はんそで',
      )
    ],
  ),
  Kanji(
    translation: NA.t('南'),
    kanji: '南',
    onYomi: 'ナン',
    kunYomi: 'みなみ',
    phraseAnswers: [
      PhraseAnswer(
        translation: NA.t('nanbeiniamazonngawagaaru'),
        phraseParts: [
          FuriText(text: '南', furigana: '？', emphasize: true),
          FuriText(text: '米', furigana: 'べい', emphasize: true),
          FuriText(text: 'に'),
          FuriText(text: 'アマゾン', furigana: 'Amazon'),
          FuriText(text: '川', furigana: 'がわ'),
          FuriText(text: 'がある'),
        ],
        answer: 'なんべい',
      ),
      PhraseAnswer(
        translation: NA.t('minamitoukyounisundeimasu'),
        phraseParts: [
          FuriText(text: '東京', furigana: 'とうきょう'),
          FuriText(text: 'の'),
          FuriText(text: '南', furigana: '？', emphasize: true),
          FuriText(text: 'のほう'),
          FuriText(text: 'に'),
          FuriText(text: '住', furigana: 'す'),
          FuriText(text: 'んでる'),
        ],
        answer: 'みなみ',
      )
    ],
  ),
  Kanji(
    translation: NA.t('国'),
    kanji: '国',
    onYomi: 'コク',
    kunYomi: 'くに',
    phraseAnswers: [
      PhraseAnswer(
        translation: NA.t('dokonokunikaraimashitaka'),
        phraseParts: [
          FuriText(text: 'どこ'),
          FuriText(text: 'の'),
          FuriText(text: '国', furigana: '？', emphasize: true),
          FuriText(text: 'から'),
          FuriText(text: '来', furigana: 'き'),
          FuriText(text: 'ましたか？'),
        ],
        answer: 'くに',
      ),
      PhraseAnswer(
        translation: NA.t('chuugokugohimuzukashii'),
        phraseParts: [
          FuriText(text: '中', furigana: 'ちゅう', emphasize: true),
          FuriText(text: '国', furigana: '？', emphasize: true),
          FuriText(text: '語', furigana: 'ご', emphasize: true),
          FuriText(text: 'は'),
          FuriText(text: '難', furigana: 'むずか'),
          FuriText(text: 'しいですか？'),
        ],
        answer: 'ちゅうごくご',
      )
    ],
  ),
  Kanji(
    translation: NA.t('女'),
    kanji: '女',
    onYomi: 'ジョ、ニョ、ニョウ',
    kunYomi: 'おんな',
    phraseAnswers: [
      PhraseAnswer(
        translation: NA.t('sonoonnanohitohadaredesuka'),
        phraseParts: [
          FuriText(text: 'その'),
          FuriText(text: '女', furigana: '？', emphasize: true),
          FuriText(text: 'の'),
          FuriText(text: '人', furigana: 'ひと'),
          FuriText(text: 'は'),
          FuriText(text: '誰', furigana: 'だれ'),
          FuriText(text: 'ですか？'),
        ],
        answer: 'おんな',
      ),
      PhraseAnswer(
        translation: NA.t('joseiyounotoirehadokodesuka'),
        phraseParts: [
          FuriText(text: '女', furigana: '？', emphasize: true),
          FuriText(text: '性', furigana: 'せい', emphasize: true),
          FuriText(text: '用', furigana: 'よう', emphasize: true),
          FuriText(text: 'の'),
          FuriText(text: 'トイレ', furigana: 'Toilet'),
          FuriText(text: 'はどこですか？'),
        ],
        answer: 'じょせいよう',
      )
    ],
  ),
  Kanji(
    translation: NA.t('毎'),
    kanji: '毎',
    onYomi: 'マイ',
    kunYomi: 'ごと',
    phraseAnswers: [
      PhraseAnswer(
        translation: NA.t('mainichishigotosuru'),
        phraseParts: [
          FuriText(text: '毎', furigana: '？', emphasize: true),
          FuriText(text: '日', furigana: 'にち', emphasize: true),
          FuriText(text: '仕事', furigana: 'しごと'),
          FuriText(text: 'をする'),
        ],
        answer: 'まいにち',
      ),
      PhraseAnswer(
        translation: NA.t('maiasakouhiowomu'),
        phraseParts: [
          FuriText(text: '毎', furigana: '？', emphasize: true),
          FuriText(text: '朝', furigana: 'あさ', emphasize: true),
          FuriText(text: 'コーヒー', furigana: 'Coffee'),
          FuriText(text: 'を'),
          FuriText(text: '飲', furigana: 'の'),
          FuriText(text: 'む'),
        ],
        answer: 'まいあさ',
      ),
    ],
  ),
  Kanji(
    translation: NA.t('気'),
    kanji: '気',
    onYomi: 'キ, ケ, ギ',
    kunYomi: 'いき',
    phraseAnswers: [
      PhraseAnswer(
        translation: NA.t('kyouhakibungawarui'),
        phraseParts: [
          FuriText(text: '今日', furigana: 'きょう'),
          FuriText(text: 'は'),
          FuriText(text: '気', furigana: '？', emphasize: true),
          FuriText(text: '分', furigana: 'ぶん'),
          FuriText(text: 'が'),
          FuriText(text: '悪', furigana: 'わる'),
          FuriText(text: 'い'),
        ],
        answer: 'き',
      ),
      PhraseAnswer(
        translation: NA.t('yugegadeteiru'),
        phraseParts: [
          FuriText(text: '湯', furigana: 'ゆ', emphasize: true),
          FuriText(text: '気', furigana: '？', emphasize: true),
          FuriText(text: 'が'),
          FuriText(text: '出', furigana: 'で'),
          FuriText(text: 'ている'),
        ],
        answer: 'ゆげ',
      ),
    ],
  ),
  Kanji(
    translation: NA.t('男'),
    kanji: '男',
    onYomi: 'ダン、ナン',
    kunYomi: 'おとこ',
    phraseAnswers: [
      PhraseAnswer(
        translation: NA.t('kokohaotokonohitogainai'),
        phraseParts: [
          FuriText(text: 'ここは'),
          FuriText(text: '男', furigana: '？', emphasize: true),
          FuriText(text: 'の'),
          FuriText(text: '人', furigana: 'ひと'),
          FuriText(text: 'がいない'),
        ],
        answer: 'おとこ',
      ),
      PhraseAnswer(
        translation: NA.t('danseiyounotoire'),
        phraseParts: [
          FuriText(text: '男', furigana: '？', emphasize: true),
          FuriText(text: '性用', furigana: 'せいよう', emphasize: true),
          FuriText(text: 'の'),
          FuriText(text: 'トイレ', furigana: 'toilet'),
        ],
        answer: 'だんせいよう',
      ),
    ],
  ),
  Kanji(
    translation: NA.t('西'),
    kanji: '西',
    onYomi: 'セイ、サイ',
    kunYomi: 'にし',
    phraseAnswers: [
      PhraseAnswer(
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
        translation: NA.t('amerikanoseinanniarizonagaaru'),
        phraseParts: [
          FuriText(text: 'アメリカ'),
          FuriText(text: 'の'),
          FuriText(text: '西', furigana: '？', emphasize: true),
          FuriText(text: '南', furigana: 'なん', emphasize: true),
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
          translation: NA.t('hitogaippai'),
          phraseParts: [
            FuriText(text: '人', furigana: '？', emphasize: true),
            FuriText(text: 'がいっぱい'),
          ],
          answer: 'ひと',
        ),
        PhraseAnswer(
          translation: NA.t('naninikuruno'),
          phraseParts: [
            FuriText(text: '何', furigana: 'なん', emphasize: true),
            FuriText(text: '人', furigana: '？', emphasize: true),
            FuriText(text: 'くるの？'),
          ],
          answer: 'なんにん',
        ),
        PhraseAnswer(
          translation: NA.t('kanadajinwayasashiidesu'),
          phraseParts: [
            FuriText(text: 'カナダ', furigana: 'かなだ', emphasize: true),
            FuriText(text: '人', furigana: '？', emphasize: true),
            FuriText(text: 'は'),
            FuriText(text: '優', furigana: 'やさ'),
            FuriText(text: 'しいです'),
          ],
          answer: 'かなだじん',
        ),
        PhraseAnswer(
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
          translation: NA.t('senshuisogashikatta'),
          phraseParts: [
            FuriText(text: '先', furigana: '？', emphasize: true),
            FuriText(text: '週', furigana: 'しゅう', emphasize: true),
            FuriText(text: 'は'),
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
          translation: NA.t('yuumeinahitowomitakotonai'),
          phraseParts: [
            FuriText(text: '有', furigana: 'ゆう', emphasize: true),
            FuriText(text: '名', furigana: '？', emphasize: true),
            FuriText(text: 'な'),
            FuriText(text: '人', furigana: 'ひと'),
            FuriText(text: 'を'),
            FuriText(text: '見', furigana: 'み'),
            FuriText(text: 'たことがない'),
          ],
          answer: 'ゆうめい',
        )
      ]),
  Kanji(
      translation: NA.t('天'),
      kanji: '天',
      onYomi: 'テン',
      kunYomi: 'あまつ、あめ、あま',
      phraseAnswers: [
        PhraseAnswer(
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
          translation: NA.t('kodomonogaimasuka'),
          phraseParts: [
            FuriText(text: '子', furigana: '？', emphasize: true),
            FuriText(text: '供', furigana: 'ども', emphasize: true),
            FuriText(text: 'がいますか？'),
          ],
          answer: 'こども',
        ),
        PhraseAnswer(
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
          translation: NA.t('jikangaarimasuka'),
          phraseParts: [
            FuriText(text: '時', furigana: '？', emphasize: true),
            FuriText(text: '間', furigana: 'かん', emphasize: true),
            FuriText(text: 'がありますか？'),
          ],
          answer: 'じかん',
        ),
        PhraseAnswer(
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
          translation: NA.t('honyonderu'),
          phraseParts: [
            FuriText(text: '本', furigana: '？', emphasize: true),
            FuriText(text: 'を'),
            FuriText(text: '読', furigana: 'よ'),
            FuriText(text: 'んでる'),
          ],
          answer: 'ほん',
        ),
        PhraseAnswer(
          translation: NA.t('hontoudesuka'),
          phraseParts: [
            FuriText(text: '本', furigana: '？', emphasize: true),
            FuriText(text: '当', furigana: 'とう', emphasize: true),
            FuriText(text: 'ですか？'),
          ],
          answer: 'ほんとう',
        ),
        PhraseAnswer(
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
          translation: NA.t('namatamagotabetai'),
          phraseParts: [
            FuriText(text: '生', furigana: '？', emphasize: true),
            FuriText(text: '卵', furigana: 'たまご'),
            FuriText(text: 'が'),
            FuriText(text: '食', furigana: 'た'),
            FuriText(text: 'べたい'),
          ],
          answer: 'なま',
        ),
        PhraseAnswer(
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
          translation: NA.t('kurumanaitokoroniikitai'),
          phraseParts: [
            FuriText(text: '車', furigana: '？', emphasize: true),
            FuriText(text: 'がないところに'),
            FuriText(text: '行', furigana: 'い'),
            FuriText(text: 'きたい'),
          ],
          answer: 'くるま',
        ),
        PhraseAnswer(
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
          translation: NA.t('nihongoobenkyoushimasu'),
          phraseParts: [
            FuriText(text: '日本', furigana: 'にほん', emphasize: true),
            FuriText(text: '語', furigana: '？', emphasize: true),
            FuriText(text: 'を'),
            FuriText(text: '勉強', furigana: 'べんきょう'),
            FuriText(text: 'しています'),
          ],
          answer: 'にほんご',
        ),
        PhraseAnswer(
          translation: NA.t('monogatariyondekureru'),
          phraseParts: [
            FuriText(text: '物', furigana: 'もの', emphasize: true),
            FuriText(text: '語', furigana: '？', emphasize: true),
            FuriText(text: 'を'),
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
          translation: NA.t('ningenhajiseisuru'),
          phraseParts: [
            FuriText(text: '人', furigana: 'にん', emphasize: true),
            FuriText(text: '間', furigana: '？', emphasize: true),
            FuriText(text: 'は'),
            FuriText(text: '反省', furigana: 'はんせい'),
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
          translation: NA.t('nanjideskuka'),
          phraseParts: [
            FuriText(text: '何', furigana: '？', emphasize: true),
            FuriText(text: '時', furigana: 'じ', emphasize: true),
            FuriText(text: 'ですか？'),
          ],
          answer: 'なんじ',
        ),
        PhraseAnswer(
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
            translation: NA.t('buttongahitotsushikanai'),
            phraseParts: [
              FuriText(text: 'ボタンが', furigana: 'button'),
              FuriText(text: '一', furigana: '？', emphasize: true),
              FuriText(text: 'つ', emphasize: true),
              FuriText(text: 'しかない'),
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
            translation: NA.t('ringofutatsutabeta'),
            phraseParts: [
              FuriText(text: 'リンゴ'),
              FuriText(text: '二', furigana: '？', emphasize: true),
              FuriText(text: 'つ', emphasize: true),
              FuriText(text: '食べた'),
            ],
            answer: 'ふたつ'),
        PhraseAnswer(
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
            translation: NA.t('sangatsunikonaihougaīyo'),
            phraseParts: [
              FuriText(text: '三', furigana: '？', emphasize: true),
              FuriText(text: '月', furigana: 'がつ', emphasize: true),
              FuriText(text: 'には'),
              FuriText(text: '来', furigana: 'こ'),
              FuriText(text: 'ないほうがいいよ'),
            ],
            answer: 'さんがつ'),
        PhraseAnswer(
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
            translation: NA.t('mousugurokugatsudesu'),
            phraseParts: [
              FuriText(text: 'もうすぐ'),
              FuriText(text: '六', furigana: '？', emphasize: true),
              FuriText(text: '月', furigana: 'がつ', emphasize: true),
              FuriText(text: 'です'),
            ],
            answer: 'ろくがつ'),
        PhraseAnswer(
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
            translation: NA.t('ringonanatsukudasai'),
            phraseParts: [
              FuriText(text: 'りんご'),
              FuriText(text: '七', furigana: '？', emphasize: true),
              FuriText(text: 'つ', emphasize: true),
              FuriText(text: 'ください'),
            ],
            answer: 'ななつ'),
        PhraseAnswer(
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
        PhraseAnswer(
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
              FuriText(text: '円', furigana: '？', emphasize: true),
              FuriText(text: 'が'),
              FuriText(text: '高', furigana: 'たか'),
              FuriText(text: 'くなった'),
            ],
            answer: 'えん'),
        PhraseAnswer(
            translation: NA.t('yonsenensuruyo'),
            phraseParts: [
              FuriText(text: '四千', furigana: 'よんせん', emphasize: true),
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
            translation: NA.t('kinouhagetsuyoubidatta'),
            phraseParts: [
              FuriText(text: '昨日', furigana: 'きのう'),
              FuriText(text: 'は'),
              FuriText(text: '月', furigana: '？', emphasize: true),
              FuriText(text: '曜日', furigana: 'ようび', emphasize: true),
            ],
            answer: 'げつようび'),
        PhraseAnswer(
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
            translation: NA.t('suinonioigasuru'),
            phraseParts: [
              FuriText(text: '下', furigana: 'げ', emphasize: true),
              FuriText(text: '水', furigana: '？', emphasize: true),
              FuriText(text: 'の'),
              FuriText(text: '匂', furigana: 'にお'),
              FuriText(text: 'いがする'),
            ],
            answer: 'げすい'),
      ]),
  Kanji(
      translation: NA.t('木'),
      kanji: '木',
      onYomi: 'ボク, モク',
      kunYomi: 'き, こ',
      phraseAnswers: [
        PhraseAnswer(
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
            translation: NA.t('okaneganai'),
            phraseParts: [
              FuriText(text: 'お', emphasize: true),
              FuriText(text: '金', furigana: '？', emphasize: true),
              FuriText(text: 'がない'),
            ],
            answer: 'おかね'),
        PhraseAnswer(
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
            translation: NA.t('tsuchideyogoreteiru'),
            phraseParts: [
              FuriText(text: '土', furigana: '？', emphasize: true),
              FuriText(text: 'で'),
              FuriText(text: '汚', furigana: 'よご'),
              FuriText(text: 'れている'),
            ],
            answer: 'つち'),
        PhraseAnswer(
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
            translation: NA.t('nikainiagatte'),
            phraseParts: [
              FuriText(text: '二階', furigana: 'にかい'),
              FuriText(text: 'に'),
              FuriText(text: '上', furigana: '？', emphasize: true),
              FuriText(text: 'がって', emphasize: true),
            ],
            answer: 'あがって'),
        PhraseAnswer(
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
            translation: NA.t('shitawomuitearuiteteru'),
            phraseParts: [
              FuriText(text: '下', furigana: '？', emphasize: true),
              FuriText(text: 'を'),
              FuriText(text: '向', furigana: 'む'),
              FuriText(text: 'いて'),
              FuriText(text: '歩', furigana: 'ある'),
              FuriText(text: 'いている'),
            ],
            answer: 'した'),
        PhraseAnswer(
            translation: NA.t('supiidoosagete'),
            phraseParts: [
              FuriText(text: 'スピード', furigana: 'speed'),
              FuriText(text: 'を'),
              FuriText(text: '下', furigana: '？', emphasize: true),
              FuriText(text: 'げて', emphasize: true),
            ],
            answer: 'さげて'),
        PhraseAnswer(
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
            translation: NA.t('nakanihanigaimasuka'),
            phraseParts: [
              FuriText(text: '中', furigana: '？', emphasize: true),
              FuriText(text: 'に'),
              FuriText(text: '何', furigana: 'なに'),
              FuriText(text: 'がありますか？'),
            ],
            answer: 'なか'),
        PhraseAnswer(
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
            translation: NA.t('sotoasobimashou'),
            phraseParts: [
              FuriText(text: '外', furigana: '？', emphasize: true),
              FuriText(text: 'で'),
              FuriText(text: '遊', furigana: 'あそ'),
              FuriText(text: 'びましょう'),
            ],
            answer: 'そと'),
        PhraseAnswer(
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
            translation: NA.t('atosudendenwasuru'),
            phraseParts: [
              FuriText(text: '後', furigana: '？', emphasize: true),
              FuriText(text: 'で'),
              FuriText(text: '電話', furigana: 'でんわ'),
              FuriText(text: 'する'),
            ],
            answer: 'あと'),
        PhraseAnswer(
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
            translation: NA.t('mouchottomiginiugoite'),
            phraseParts: [
              FuriText(text: 'もうちょっと'),
              FuriText(text: '左', furigana: '？', emphasize: true),
              FuriText(text: 'に'),
              FuriText(text: '動', furigana: 'うご'),
              FuriText(text: 'いて'),
            ],
            answer: 'ひだり'),
        PhraseAnswer(
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
            translation: NA.t('daigakunikitai'),
            phraseParts: [
              FuriText(text: '大', furigana: '？', emphasize: true),
              FuriText(text: '学', furigana: 'がく', emphasize: true),
              FuriText(text: 'に'),
              FuriText(text: '行きたい'),
            ],
            answer: 'だいがく'),
        PhraseAnswer(
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
      kunYomi: 'たかい, たか, だか, たか(まる), たか(める)',
      phraseAnswers: [
        PhraseAnswer(
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
            translation: NA.t('shiroikurumahadou'),
            phraseParts: [
              FuriText(text: '白', furigana: '？', emphasize: true),
              FuriText(text: 'い', emphasize: true),
              FuriText(text: '車', furigana: 'くるま'),
              FuriText(text: 'はどう？')
            ],
            answer: 'しろい'),
        PhraseAnswer(
            translation: NA.t('noruweihahakujinngaooii'),
            phraseParts: [
              FuriText(text: 'ノルウェー', furigana: 'Norway'),
              FuriText(text: 'は'),
              FuriText(text: '白', furigana: '？', emphasize: true),
              FuriText(text: '人', furigana: 'じん', emphasize: true),
              FuriText(text: 'が'),
              FuriText(text: '多', furigana: 'おお'),
              FuriText(text: 'い'),
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
            translation: NA.t('yokutaberune'),
            phraseParts: [
              FuriText(text: 'よく'),
              FuriText(text: '食', furigana: '？', emphasize: true),
              FuriText(text: 'べる', emphasize: true),
              FuriText(text: 'ね'),
            ],
            answer: 'たべる'),
        PhraseAnswer(
            translation: NA.t('tabemonozenzennai'),
            phraseParts: [
              FuriText(text: '食', furigana: '？', emphasize: true),
              FuriText(text: 'べ', emphasize: true),
              FuriText(text: '物', furigana: 'もの', emphasize: true),
              FuriText(text: 'がぜんぜんない')
            ],
            answer: 'たべもの'),
        PhraseAnswer(
            translation: NA.t('washokugasuki'),
            phraseParts: [
              FuriText(text: '和', furigana: 'わ', emphasize: true),
              FuriText(text: '食', furigana: '？', emphasize: true),
              FuriText(text: 'が'),
              FuriText(text: '好', furigana: 'す', emphasize: true),
              FuriText(text: 'き？'),
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
            translation: NA.t('sorewomieru'),
            phraseParts: [
              FuriText(text: 'それを'),
              FuriText(text: '見', furigana: '？', emphasize: true),
              FuriText(text: 'える', emphasize: true),
              FuriText(text: '？'),
            ],
            answer: 'みえる'),
        PhraseAnswer(
            translation: NA.t('hanamishiyou'),
            phraseParts: [
              FuriText(text: '花', furigana: 'はな', emphasize: true),
              FuriText(text: '見', furigana: '？', emphasize: true),
              FuriText(text: 'をしよう')
            ],
            answer: 'はなみ'),
        PhraseAnswer(
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
            translation: NA.t('chantokiite'),
            phraseParts: [
              FuriText(text: 'ちゃんと'),
              FuriText(text: '聞', furigana: '？', emphasize: true),
              FuriText(text: 'いて', emphasize: true),
            ],
            answer: 'きいて'),
        PhraseAnswer(
            translation: NA.t('nanikawokikoeta'),
            phraseParts: [
              FuriText(text: '何', furigana: 'なに'),
              FuriText(text: 'かが'),
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
            translation: NA.t('douiuhanashidesuka'),
            phraseParts: [
              FuriText(text: 'どういう'),
              FuriText(text: '話', furigana: '？', emphasize: true),
              FuriText(text: 'ですか？')
            ],
            answer: 'はなし'),
        PhraseAnswer(
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
            translation: NA.t('honnodokusha'),
            phraseParts: [
              FuriText(text: '本', furigana: 'ほん'),
              FuriText(text: 'の'),
              FuriText(text: '読', furigana: '？', emphasize: true),
              FuriText(text: '者', furigana: 'しゃ', emphasize: true),
            ],
            answer: 'どくしゃ'),
        PhraseAnswer(
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
            translation: NA.t('korehairiguchijanai'),
            phraseParts: [
              FuriText(text: 'これは'),
              FuriText(text: '入', furigana: '？', emphasize: true),
              FuriText(text: '口', furigana: 'ぐち', emphasize: true),
              FuriText(text: 'じゃない'),
            ],
            answer: 'いりぐち'),
        PhraseAnswer(
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
            translation: NA.t('genkankaradete'),
            phraseParts: [
              FuriText(text: '玄関', furigana: 'げんかん'),
              FuriText(text: 'から'),
              FuriText(text: '出', furigana: '？', emphasize: true),
              FuriText(text: 'て', emphasize: true),
            ],
            answer: 'でて'),
        PhraseAnswer(
            translation: NA.t('honnwodashimashou'),
            phraseParts: [
              FuriText(text: '本', furigana: 'ほん'),
              FuriText(text: 'を'),
              FuriText(text: '出', furigana: '？', emphasize: true),
              FuriText(text: 'しましょう', emphasize: true),
            ],
            answer: 'だしましょう'),
        PhraseAnswer(
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
      kunYomi: 'やす(む), やす(まる), やす(める)',
      phraseAnswers: [
        PhraseAnswer(
            translation: NA.t('oyasuminasai'),
            phraseParts: [
              FuriText(text: 'お', emphasize: true),
              FuriText(text: '休', furigana: '？', emphasize: true),
              FuriText(text: 'み', emphasize: true),
              FuriText(text: 'なさい'),
            ],
            answer: 'おやすみ'),
        PhraseAnswer(
            translation: NA.t('yukkuriyasunde'),
            phraseParts: [
              FuriText(text: 'ゆっくり'),
              FuriText(text: '休', furigana: '？', emphasize: true),
              FuriText(text: 'んで', emphasize: true),
              FuriText(text: 'ね')
            ],
            answer: 'やすんで'),
        PhraseAnswer(
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
            translation: NA.t('dokoniikuno'),
            phraseParts: [
              FuriText(text: 'どこに'),
              FuriText(text: '行', furigana: '？', emphasize: true),
              FuriText(text: 'く', emphasize: true),
              FuriText(text: 'の？'),
            ],
            answer: 'いく'),
        PhraseAnswer(
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
            translation: NA.t('ashitarainichishimasu'),
            phraseParts: [
              FuriText(text: '明日', furigana: 'あした'),
              FuriText(text: '来', furigana: '？', emphasize: true),
              FuriText(text: '日', furigana: 'にち', emphasize: true),
              FuriText(text: 'します'),
            ],
            answer: 'らいにち'),
        PhraseAnswer(
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
            translation: NA.t('sonoyamagaookiidesu'),
            phraseParts: [
              FuriText(text: 'その'),
              FuriText(text: '山', furigana: '？', emphasize: true),
              FuriText(text: 'は'),
              FuriText(text: '大', furigana: 'おお'),
              FuriText(text: 'きいです')
            ],
            answer: 'やま'),
        PhraseAnswer(
            translation: NA.t('fujisanhachikai'),
            phraseParts: [
              FuriText(text: '富士', furigana: 'ふじ', emphasize: true),
              FuriText(text: '山', furigana: '？', emphasize: true),
              FuriText(text: 'は'),
              FuriText(text: '近', furigana: 'ちか'),
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
            translation: NA.t('kongetsuhasamuine'),
            phraseParts: [
              FuriText(text: '今', furigana: '？', emphasize: true),
              FuriText(text: '月', furigana: 'げつ', emphasize: true),
              FuriText(text: 'は'),
              FuriText(text: 'さむいね')
            ],
            answer: 'こんげつ'),
        PhraseAnswer(
            translation: NA.t('imahananjidesuka'),
            phraseParts: [
              FuriText(text: '今', furigana: '？', emphasize: true),
              FuriText(text: '何時', furigana: 'なんじ'),
              FuriText(text: 'ですか？')
            ],
            answer: 'いま'),
        PhraseAnswer(
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
            translation: NA.t('kawaniikimashou'),
            phraseParts: [
              FuriText(text: '川', furigana: '？', emphasize: true),
              FuriText(text: 'に'),
              FuriText(text: '行', furigana: 'い'),
              FuriText(text: 'きましょう'),
            ],
            answer: 'かわ'),
        PhraseAnswer(
            translation: NA.t('yamawakasan'),
            phraseParts: [
              FuriText(text: '山', furigana: 'やま', emphasize: true),
              FuriText(text: '川', furigana: '？', emphasize: true),
              FuriText(text: 'さん'),
            ],
            answer: 'やまかわ'),
        PhraseAnswer(
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
          translation: NA.t('atojuppunmattene'),
          phraseParts: [
            FuriText(text: 'あと'),
            FuriText(text: '十', furigana: 'じゅう', emphasize: true),
            FuriText(text: '分', furigana: '？', emphasize: true),
            FuriText(text: '待', furigana: 'ま'),
            FuriText(text: 'ってね'),
          ],
          answer: 'じゅうぷん'),
      PhraseAnswer(
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
