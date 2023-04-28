import 'package:nalelu/furi_text.dart';
import 'package:nalelu/state/manga/models.dart';

import '../na_helpers.dart';

final mangaWordsBank = [
  MangaExerciseModel(imageUrl: 'manga/cats.jpeg', phrases: [
    Phrase(
        translation: NA.t('nekoirutoshiranakatta'),
        phraseParts: [
          PhrasePart(
            furiTexts: [
              FuriText(text: '猫', furigana: 'ねこ'),
              FuriText(text: 'いると'),
              FuriText(text: '知', furigana: 'し'),
              FuriText(text: 'らなかった')
            ],
          ),
        ],
        top: 1,
        left: 1),
    Phrase(
      translation: NA.t('unnihikimoiruyo'),
      phraseParts: [
        PhrasePart(furiTexts: [
          FuriText(text: 'うん、'),
        ]),
        PhrasePart(isAnswerable: true, furiTexts: [
          FuriText(text: '二匹', furigana: 'にひき'),
        ]),
        PhrasePart(furiTexts: [
          FuriText(text: 'もいるよ'),
        ]),
      ], left: 1, top: 1,
    ),
  ]),
];
