import 'package:nalelu/furi_text.dart';
import 'package:nalelu/state/manga/models.dart';

import '../na_helpers.dart';

final mangaWordsBank = [
  MangaExerciseModel(imageUrl: 'assets/manga/cats.jpeg', phrases: [
    Phrase(
        translation: NA.t('nekoirutoshiranakatta'),
        phraseParts: [
          PhrasePart(furiTexts: [
            FuriText(text: '猫', furigana: 'ねこ'),
            FuriText(text: 'いると'),
          ]),
          PhrasePart(isAnswerable: true, furiTexts: [
            FuriText(text: '知', furigana: 'し'),
            FuriText(text: 'らなかった')
          ]),
        ],
        downPercentage: 10,
        rightPercentage: 10),
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
      ],
      rightPercentage: 60,
      downPercentage: 70,
    ),
    Phrase(
        translation: NA.t('kawaiine'),
        phraseParts: [
          PhrasePart(furiTexts: [
            FuriText(text: 'かわいいね！'),
          ]),
        ],
        downPercentage: 80,
        rightPercentage: 30)
  ]),
  MangaExerciseModel(imageUrl: 'assets/manga/birthday.jpeg', phrases: [
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
        downPercentage: 1,
        rightPercentage: 1),
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
      ],
      rightPercentage: 1,
      downPercentage: 1,
    ),
  ]),
  MangaExerciseModel(imageUrl: 'assets/manga/dont_run.jpeg', phrases: [
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
        downPercentage: 1,
        rightPercentage: 1),
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
      ],
      rightPercentage: 1,
      downPercentage: 1,
    ),
  ]),
];
