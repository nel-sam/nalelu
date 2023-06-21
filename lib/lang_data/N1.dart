import 'package:nalelu/furi_text.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/widgets/kanji.dart';

List<Kanji> kanjiN1Bank = [
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
];
