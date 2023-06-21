import 'package:nalelu/furi_text.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/widgets/kanji.dart';

List<Kanji> kanjiN2Bank = [
  Kanji(
      translation: NA.t('玉'),
      kanji: '玉',
      onYomi: 'ギョク',
      kunYomi: 'たま',
      phraseAnswers: [
        PhraseAnswer(
          // 玉ねぎ
          translation: NA.t('tamanegi'),
          phraseParts: [
            FuriText(text: '玉', furigana: '？', emphasize: true),
            FuriText(text: 'ねぎ'),
          ],
          answer: 'たま',
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
];
