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
      rightPercentage: 55,
      downPercentage: 70,
    ),
    Phrase(
        translation: NA.t('kawaiine'),
        phraseParts: [
          PhrasePart(furiTexts: [
            FuriText(text: 'かわいいね！'),
          ]),
        ],
        downPercentage: 90,
        rightPercentage: 15)
  ]),
  MangaExerciseModel(imageUrl: 'assets/manga/birthday.jpeg', phrases: [
    Phrase(
        translation: NA.t('otanjoubiomedetou'),
        phraseParts: [
          PhrasePart(
            furiTexts: [
              FuriText(text: '誕生日', furigana: 'たんじょうび'),
              FuriText(text: 'おめでとう'),
            ],
          ),
        ],
        downPercentage: 10,
        rightPercentage: 50),
    Phrase(
      translation: NA.t('arigatou'),
      phraseParts: [
        PhrasePart(
          furiTexts: [
            FuriText(text: 'ありがとう'),
          ],
        ),
      ],
      downPercentage: 30,
      rightPercentage: 5,
    ),
    Phrase(
        translation: NA.t('nijuuissaininattayone'),
        phraseParts: [
          PhrasePart(isAnswerable: true, furiTexts: [
            FuriText(text: '二十一歳', furigana: 'にじゅういっさい'),
          ]),
          PhrasePart(furiTexts: [
            FuriText(text: 'になったよね？'),
          ]),
        ],
        downPercentage: 80,
        rightPercentage: 40),
  ]),
  MangaExerciseModel(imageUrl: 'assets/manga/dont_run.jpeg', phrases: [
    Phrase(
        translation: NA.t('ittekimasu'),
        phraseParts: [
          PhrasePart(
            furiTexts: [
              FuriText(text: 'いってきます！'),
            ],
          ),
        ],
        downPercentage: 10,
        rightPercentage: 60),
    Phrase(
        translation: NA.t('hashiranaide'),
        phraseParts: [
          PhrasePart(
            isAnswerable: true,
            furiTexts: [
              FuriText(text: '走', furigana: 'はし'),
              FuriText(text: 'らないで'),
            ],
          ),
          PhrasePart(furiTexts: [FuriText(text: 'よ!')]),
        ],
        downPercentage: 70,
        rightPercentage: 10),
  ]),
  MangaExerciseModel(imageUrl: 'assets/manga/phone_walking.jpeg', phrases: [
    Phrase(
        translation: NA.t('imananishiteruno'),
        phraseParts: [
          PhrasePart(
            furiTexts: [
              FuriText(text: '今', furigana: 'いま'),
              FuriText(text: '何', furigana: 'なに'),
              FuriText(text: 'を'),
            ],
          ),
          PhrasePart(isAnswerable: true, furiTexts: [
            FuriText(text: 'してる', furigana: ''),
          ]),
          PhrasePart(furiTexts: [
            FuriText(text: 'の？', furigana: ''),
          ]),
        ],
        downPercentage: 0,
        rightPercentage: 10),
    Phrase(
      translation: NA.t('imanearuiteruyo'),
      phraseParts: [
        PhrasePart(
          furiTexts: [
            FuriText(text: '今', furigana: 'いま'),
            FuriText(text: 'ね、'),
          ],
        ),
        PhrasePart(isAnswerable: true, furiTexts: [
          FuriText(text: '歩', furigana: 'ある'),
          FuriText(text: 'いている', furigana: ''),
        ]),
      ],
      downPercentage: 50,
      rightPercentage: 60,
    ),
    Phrase(
        translation: NA.t('sokkaato15funniaeru'),
        phraseParts: [
          PhrasePart(furiTexts: [
            FuriText(text: 'そうか、あと', furigana: ''),
          ]),
          PhrasePart(isAnswerable: true, furiTexts: [
            FuriText(text: '三十分', furigana: 'さんじゅうぷん'),
          ]),
          PhrasePart(furiTexts: [
            FuriText(text: 'に', furigana: ''),
          ]),
          PhrasePart(isAnswerable: true, furiTexts: [
            FuriText(text: '会', furigana: 'あ'),
            FuriText(text: 'える', furigana: ''),
          ]),
          PhrasePart(furiTexts: [
            FuriText(text: '?', furigana: ''),
          ]),
        ],
        downPercentage: 80,
        rightPercentage: 20),
  ]),
];
