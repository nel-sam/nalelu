import 'package:nalelu/furi_text.dart';
import 'package:nalelu/state/manga/models.dart';

import '../na_helpers.dart';

final mangaExerciseBank = [
  MangaExerciseModel(imageUrl: 'assets/manga/goal.jpeg', phrases: [
    Phrase(
        translation: NA.t('karehanangouruwokimetano'),
        phraseParts: [
          PhrasePart(
            furiTexts: [
              FuriText(text: '彼は'),
            ],
          ),
          PhrasePart(isAnswerable: true, furiTexts: [
            FuriText(text: '何回', furigana: 'なんかい'),
          ]),
          PhrasePart(furiTexts: [
            FuriText(text: 'ゴール'),
            FuriText(text: '決', furigana: 'き'),
            FuriText(text: 'めたの？'),
          ]),
        ],
        downPercentage: 2,
        rightPercentage: 50),
    Phrase(
      translation: NA.t('moumittsumokimetayo'),
      phraseParts: [
        PhrasePart(furiTexts: [
          FuriText(text: 'もう'),
        ]),
        PhrasePart(isAnswerable: true, furiTexts: [
          FuriText(text: '三', furigana: 'みっ'),
          FuriText(text: 'つ'),
        ]),
        PhrasePart(furiTexts: [
          FuriText(text: 'も'),
        ]),
        PhrasePart(furiTexts: [
          FuriText(text: '決', furigana: 'き'),
          FuriText(text: 'めたよ'),
        ]),
      ],
      downPercentage: 60,
      rightPercentage: 10,
    ),
    Phrase(
        translation: NA.t('hontounijouzuda'),
        phraseParts: [
          PhrasePart(
            isAnswerable: true,
            furiTexts: [
              FuriText(text: '本当', furigana: 'ほんとう'),
            ],
          ),
          PhrasePart(furiTexts: [
            FuriText(text: 'に'),
          ]),
          PhrasePart(isAnswerable: true, furiTexts: [
            FuriText(text: '上手', furigana: 'じょうず'),
          ]),
          PhrasePart(furiTexts: [
            FuriText(text: 'だね！'),
          ]),
        ],
        downPercentage: 90,
        rightPercentage: 80),
  ]),
  MangaExerciseModel(imageUrl: 'assets/manga/coffee.jpeg', phrases: [
    Phrase(
        translation: NA.t('nanikanomitai'),
        phraseParts: [
          PhrasePart(
            furiTexts: [
              FuriText(text: '何', furigana: 'なに'),
              FuriText(text: 'か'),
              FuriText(text: '飲', furigana: 'の'),
              FuriText(text: 'みたい'),
            ],
          ),
        ],
        downPercentage: 10,
        rightPercentage: 10),
    Phrase(
      translation: NA.t('koohiihanomimasuka'),
      phraseParts: [
        PhrasePart(
          furiTexts: [
            FuriText(text: 'コーヒー'),
          ],
        ),
        PhrasePart(isAnswerable: true, furiTexts: [
          FuriText(text: '飲', furigana: 'の'),
          FuriText(text: 'む'),
        ]),
        PhrasePart(furiTexts: [
          FuriText(text: '？'),
        ]),
      ],
      downPercentage: 60,
      rightPercentage: 90,
    ),
    Phrase(
        translation: NA.t('ochashikanomitakunai'),
        phraseParts: [
          PhrasePart(isAnswerable: true, furiTexts: [
            FuriText(
              text: 'お',
            ),
            FuriText(
              text: '茶',
              furigana: 'ちゃ',
            ),
          ]),
          PhrasePart(furiTexts: [
            FuriText(
              text: 'しか',
            ),
          ]),
          PhrasePart(isAnswerable: true, furiTexts: [
            FuriText(
              text: '飲',
              furigana: 'の',
            ),
            FuriText(
              text: 'みたくない',
            ),
          ]),
        ],
        downPercentage: 90,
        rightPercentage: 10),
  ]),
  MangaExerciseModel(imageUrl: 'assets/manga/stars.jpeg', phrases: [
    Phrase(
        translation: NA.t('hoshigapikapikashitetekireidane'),
        phraseParts: [
          PhrasePart(
            isAnswerable: true,
            furiTexts: [
              FuriText(text: '星', furigana: 'ほし'),
            ],
          ),
          PhrasePart(furiTexts: [
            FuriText(text: 'が'),
            FuriText(text: 'キラキラしていて'),
          ]),
          PhrasePart(isAnswerable: true, furiTexts: [
            FuriText(text: 'きれい'),
          ]),
          PhrasePart(furiTexts: [
            FuriText(text: 'だね'),
          ]),
        ],
        downPercentage: 20,
        rightPercentage: 90),
    Phrase(
      translation: NA.t('konnanitakusanattesugoine'),
      phraseParts: [
        PhrasePart(furiTexts: [
          FuriText(text: 'こんなに'),
        ]),
        PhrasePart(isAnswerable: true, furiTexts: [
          FuriText(text: '沢山', furigana: 'たくさん'),
        ]),
        PhrasePart(furiTexts: [
          FuriText(text: 'あって'),
        ]),
        PhrasePart(isAnswerable: true, furiTexts: [
          FuriText(text: 'すごい'),
        ]),
        PhrasePart(furiTexts: [
          FuriText(text: 'ね'),
        ]),
      ],
      downPercentage: 70,
      rightPercentage: 10,
    ),
    Phrase(
        translation: NA.t('hontoune'),
        phraseParts: [
          PhrasePart(furiTexts: [
            FuriText(
              text: '本',
              furigana: 'ほん',
            ),
            FuriText(
              text: '当',
              furigana: 'とう',
            ),
            FuriText(
              text: 'ね',
            ),
          ]),
        ],
        downPercentage: 95,
        rightPercentage: 90),
  ]),
  MangaExerciseModel(imageUrl: 'assets/manga/sunny_day.jpeg', phrases: [
    Phrase(
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
            FuriText(text: 'ね'),
          ])
        ],
        downPercentage: 20,
        rightPercentage: 80),
    Phrase(
      translation: NA.t('dakaratsumetainomimotokatta'),
      phraseParts: [
        PhrasePart(
          isAnswerable: true,
          furiTexts: [
            FuriText(text: '冷', furigana: 'つめ'),
            FuriText(text: 'たい'),
          ],
        ),
        PhrasePart(
          furiTexts: [
            FuriText(
              text: 'ものが',
            ),
            FuriText(text: '飲', furigana: 'の'),
            FuriText(text: 'みたい'),
          ],
        ),
      ],
      downPercentage: 60,
      rightPercentage: 10,
    ),
    Phrase(
        translation: NA.t('jaakainikou'),
        phraseParts: [
          PhrasePart(
            furiTexts: [
              FuriText(text: 'じゃあ、'),
            ],
          ),
          PhrasePart(isAnswerable: true, furiTexts: [
            FuriText(
              text: '買',
              furigana: 'か',
            ),
            FuriText(text: 'い'),
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
      translation: NA.t('nandemosukidayo'),
      phraseParts: [
        PhrasePart(isAnswerable: true, furiTexts: [
          FuriText(text: '何', furigana: 'なん'),
          FuriText(text: 'でも'),
        ]),
        PhrasePart(
          furiTexts: [
            FuriText(text: '好', furigana: 'す'),
            FuriText(text: 'きだよ'),
          ],
        ),
      ],
      downPercentage: 72,
      rightPercentage: 85,
    ),
    Phrase(
        translation: NA.t('sokkarokkutopopputoka'),
        phraseParts: [
          PhrasePart(furiTexts: [
            FuriText(text: 'ロックとか、ポップ'),
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
        translation: NA.t('nekoirutoshiranakatta'),
        phraseParts: [
          PhrasePart(furiTexts: [
            FuriText(text: '猫', furigana: 'ねこ'),
            FuriText(text: 'がいるとは'),
          ]),
          PhrasePart(isAnswerable: true, furiTexts: [
            FuriText(text: '知', furigana: 'し'),
            FuriText(text: 'らなかったよ')
          ]),
        ],
        downPercentage: 5,
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
      rightPercentage: 90,
      downPercentage: 30,
    ),
    Phrase(
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
      downPercentage: 35,
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
        downPercentage: 2,
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
            FuriText(text: 'そうか、', furigana: ''),
          ]),
          PhrasePart(isAnswerable: true, furiTexts: [
            FuriText(text: '三十分後', furigana: 'さんじゅうぷんご'),
          ]),
          PhrasePart(furiTexts: [
            FuriText(text: 'に'),
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
