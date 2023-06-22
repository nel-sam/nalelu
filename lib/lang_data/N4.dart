import 'package:nalelu/furi_text.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/widgets/kanji.dart';

List<Kanji> kanjiN4Bank = [
  Kanji(
      translation: NA.t('犬'),
      kanji: '犬',
      onYomi: 'ケン',
      kunYomi: 'いぬ',
      phraseAnswers: [
        PhraseAnswer(
          // どんな犬が好きですか？
          translation: NA.t('donnainugagokidesuka'),
          phraseParts: [
            FuriText(text: 'どんな'),
            FuriText(text: '犬', furigana: '？', emphasize: true),
            FuriText(text: 'が'),
            FuriText(text: '好', furigana: 'す'),
            FuriText(text: 'き'),
            FuriText(text: 'ですか？'),
          ],
          answer: 'いぬ',
        ),
        //PhraseAnswer(
        //　TODO: 狂犬病 for higher levels
        //),
      ]),
  Kanji(
      translation: NA.t('目'),
      kanji: '目',
      onYomi: 'モク, ボク',
      kunYomi: 'め',
      phraseAnswers: [
        PhraseAnswer(
          // 彼は目を閉じた
          translation: NA.t('karehaameowotojita'),
          phraseParts: [
            FuriText(text: '彼', furigana: 'かれ'),
            FuriText(text: 'は'),
            FuriText(text: '目', furigana: '？', emphasize: true),
            FuriText(text: 'を'),
            FuriText(text: '閉', furigana: 'と'),
            FuriText(text: 'じた'),
          ],
          answer: 'め',
        ),
        PhraseAnswer(
          // 何の目的で来たのですか？
          translation: NA.t('nanomokutekidekitanodesuka'),
          phraseParts: [
            FuriText(text: '何', furigana: 'なん'),
            FuriText(text: 'の'),
            FuriText(text: '目', furigana: '？', emphasize: true),
            FuriText(text: '的', furigana: 'てき', emphasize: true),
            FuriText(text: 'で'),
            FuriText(text: '来', furigana: 'き'),
            FuriText(text: 'た'),
            FuriText(text: 'の'),
            FuriText(text: 'です'),
            FuriText(text: 'か？'),
          ],
          answer: 'もくてき',
        ),
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
          translation: NA.t('kokoronosokokaraarigatou'),
          phraseParts: [
            FuriText(text: '心', furigana: '？', emphasize: true),
            FuriText(text: 'の'),
            FuriText(text: '底', furigana: 'そこ'),
            FuriText(text: 'からありがとう'),
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
        // PhraseAnswer(
        //     // 近くに販売機がある？
        //     //TODO: need to check
        //     translation: NA.t('konochikakunihanbaikigaaru'),
        //     phraseParts: [
        //       FuriText(text: '近', furigana: 'ちか'),
        //       FuriText(text: 'くに'),
        //       FuriText(text: '販売機', furigana: 'はん？き', emphasize: true),
        //       FuriText(text: 'がある？')
        //     ],
        //     answer: 'はんばいき'),
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
];
