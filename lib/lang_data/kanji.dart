import 'package:nalelu/furi_text.dart';
import 'package:nalelu/na_helpers.dart';

// TODO: Add note somewhere to tell users that examples given here are not
// textbook Japanese, but rather useful everyday Japanese sentences

List<Kanji> kanjiBank = [
  // Kanji(
  //     translation: NA.t('人'),
  //     kanji: '人',
  //     onYomi: 'ジン、ニン',
  //     kunYomi: 'ひと、-り、-と',
  // phraseAnswers: [PhraseAnswer(translation: NA.t(''),phraseParts: [],answer: '',)]),
  // Kanji(
  //     translation: NA.t('先'),
  //     kanji: '先',
  //     onYomi: 'セン',
  //     kunYomi: 'さき、ま',
  // phraseAnswers: [PhraseAnswer(translation: NA.t(''),phraseParts: [],answer: '',)]),
  // Kanji(
  //     translation: NA.t('名'),
  //     kanji: '名',
  //     onYomi: 'メイ、ミョウ',
  //     kunYomi: 'な',
  // phraseAnswers: [PhraseAnswer(translation: NA.t(''),phraseParts: [],answer: '',)]),
  // Kanji(
  //     translation: NA.t('友'),
  //     kanji: '友',
  //     onYomi: 'ユウ',
  //     kunYomi: 'とも',
  // phraseAnswers: [PhraseAnswer(translation: NA.t(''),phraseParts: [],answer: '',)]),
  // Kanji(
  //     translation: NA.t('天'),
  //     kanji: '天',
  //     onYomi: 'テン',
  //     kunYomi: 'あまつ、あめ、あま',
  // phraseAnswers: [PhraseAnswer(translation: NA.t(''),phraseParts: [],answer: '',)]),
  // Kanji(
  //     translation: NA.t('子'),
  //     kanji: '子',
  //     onYomi: 'シ、ス、ツ',
  //     kunYomi: 'こ',
  // phraseAnswers: [PhraseAnswer(translation: NA.t(''),phraseParts: [],answer: '',)]),
  //     Kanji(
  //     translation: NA.t('市'),
  //     kanji: '市',
  //     onYomi: 'シ',
  //     kunYomi: 'いち',
  // phraseAnswers: [PhraseAnswer(translation: NA.t(''),phraseParts: [],answer: '',)]),
  // Kanji(
  //     translation: NA.t('時'),
  //     kanji: '時',
  //     onYomi: 'ジ',
  //     kunYomi: 'とき',
  // phraseAnswers: [PhraseAnswer(translation: NA.t(''),phraseParts: [],answer: '',)]),
  // Kanji(
  //     translation: NA.t('本'),
  //     kanji: '本',
  //     onYomi: 'ホン',
  //     kunYomi: 'もと',
  // phraseAnswers: [PhraseAnswer(translation: NA.t(''),phraseParts: [],answer: '',)]),
  // Kanji(
  //     translation: NA.t('東'),
  //     kanji: '東',
  //     onYomi: 'トウ',
  //     kunYomi: 'ひがし',
  // phraseAnswers: [PhraseAnswer(translation: NA.t(''),phraseParts: [],answer: '',)]),
  // Kanji(
  //     translation: NA.t('犬'),
  //     kanji: '犬',
  //     onYomi: 'ケン',
  //     kunYomi: 'いぬ',
  // phraseAnswers: [PhraseAnswer(translation: NA.t(''),phraseParts: [],answer: '',)]),
  // Kanji(
  //     translation: NA.t('玉'),
  //     kanji: '玉',
  //     onYomi: 'ギョク',
  //     kunYomi: 'たま',
  // phraseAnswers: [PhraseAnswer(translation: NA.t(''),phraseParts: [],answer: '',)]),
  // Kanji(
  //     translation: NA.t('生'),
  //     kanji: '生',
  //     onYomi: 'セイ, ショウ',
  //     kunYomi: 'いきる',
  // phraseAnswers: [PhraseAnswer(translation: NA.t(''),phraseParts: [],answer: '',)]),
  // Kanji(
  //     translation: NA.t('目'),
  //     kanji: '目',
  //     onYomi: 'モク, ボク',
  //     kunYomi: 'め',
  // phraseAnswers: [PhraseAnswer(translation: NA.t(''),phraseParts: [],answer: '',)]),
  // Kanji(
  //     translation: NA.t('石'),
  //     kanji: '石',
  //     onYomi: 'セキ、シャク、コク',
  //     kunYomi: 'いし',
  // phraseAnswers: [PhraseAnswer(translation: NA.t(''),phraseParts: [],answer: '',)]),
  // Kanji(
  //     translation: NA.t('耳'),
  //     kanji: '耳',
  //     onYomi: 'ジ',
  //     kunYomi: 'みみ',
  // phraseAnswers: [PhraseAnswer(translation: NA.t(''),phraseParts: [],answer: '',)]),
  // Kanji(
  //     translation: NA.t('車'),
  //     kanji: '車',
  //     onYomi: 'シャ',
  //     kunYomi: 'くるま',
  // phraseAnswers: [PhraseAnswer(translation: NA.t(''),phraseParts: [],answer: '',)]),
  // Kanji(
  //     translation: NA.t('学'),
  //     kanji: '学',
  //     onYomi: 'ガク, マナブ',
  //     kunYomi: 'まなぶ',
  // phraseAnswers: [PhraseAnswer(translation: NA.t(''),phraseParts: [],answer: '',)]),
  // Kanji(
  //     translation: NA.t('校'),
  //     kanji: '校',
  //     onYomi: 'コウ, キョウ',
  //     kunYomi: '',
  // phraseAnswers: [PhraseAnswer(translation: NA.t(''),phraseParts: [],answer: '',)]),
  // Kanji(
  //     translation: NA.t('父'),
  //     kanji: '父',
  //     onYomi: 'フ, フウ',
  //     kunYomi: 'ちち',
  // phraseAnswers: [PhraseAnswer(translation: NA.t(''),phraseParts: [],answer: '',)]),
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
              FuriText(text: '母', furigana: '?', emphasize: true),
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
            FuriText(text: 'です'),
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
      translation: NA.t('岩'),
      kanji: '岩',
      onYomi: 'ガン',
      kunYomi: 'いわ',
      phraseAnswers: [
        PhraseAnswer(
          // 岩の上に座っている
          translation: NA.t('iwanouenisawaatteiru'),
          phraseParts: [
            FuriText(text: '岩', furigana: '？', emphasize: true),
            FuriText(text: 'の'),
            FuriText(text: '上', furigana: 'うえ'),
            FuriText(text: 'に'),
            FuriText(text: '座', furigana: 'すわ'),
            FuriText(text: 'っている'),
          ],
          answer: 'いわ',
        ),
        PhraseAnswer(
          // 火山から溶岩が流れている
          translation: NA.t('kazankarayouganganagareteiru'),
          phraseParts: [
            FuriText(text: '火山', furigana: 'かざん'),
            FuriText(text: 'から'),
            FuriText(text: '溶', furigana: 'よう', emphasize: true),
            FuriText(text: '岩', furigana: '？', emphasize: true),
            FuriText(text: 'が'),
            FuriText(text: '流', furigana: 'なが'),
            FuriText(text: 'れている'),
          ],
          answer: 'ようがん',
        )
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
          translation: NA.t('kokoronosokokaraarigatougozaimasu'),
          phraseParts: [
            FuriText(text: '心', furigana: '？', emphasize: true),
            FuriText(text: 'の'),
            FuriText(text: '底', furigana: 'そこ'),
            FuriText(text: 'から'),
            FuriText(text: 'ありがとうございます'),
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
      translation: NA.t('俺'),
      kanji: '俺',
      onYomi: '',
      kunYomi: 'おれ',
      phraseAnswers: [
        PhraseAnswer(
          // 俺は待ってる
          translation: NA.t('orehamatteru'),
          phraseParts: [
            FuriText(text: '俺', furigana: '？', emphasize: true),
            FuriText(text: 'は'),
            FuriText(text: '待', furigana: 'ま'),
            FuriText(text: 'ってる'),
          ],
          answer: 'おれ',
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
            translation: NA.t('nisenninmosankashimashita'),
            phraseParts: [
              FuriText(text: '二', furigana: 'に', emphasize: true),
              FuriText(text: '千', furigana: '？', emphasize: true),
              FuriText(text: '人', furigana: 'にん', emphasize: true),
              FuriText(text: 'も'),
              FuriText(text: '参加', furigana: 'さんか'),
              FuriText(text: 'しました'),
            ],
            answer: 'にせんにん'),
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
      translation: NA.t('短'),
      kanji: '短',
      onYomi: 'タン',
      kunYomi: 'みじか, みじか(い)',
      phraseAnswers: [
        PhraseAnswer(
            // 僕の髪の毛が短い
            translation: NA.t('bokunokaminokegamijikai'),
            phraseParts: [
              FuriText(text: '僕', furigana: 'ぼく'),
              FuriText(text: 'の'),
              FuriText(text: '髪', furigana: 'かみ'),
              FuriText(text: 'の'),
              FuriText(text: '毛', furigana: 'け'),
              FuriText(text: 'が'),
              FuriText(text: '短', furigana: '？', emphasize: true),
              FuriText(text: 'い', emphasize: true),
            ],
            answer: 'みじかい'),
        // TODO: One for on yomi？
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
      translation: NA.t('安'),
      kanji: '安',
      onYomi: 'アン',
      kunYomi: 'やすい, やすまる, やす, やす.らか',
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
      translation: NA.t('暑'),
      kanji: '暑',
      onYomi: 'ショ',
      kunYomi: 'あつ(い), あつ(がる)',
      phraseAnswers: [
        PhraseAnswer(
            // 天気が暑すぎる
            translation: NA.t('tenkigaatsusugiru'),
            phraseParts: [
              FuriText(text: '天気', furigana: 'てんき'),
              FuriText(text: 'が'),
              FuriText(text: '暑', furigana: '？', emphasize: true),
              FuriText(text: 'すぎる'),
            ],
            answer: 'あつ'),
        PhraseAnswer(
            // 沖縄は暑いですね
            translation: NA.t('okinawahaatsuidesune'),
            phraseParts: [
              FuriText(text: '沖縄', furigana: 'おきなわ'),
              FuriText(text: 'は'),
              FuriText(text: '暑', furigana: '？', emphasize: true),
              FuriText(text: 'い', emphasize: true),
              FuriText(text: 'ですね'),
            ],
            answer: 'あつい'),
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
      translation: NA.t('簡'),
      kanji: '簡',
      onYomi: 'カン, ケン',
      kunYomi: 'えらぶ',
      phraseAnswers: [
        PhraseAnswer(
            // 簡単なことだよ
            translation: NA.t('kantannakotodayo'),
            phraseParts: [
              FuriText(text: '簡', furigana: '？', emphasize: true),
              FuriText(text: '単', furigana: 'たん', emphasize: true),
              FuriText(text: 'なことだよ')
            ],
            answer: 'かんたん'),
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
      translation: NA.t('嫌'),
      kanji: '嫌',
      onYomi: 'ケン',
      kunYomi: 'きら(う), きら(い), いや',
      phraseAnswers: [
        PhraseAnswer(
            // これは嫌い？
            translation: NA.t('korehakira'),
            phraseParts: [
              FuriText(text: 'これは'),
              FuriText(text: '嫌', furigana: '？', emphasize: true),
              FuriText(text: 'い', emphasize: true),
              FuriText(text: '？'),
            ],
            answer: 'きらい'),
        PhraseAnswer(
            // その人本当に嫌だ
            translation: NA.t('sonohitohontouniiyada'),
            phraseParts: [
              FuriText(text: 'その'),
              FuriText(text: '人', furigana: 'ひと'),
              FuriText(text: '本当', furigana: 'ほんとう'),
              FuriText(text: 'に'),
              FuriText(text: '嫌', furigana: '？', emphasize: true),
              FuriText(text: 'だ'),
            ],
            answer: 'いや'),
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
      translation: NA.t('黄'),
      kanji: '黄',
      onYomi: 'コウ',
      kunYomi: 'き, こ',
      phraseAnswers: [
        PhraseAnswer(
            // わたしの歯が黄色い
            translation: NA.t('watashinohagakiiroi'),
            phraseParts: [
              FuriText(text: 'わたしの'),
              FuriText(text: '歯', furigana: 'は'),
              FuriText(text: 'が'),
              FuriText(text: '黄', furigana: '？', emphasize: true),
              FuriText(text: '色', furigana: 'いろ', emphasize: true),
              FuriText(text: 'い', emphasize: true)
            ],
            answer: 'きいろい'),
      ]),
  Kanji(
      translation: NA.t('紫'),
      kanji: '紫',
      onYomi: 'シ',
      kunYomi: 'むらさき',
      phraseAnswers: [
        PhraseAnswer(
            // 紫色がかわいい
            translation: NA.t('murasakiirogakawaii'),
            phraseParts: [
              FuriText(text: '紫', furigana: '？', emphasize: true),
              FuriText(text: '色', furigana: 'いろ', emphasize: true),
              FuriText(text: 'が'),
              FuriText(text: 'かわいい')
            ],
            answer: 'むらさきいろ'),
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
        PhraseAnswer(
            // 近くに販売機がある？
            //TODO: need to check
            translation: NA.t('konochikakunihanbaikigaaru'),
            phraseParts: [
              FuriText(text: '近', furigana: 'ちか'),
              FuriText(text: 'くに'),
              FuriText(text: '販売機', furigana: 'はん？き', emphasize: true),
              FuriText(text: 'がある？')
            ],
            answer: 'はんばいき'),
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
      translation: NA.t('休'),
      kanji: '休',
      onYomi: 'キュウ',
      kunYomi: 'やす(む), やす.まる, やす(める)',
      phraseAnswers: [
        PhraseAnswer(
            // お休みなさい
            translation: NA.t('oyasuminasai'),
            phraseParts: [
              FuriText(text: 'お'),
              FuriText(text: '休', furigana: '？', emphasize: true),
              FuriText(text: 'み', emphasize: true),
              FuriText(text: 'なさい'),
            ],
            answer: 'やす'),
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

class Kanji {
  final String kanji;
  final String onYomi;
  final String kunYomi;
  final String translation;
  List<PhraseAnswer> phraseAnswers;

  Kanji({
    required this.translation,
    required this.kanji,
    required this.onYomi,
    required this.kunYomi,
    required this.phraseAnswers,
  });
}

class PhraseAnswer {
  final List<FuriText> phraseParts;
  final String answer;
  final String translation;

  PhraseAnswer({
    required this.phraseParts,
    required this.answer,
    required this.translation,
  });
}
