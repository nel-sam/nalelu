import 'package:nalelu/furi_text.dart';
import 'package:nalelu/state/manga/models.dart';

import '../na_helpers.dart';

final mangaExerciseBank = [
  //TODO: Need to fix this manga exercises

// MangaExerciseModel(imageUrl: 'assets/manga/goal.jpeg', phrases: [
  //   Phrase(
  //       // ルーベンは何ゴール挙めました
  //       translation: NA.t('rubenhanangouruamemashita'),
  //       phraseParts: [
  //         PhrasePart(
  //           furiTexts: [
  //             FuriText(text: 'ルーベンは'),
  //           ],
  //         ),
  //         PhrasePart(isAnswerable: true, furiTexts: [
  //           FuriText(text: '何', furigana: 'なん'),
  //         ]),
  //         PhrasePart(furiTexts: [
  //           FuriText(text: 'ゴール'),
  //           FuriText(text: '挙', furigana: 'あ'),
  //           FuriText(text: 'めました'),
  //         ]),
  //       ],
  //       downPercentage: 2,
  //       rightPercentage: 50),
  //   Phrase(
  //     // 彼は三ゴールを挙げた
  //     translation: NA.t('karehasangouruwoageta'),
  //     phraseParts: [
  //       PhrasePart(
  //         furiTexts: [
  //           FuriText(text: '彼', furigana: '彼'),
  //           FuriText(text: 'は'),
  //           FuriText(text: '三', furigana: 'さん'),
  //           FuriText(text: 'ゴールを'),
  //         ],
  //       ),
  //       PhrasePart(isAnswerable: true, furiTexts: [
  //         FuriText(text: '挙', furigana: 'あ'),
  //         FuriText(text: 'げた'),
  //       ]),
  //     ],
  //     downPercentage: 60,
  //     rightPercentage: 10,
  //   ),
  //   Phrase(
  //       // やったー
  //       translation: NA.t('yatta'),
  //       phraseParts: [
  //         PhrasePart(furiTexts: [
  //           FuriText(text: 'やったー'),
  //         ]),
  //       ],
  //       downPercentage: 90,
  //       rightPercentage: 80),
  // ]),
  // MangaExerciseModel(imageUrl: 'assets/manga/coffee.jpeg', phrases: [
  //   Phrase(
  //       // 何か飲みたい
  //       translation: NA.t('nanikanomitai'),
  //       phraseParts: [
  //         PhrasePart(
  //           furiTexts: [
  //             FuriText(text: '何', furigana: 'なに'),
  //             FuriText(text: 'か'),
  //             FuriText(text: '飲', furigana: 'の'),
  //             FuriText(text: 'みたい'),
  //           ],
  //         ),
  //       ],
  //       downPercentage: 10,
  //       rightPercentage: 10),
  //   Phrase(
  //     // コーヒーは飲みますか
  //     translation: NA.t('koohiihanomimasuka'),
  //     phraseParts: [
  //       PhrasePart(
  //         furiTexts: [
  //           FuriText(text: 'コーヒーは'),
  //         ],
  //       ),
  //       PhrasePart(isAnswerable: true, furiTexts: [
  //         FuriText(text: '飲', furigana: 'の'),
  //         FuriText(text: 'み'),
  //       ]),
  //       PhrasePart(furiTexts: [
  //         FuriText(text: 'ますか'),
  //       ]),
  //     ],
  //     downPercentage: 60,
  //     rightPercentage: 90,
  //   ),
  //   Phrase(
  //       // お茶しか飲まない
  //       translation: NA.t('ochashikanomanai'),
  //       phraseParts: [
  //         PhrasePart(isAnswerable: true, furiTexts: [
  //           FuriText(
  //             text: 'お',
  //           ),
  //           FuriText(
  //             text: '茶',
  //             furigana: 'ちゃ',
  //           ),
  //         ]),
  //         PhrasePart(furiTexts: [
  //           FuriText(
  //             text: 'しか',
  //           ),
  //           FuriText(
  //             text: '飲',
  //             furigana: 'の',
  //           ),
  //           FuriText(
  //             text: 'まない',
  //           ),
  //         ]),
  //       ],
  //       downPercentage: 90,
  //       rightPercentage: 10),
  // ]),
  // MangaExerciseModel(imageUrl: 'assets/manga/stars.jpeg', phrases: [
  //   Phrase(
  //       // 星が五つしか見えない
  //       translation: NA.t('hoshigaitsutsushikamienai'),
  //       phraseParts: [
  //         PhrasePart(
  //           furiTexts: [
  //             FuriText(text: '星', furigana: 'ほし'),
  //             FuriText(text: 'が'),
  //             FuriText(text: '五', furigana: 'いつ'),
  //             FuriText(text: 'つしか'),
  //           ],
  //         ),
  //         PhrasePart(
  //           isAnswerable: true,
  //           furiTexts: [
  //             FuriText(text: '見', furigana: 'み'),
  //             FuriText(text: 'え'),
  //           ],
  //         ),
  //         PhrasePart(
  //           furiTexts: [
  //             FuriText(text: 'ない'),
  //           ],
  //         ),
  //       ],
  //       downPercentage: 20,
  //       rightPercentage: 90),
  //   Phrase(
  //     // もっと星が見えるよ
  //     translation: NA.t('mottohoshigamieruyo'),
  //     phraseParts: [
  //       PhrasePart(
  //         furiTexts: [
  //           FuriText(text: 'もっと'),
  //         ],
  //       ),
  //       PhrasePart(isAnswerable: true, furiTexts: [
  //         FuriText(text: '星', furigana: 'ほし'),
  //       ]),
  //       PhrasePart(furiTexts: [
  //         FuriText(text: 'が'),
  //         FuriText(text: '見', furigana: 'み'),
  //         FuriText(text: 'えるよ'),
  //       ]),
  //     ],
  //     downPercentage: 70,
  //     rightPercentage: 10,
  //   ),
  //   Phrase(
  //       // 本当ね
  //       translation: NA.t('hontoune'),
  //       phraseParts: [
  //         PhrasePart(furiTexts: [
  //           FuriText(
  //             text: '本',
  //             furigana: 'ほん',
  //           ),
  //           FuriText(
  //             text: '当',
  //             furigana: 'とう',
  //           ),
  //           FuriText(
  //             text: 'ね',
  //           ),
  //         ]),
  //       ],
  //       downPercentage: 95,
  //       rightPercentage: 90),
  // ]),

  MangaExerciseModel(imageUrl: 'assets/manga/sunny_day.jpeg', phrases: [
    Phrase(
        // わー、日が強いね？
        translation: NA.t('waahigatsuyoine'),
        phraseParts: [
          PhrasePart(
            furiTexts: [
              FuriText(text: 'わー'),
              FuriText(text: '日', furigana: 'ひ'),
              FuriText(text: 'が'),
            ],
          ),
          PhrasePart(isAnswerable: true, furiTexts: [
            FuriText(text: '強', furigana: 'つよ'),
            FuriText(text: 'い'),
          ]),
          PhrasePart(furiTexts: [
            FuriText(text: 'ね？'),
          ])
        ],
        downPercentage: 20,
        rightPercentage: 80),
    Phrase(
      // うん、だから冷たい飲み物買った
      translation: NA.t('undakaratsumetainomimotokatta'),
      phraseParts: [
        PhrasePart(
          furiTexts: [
            FuriText(text: 'うん、'),
            FuriText(text: 'だから'),
          ],
        ),
        PhrasePart(
          isAnswerable: true,
          furiTexts: [
            FuriText(text: '冷', furigana: 'つめ'),
            FuriText(text: 'たい'),
          ],
        ),
        PhrasePart(
          furiTexts: [
            FuriText(text: '飲', furigana: 'の'),
            FuriText(
              text: 'み',
            ),
            FuriText(text: '物', furigana: 'もの'),
            FuriText(text: 'を'),
          ],
        ),
        PhrasePart(isAnswerable: true, furiTexts: [
          FuriText(text: '買', furigana: 'か'),
        ]),
        PhrasePart(furiTexts: [
          FuriText(text: 'った'),
        ]),
      ],
      downPercentage: 60,
      rightPercentage: 10,
    ),
    Phrase(
        // じゃあ、飲みに行こう
        translation: NA.t('jaanominikou'),
        phraseParts: [
          PhrasePart(
            furiTexts: [
              FuriText(text: 'じゃあ、'),
            ],
          ),
          PhrasePart(isAnswerable: true, furiTexts: [
            FuriText(
              text: '飲',
              furigana: 'の',
            ),
          ]),
          PhrasePart(furiTexts: [
            FuriText(
              text: 'み',
            ),
            FuriText(text: 'に'),
            FuriText(text: '行', furigana: 'い'),
            FuriText(text: 'こう'),
          ]),
        ],
        downPercentage: 90,
        rightPercentage: 80),
  ]),

  MangaExerciseModel(imageUrl: 'assets/manga/music.jpeg', phrases: [
    Phrase(
        // どんな音楽が好き？
        translation: NA.t('donnaongakugasuki'),
        phraseParts: [
          PhrasePart(
            furiTexts: [
              FuriText(text: 'どんな'),
            ],
          ),
          PhrasePart(isAnswerable: true, furiTexts: [
            FuriText(text: '音', furigana: 'おん'),
            FuriText(text: '楽', furigana: 'がく'),
          ]),
          PhrasePart(furiTexts: [
            FuriText(text: 'が'),
            FuriText(text: '好', furigana: 'す'),
            FuriText(text: 'き？'),
          ]),
        ],
        downPercentage: 50,
        rightPercentage: 10),
    Phrase(
      // 何でも好きだよ
      translation: NA.t('nandemosukidayo'),
      phraseParts: [
        PhrasePart(isAnswerable: true, furiTexts: [
          FuriText(text: '何でも', furigana: 'なん'),
          FuriText(text: 'でも'),
        ]),
        PhrasePart(
          furiTexts: [
            FuriText(text: '何でも好きだよ'),
          ],
        ),
      ],
      downPercentage: 72,
      rightPercentage: 85,
    ),
    Phrase(
        // そうか？　ロックとポップとか？
        translation: NA.t('sokkarokkutopopputoka'),
        phraseParts: [
          PhrasePart(furiTexts: [
            FuriText(text: 'そうか？'),
            FuriText(text: 'ロックとポップ'),
          ]),
          PhrasePart(isAnswerable: true, furiTexts: [
            FuriText(text: 'とか'),
          ]),
          PhrasePart(furiTexts: [
            FuriText(text: '？'),
          ]),
        ],
        downPercentage: 95,
        rightPercentage: 10),
  ]),

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
