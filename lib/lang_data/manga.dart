import 'package:nalelu/furi_text.dart';
import 'package:nalelu/state/manga/models.dart';

import '../na_helpers.dart';

final mangaWordsBank = [
  MangaExerciseModel(imageUrl: 'assets/manga/rainy_season.jpeg', phrases: [
    Phrase(
      // 雨がいっぱい降っているね
      translation: NA.t('amegaippaifutterune'),
      phraseParts: [
        PhrasePart(
          isAnswerable: true,
          furiTexts: [
            FuriText(text: '雨', furigana: 'あめ'),
          ],
        ),
        PhrasePart(furiTexts: [
          FuriText(text: 'がいっぱい'),
        ]),
        PhrasePart(isAnswerable: true, furiTexts: [
          FuriText(text: '降', furigana: 'ふ'),
          FuriText(text: 'って'),
        ]),
        PhrasePart(furiTexts: [
          FuriText(text: 'いるね？'),
        ]),
      ],
      downPercentage: 2,
      rightPercentage: 2,
    ),
    Phrase(
        // 梅雨だからね
        translation: NA.t('tsuyudakarane'),
        phraseParts: [
          PhrasePart(isAnswerable: true, furiTexts: [
            FuriText(text: '梅雨', furigana: 'つゆ'),
          ]),
          PhrasePart(furiTexts: [
            FuriText(text: 'だからね'),
          ]),
        ],
        downPercentage: 50,
        rightPercentage: 80),
    Phrase(
      // あれ？来月からじゃなかったっけ？
      translation: NA.t('areraigetsukarajanakatta'),
      phraseParts: [
        PhrasePart(furiTexts: [
          FuriText(text: 'あれ？'),
        ]),
        PhrasePart(isAnswerable: true, furiTexts: [
          FuriText(text: '来月', furigana: 'らいげつ'),
        ]),
        PhrasePart(furiTexts: [
          FuriText(text: 'からじゃなかった？'),
        ]),
      ],
      downPercentage: 78,
      rightPercentage: 2,
    ),
    Phrase(
      // 最近早いよね
      translation: NA.t('saikinhayaiyone'),
      phraseParts: [
        PhrasePart(furiTexts: [
          FuriText(text: '最近', furigana: 'さいきん'),
        ]),
        PhrasePart(furiTexts: [
          FuriText(text: '早い', furigana: 'はや'),
        ]),
        PhrasePart(furiTexts: [FuriText(text: 'よね')])
      ],
      downPercentage: 98,
      rightPercentage: 90,
    )
  ]),
  MangaExerciseModel(imageUrl: 'assets/manga/cats.jpeg', phrases: [
    Phrase(
      // 猫がいると知らなかった
        translation: NA.t('nekoirutoshiranakatta'),
        phraseParts: [
          PhrasePart(furiTexts: [
            FuriText(text: '猫', furigana: 'ねこ'),
            FuriText(text: 'がいると'),
          ]),
          PhrasePart(isAnswerable: true, furiTexts: [
            FuriText(text: '知', furigana: 'し'),
            FuriText(text: 'らなかった')
          ]),
        ],
        downPercentage: 5,
        rightPercentage: 10),
    Phrase(
      // うん、二匹もいるよ
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
      rightPercentage: 90,
      downPercentage: 30,
    ),
    Phrase(
      // かわいいね！
        translation: NA.t('kawaiine'),
        phraseParts: [
          PhrasePart(furiTexts: [
            FuriText(text: 'かわいいね！'),
          ]),
        ],
        downPercentage: 95,
        rightPercentage: 10)
  ]),
  MangaExerciseModel(imageUrl: 'assets/manga/birthday.jpeg', phrases: [
    Phrase(
      // 誕生日おめでとう
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
      // ありがとう
      translation: NA.t('arigatou'),
      phraseParts: [
        PhrasePart(
          furiTexts: [
            FuriText(text: 'ありがとう'),
          ],
        ),
      ],
      downPercentage: 35,
      rightPercentage: 5,
    ),
    Phrase(
      // 二十一歳になったよね？
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
      // いってきます！
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
      // 走らないでよ!
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
      // 今何をしてるの？
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
        downPercentage: 2,
        rightPercentage: 10),
    Phrase(
      // 今ね、歩いている
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
       // そうか、あと三十分に会える？
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
        downPercentage: 95,
        rightPercentage: 20),
  ]),
];
