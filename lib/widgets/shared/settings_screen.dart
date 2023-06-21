import 'package:flutter/material.dart';
import 'package:nalelu/furi_text.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/state/enums.dart';
import 'package:nalelu/widgets/doushi_exercise/doushi_exercise_1.dart';
import 'package:nalelu/widgets/kanji_exercise/kanji_exercise.dart';
import 'package:nalelu/widgets/manga_exercise/manga_exercise.dart';
import 'package:nalelu/widgets/shared/furigana_text.dart';
import 'package:nalelu/widgets/shared/na_free_form_entry_wrapper.dart';
import 'package:nalelu/widgets/shared/na_kanji_block.dart';
import 'package:nalelu/widgets/shared/na_menu_button.dart';
import 'package:nalelu/widgets/suuji_exercise/age/age_exercise.dart';
import 'package:nalelu/widgets/suuji_exercise/counting.dart/counting_exercise.dart';
import 'package:nalelu/widgets/suuji_exercise/jikan_exercise/jikan_exercise.dart';
import 'package:nrs_flutter_lib/widgets/n_free_form_entry.dart';
import 'package:nrs_flutter_lib/widgets/n_text_span.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsScreen extends StatefulWidget {
  final ExerciseType exerciseType;

  SettingsScreen({required this.exerciseType});

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  int numberOfKanjiN5Exercises = 10;
  int numberOfKanjiN4Exercises = 10;
  int numberOfDoushiExercises = 10;
  int numberOfAgeExercises = 10;
  int numberOfCountingExercises = 10;
  int numberOfJikanExercises = 10;
  bool showKanjiN5Translation = true;
  bool showKanjiN4Translation = true;
  bool showVerbTranslation = true;
  bool showN5PhraseTranslation = true;
  bool showN4PhraseTranslation = true;
  bool showKanjiN5Furigana = true;
  bool showKanjiN4Furigana = true;
  bool showVerbFurigana = true;
  bool verbShuffle = false;
  bool mangaShuffle = false;
  bool kanjiN5Shuffle = false;
  bool kanjiN4Shuffle = false;

  Widget ageSettings() {
    return ListView(children: [
      ListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              NA.t('iwanttodo'),
              style: TextStyle(
                  fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize!),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButton<int>(
                value: numberOfAgeExercises,
                onChanged: (value) {
                  setState(() {
                    numberOfAgeExercises = value!;
                  });
                  saveSettings();
                },
                items: [
                  DropdownMenuItem<int>(
                    value: 10,
                    child: Text(
                      NA.t('10'),
                      style: TextStyle(
                          fontSize:
                              Theme.of(context).textTheme.bodyMedium!.fontSize!,
                          color: Theme.of(context).colorScheme.primary),
                    ),
                  ),
                  DropdownMenuItem<int>(
                    value: 25,
                    child: Text(
                      NA.t('25'),
                      style: TextStyle(
                          fontSize:
                              Theme.of(context).textTheme.bodyMedium!.fontSize!,
                          color: Theme.of(context).colorScheme.primary),
                    ),
                  ),
                ].toList(),
              ),
            ),
            Text(
              NA.t('exercises'),
              style: TextStyle(
                fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize!,
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 20),
      NAMenuButton(
        destination: AgeExercise(
          numberOfAgeExercises: numberOfAgeExercises - 1,
        ),
        label: NA.t('Start'),
        translabel: [FuriText(text: '始', furigana: 'はじ'), FuriText(text: 'める')],
      ),
    ]);
  }

  Widget allSettings(ExerciseType exerciseType) {
    Widget settings = ListView();
    switch (exerciseType) {
      case ExerciseType.Doushi:
        settings = doushiSettings();
        break;
      case ExerciseType.Count:
        settings = countingSettings();
        break;
      case ExerciseType.Age:
        settings = ageSettings();
        break;
      case ExerciseType.Jikan:
        settings = jikanSettings();
        break;
      case ExerciseType.Manga:
        settings = mangaSettings();
        break;
      case ExerciseType.Kanji_N5:
        settings = kanjiN5Settings();
        break;
      case ExerciseType.Kanji_N4:
        settings = kanjiN4Settings();
        break;
    }
    return settings;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(NA.t('settings')),
        ),
        body: allSettings(widget.exerciseType));
  }

  Widget mangaSettings() {
    return ListView(
      children: [
        ListTile(
          title: Text(
            NA.t('shuffle'),
            style: TextStyle(
                fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize!),
          ),
          trailing: Switch(
            value: mangaShuffle,
            onChanged: (bool value) {
              setState(() {
                mangaShuffle = value;
              });
              saveSettings();
            },
          ),
        ),
        SizedBox(height: 20),
        NAMenuButton(
          destination: MangaExercise(verbShuffle: mangaShuffle),
          label: NA.t('Start'),
          translabel: [
            FuriText(text: '始', furigana: 'はじ'),
            FuriText(text: 'める')
          ],
        ),
      ],
    );
  }

  Widget countingSettings() {
    return ListView(children: [
      ListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              NA.t('iwanttodo'),
              style: TextStyle(
                  fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize!),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButton<int>(
                value: numberOfCountingExercises,
                onChanged: (value) {
                  setState(() {
                    numberOfCountingExercises = value!;
                  });
                  saveSettings();
                },
                items: [
                  DropdownMenuItem<int>(
                    value: 10,
                    child: Text(
                      NA.t('10'),
                      style: TextStyle(
                          fontSize:
                              Theme.of(context).textTheme.bodyMedium!.fontSize!,
                          color: Theme.of(context).colorScheme.primary),
                    ),
                  ),
                  DropdownMenuItem<int>(
                    value: 25,
                    child: Text(
                      NA.t('25'),
                      style: TextStyle(
                          fontSize:
                              Theme.of(context).textTheme.bodyMedium!.fontSize!,
                          color: Theme.of(context).colorScheme.primary),
                    ),
                  ),
                ].toList(),
              ),
            ),
            Text(
              NA.t('exercises'),
              style: TextStyle(
                fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize!,
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 20),
      NAMenuButton(
        destination: CountingExercise(
          numberOfCountingExercises: numberOfCountingExercises - 1,
        ),
        label: NA.t('Start'),
        translabel: [FuriText(text: '始', furigana: 'はじ'), FuriText(text: 'める')],
      ),
    ]);
  }

  Widget doushiSettings() {
    return ListView(
      children: [
        ListTile(
          title: Text(
            NA.t('shuffle'),
            style: TextStyle(
                fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize!),
          ),
          trailing: Switch(
            value: verbShuffle,
            onChanged: (bool value) {
              setState(() {
                verbShuffle = value;
              });
              saveSettings();
            },
          ),
        ),
        Divider(
          height: 1.0,
          indent: 16.0,
          endIndent: 16.0,
          color: Colors.grey[300],
        ),
        ListTile(
          title: Text(
            NA.t('showVerb'),
            style: TextStyle(
                fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize!),
          ),
          trailing: Switch(
            value: showVerbTranslation,
            onChanged: (bool value) {
              setState(() {
                showVerbTranslation = value;
              });
              saveSettings();
            },
          ),
        ),
        Divider(
          height: 1.0,
          indent: 16.0,
          endIndent: 16.0,
          color: Colors.grey[300],
        ),
        ListTile(
          title: Text(
            NA.t('showfurigana'),
            style: TextStyle(
                fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize!),
          ),
          trailing: Switch(
            value: showVerbFurigana,
            onChanged: (bool value) {
              setState(() {
                showVerbFurigana = value;
              });
              saveSettings();
            },
          ),
        ),
        Column(
          children: [
            FuriganaText(
                showFurigana: showVerbFurigana,
                fontSize: Theme.of(context).textTheme.headlineSmall!.fontSize!,
                furiTexts: [
                  FuriText(text: '可愛', furigana: 'かわい', emphasize: true),
                  FuriText(text: 'がる', emphasize: true)
                ]),
            showVerbTranslation ? NTextSpan(NA.t('kawaigaru')) : Container(),
            NaFreeFormEntryWrapper(
              showMaxLength: false,
              readOnly: true,
              isAnswerCentered: true,
              widthType: NFreeFormWidths.full,
              labelText: NA.t('Present'),
              onChanged: (String newValue) {},
              initialValue: '',
              correctValues: ['かわいがる'],
              onCorrect: () {},
            ),
          ],
        ),
        ListTile(
          title: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    NA.t('iwanttodo'),
                    style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.bodyMedium!.fontSize!),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButton<int>(
                      value: numberOfDoushiExercises,
                      onChanged: (value) {
                        setState(() {
                          numberOfDoushiExercises = value!;
                        });
                        saveSettings();
                      },
                      items: [
                        DropdownMenuItem<int>(
                          value: 10,
                          child: Text(
                            NA.t('10'),
                            style: TextStyle(
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .fontSize!,
                                color: Theme.of(context).colorScheme.primary),
                          ),
                        ),
                        DropdownMenuItem<int>(
                          value: 25,
                          child: Text(
                            NA.t('25'),
                            style: TextStyle(
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .fontSize!,
                                color: Theme.of(context).colorScheme.primary),
                          ),
                        ),
                        DropdownMenuItem<int>(
                          value: 50,
                          child: Text(
                            NA.t('50'),
                            style: TextStyle(
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .fontSize!,
                                color: Theme.of(context).colorScheme.primary),
                          ),
                        ),
                        DropdownMenuItem<int>(
                          value: 9999,
                          child: Text(
                            NA.t('all'),
                            style: TextStyle(
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .fontSize!,
                                color: Theme.of(context).colorScheme.primary),
                          ),
                        ),
                      ].toList(),
                    ),
                  ),
                  Text(
                    NA.t('exercises'),
                    style: TextStyle(
                      fontSize:
                          Theme.of(context).textTheme.bodyMedium!.fontSize!,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        NAMenuButton(
          destination: DoushiExerciseLevel1(
              showVerbFurigana: showVerbFurigana,
              showVerbTranslations: showVerbTranslation,
              numberOfDoushiExercises: numberOfDoushiExercises - 1,
              verbShuffle: verbShuffle),
          label: NA.t('Start'),
          translabel: [
            FuriText(text: '始', furigana: 'はじ'),
            FuriText(text: 'める')
          ],
        ),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    loadSettings();
  }

  Widget jikanSettings() {
    return ListView(children: [
      ListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              NA.t('iwanttodo'),
              style: TextStyle(
                  fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize!),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButton<int>(
                value: numberOfJikanExercises,
                onChanged: (value) {
                  setState(() {
                    numberOfJikanExercises = value!;
                  });
                  saveSettings();
                },
                items: [
                  DropdownMenuItem<int>(
                    value: 10,
                    child: Text(
                      NA.t('10'),
                      style: TextStyle(
                          fontSize:
                              Theme.of(context).textTheme.bodyMedium!.fontSize!,
                          color: Theme.of(context).colorScheme.primary),
                    ),
                  ),
                  DropdownMenuItem<int>(
                    value: 25,
                    child: Text(
                      NA.t('25'),
                      style: TextStyle(
                          fontSize:
                              Theme.of(context).textTheme.bodyMedium!.fontSize!,
                          color: Theme.of(context).colorScheme.primary),
                    ),
                  ),
                ].toList(),
              ),
            ),
            Text(
              NA.t('exercises'),
              style: TextStyle(
                fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize!,
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 20),
      NAMenuButton(
        destination: JikanExercise(
          numberOfJikanExercises: numberOfJikanExercises - 1,
        ),
        label: NA.t('Start'),
        translabel: [FuriText(text: '始', furigana: 'はじ'), FuriText(text: 'める')],
      ),
    ]);
  }

  Widget kanjiN4Settings() {
    return ListView(
      children: [
        ListTile(
          title: Text(
            NA.t('shuffle'),
            style: TextStyle(
                fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize!),
          ),
          trailing: Switch(
            value: kanjiN4Shuffle,
            onChanged: (bool value) {
              setState(() {
                kanjiN4Shuffle = value;
              });
              saveSettings();
            },
          ),
        ),
        Divider(
          height: 1.0,
          indent: 16.0,
          endIndent: 16.0,
          color: Colors.grey[300],
        ),
        ListTile(
          title: Text(
            NA.t('showkanji'),
            style: TextStyle(
                fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize!),
          ),
          trailing: Switch(
            value: showKanjiN4Translation,
            onChanged: (bool value) {
              setState(() {
                showKanjiN4Translation = value;
              });
              saveSettings();
            },
          ),
        ),
        Divider(
          height: 1.0,
          indent: 16.0,
          endIndent: 16.0,
          color: Colors.grey[300],
        ),
        ListTile(
          title: Text(
            NA.t('showphrase'),
            style: TextStyle(
                fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize!),
          ),
          trailing: Switch(
            value: showN4PhraseTranslation,
            onChanged: (bool value) {
              setState(() {
                showN4PhraseTranslation = value;
              });
              saveSettings();
            },
          ),
        ),
        Divider(
          height: 1.0,
          indent: 16.0,
          endIndent: 16.0,
          color: Colors.grey[300],
        ),
        ListTile(
          title: Text(
            NA.t('showfurigana'),
            style: TextStyle(
                fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize!),
          ),
          trailing: Switch(
            value: showKanjiN4Furigana,
            onChanged: (bool value) {
              setState(() {
                showKanjiN4Furigana = value;
              });
              saveSettings();
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 14),
                child: NAKanjiBlock(
                  kanji: '石',
                ),
              ),
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 210),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Wrap(children: [
                      showKanjiN4Translation
                          ? Text('Stone, Rock',
                              style: TextStyle(fontWeight: FontWeight.bold))
                          : Container()
                    ]),
                    Text('Kun yomi'),
                    Wrap(
                      children: [Text('いし')],
                    ),
                    Text('On yomi'),
                    Wrap(
                      children: [Text('セキ、シャク、コク')],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 4),
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 300),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Wrap(children: [
                  FuriganaText(
                    showFurigana: showKanjiN4Furigana,
                    furiTexts: [
                      FuriText(text: '彼', furigana: 'かれ'),
                      FuriText(text: 'は'),
                      FuriText(text: '石', furigana: '？', emphasize: true),
                      FuriText(text: 'を'),
                      FuriText(text: '投', furigana: 'な'),
                      FuriText(text: 'げた'),
                    ],
                  ),
                ]),
                Wrap(children: [
                  showN4PhraseTranslation
                      ? Text(
                          NA.t('karehaishiotageta'),
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .fontSize),
                        )
                      : Container()
                ]),
                NaFreeFormEntryWrapper(
                  showMaxLength: false,
                  readOnly: true,
                  isAnswerCentered: true,
                  widthType: NFreeFormWidths.full,
                  labelText: NA.t('kanjiToHiragana'),
                  onChanged: (String newValue) {},
                  initialValue: '',
                  correctValues: ['いし'],
                  onCorrect: () {},
                ),
              ]),
        ),
        ListTile(
          title: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    NA.t('iwanttodo'),
                    style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.bodyMedium!.fontSize!),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButton<int>(
                      value: numberOfKanjiN4Exercises,
                      onChanged: (value) {
                        setState(() {
                          numberOfKanjiN4Exercises = value!;
                        });
                        saveSettings();
                      },
                      items: [
                        DropdownMenuItem<int>(
                          value: 10,
                          child: Text(
                            NA.t('10'),
                            style: TextStyle(
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .fontSize!,
                                color: Theme.of(context).colorScheme.primary),
                          ),
                        ),
                        DropdownMenuItem<int>(
                          value: 25,
                          child: Text(
                            NA.t('25'),
                            style: TextStyle(
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .fontSize!,
                                color: Theme.of(context).colorScheme.primary),
                          ),
                        ),
                        // DropdownMenuItem<int>(
                        //   value: 50,
                        //   child: Text(
                        //     NA.t('50'),
                        //     style: TextStyle(
                        //         fontSize: Theme.of(context)
                        //             .textTheme
                        //             .bodyMedium!
                        //             .fontSize!,
                        //         color: Theme.of(context).colorScheme.primary),
                        //   ),
                        // ),
                        DropdownMenuItem<int>(
                          value: 9999,
                          child: Text(
                            NA.t('all'),
                            style: TextStyle(
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .fontSize!,
                                color: Theme.of(context).colorScheme.primary),
                          ),
                        ),
                      ].toList(),
                    ),
                  ),
                  Text(
                    NA.t('exercises'),
                    style: TextStyle(
                      fontSize:
                          Theme.of(context).textTheme.bodyMedium!.fontSize!,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        NAMenuButton(
          destination: KanjiExercise(
              showFurigana: showKanjiN4Furigana,
              showKanjiTranslations: showKanjiN4Translation,
              showPhraseTranslations: showN4PhraseTranslation,
              numberOfExercises: numberOfKanjiN4Exercises - 1,
              shuffle: kanjiN4Shuffle,
              exerciseType: widget.exerciseType),
          label: NA.t('Start'),
          translabel: [
            FuriText(text: '始', furigana: 'はじ'),
            FuriText(text: 'める')
          ],
        ),
      ],
    );
  }

  Widget kanjiN5Settings() {
    return ListView(
      children: [
        ListTile(
          title: Text(
            NA.t('shuffle'),
            style: TextStyle(
                fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize!),
          ),
          trailing: Switch(
            value: kanjiN5Shuffle,
            onChanged: (bool value) {
              setState(() {
                kanjiN5Shuffle = value;
              });
              saveSettings();
            },
          ),
        ),
        Divider(
          height: 1.0,
          indent: 16.0,
          endIndent: 16.0,
          color: Colors.grey[300],
        ),
        ListTile(
          title: Text(
            NA.t('showkanji'),
            style: TextStyle(
                fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize!),
          ),
          trailing: Switch(
            value: showKanjiN5Translation,
            onChanged: (bool value) {
              setState(() {
                showKanjiN5Translation = value;
              });
              saveSettings();
            },
          ),
        ),
        Divider(
          height: 1.0,
          indent: 16.0,
          endIndent: 16.0,
          color: Colors.grey[300],
        ),
        ListTile(
          title: Text(
            NA.t('showphrase'),
            style: TextStyle(
                fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize!),
          ),
          trailing: Switch(
            value: showN5PhraseTranslation,
            onChanged: (bool value) {
              setState(() {
                showN5PhraseTranslation = value;
              });
              saveSettings();
            },
          ),
        ),
        Divider(
          height: 1.0,
          indent: 16.0,
          endIndent: 16.0,
          color: Colors.grey[300],
        ),
        ListTile(
          title: Text(
            NA.t('showfurigana'),
            style: TextStyle(
                fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize!),
          ),
          trailing: Switch(
            value: showKanjiN5Furigana,
            onChanged: (bool value) {
              setState(() {
                showKanjiN5Furigana = value;
              });
              saveSettings();
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 14),
                child: NAKanjiBlock(
                  kanji: '石',
                ),
              ),
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 210),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Wrap(children: [
                      showKanjiN5Translation
                          ? Text('Stone, Rock',
                              style: TextStyle(fontWeight: FontWeight.bold))
                          : Container()
                    ]),
                    Text('Kun yomi'),
                    Wrap(
                      children: [Text('いし')],
                    ),
                    Text('On yomi'),
                    Wrap(
                      children: [Text('セキ、シャク、コク')],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 4),
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 300),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Wrap(children: [
                  FuriganaText(
                    showFurigana: showKanjiN5Furigana,
                    furiTexts: [
                      FuriText(text: '彼', furigana: 'かれ'),
                      FuriText(text: 'は'),
                      FuriText(text: '石', furigana: '？', emphasize: true),
                      FuriText(text: 'を'),
                      FuriText(text: '投', furigana: 'な'),
                      FuriText(text: 'げた'),
                    ],
                  ),
                ]),
                Wrap(children: [
                  showN5PhraseTranslation
                      ? Text(
                          NA.t('karehaishiotageta'),
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .fontSize),
                        )
                      : Container()
                ]),
                NaFreeFormEntryWrapper(
                  showMaxLength: false,
                  readOnly: true,
                  isAnswerCentered: true,
                  widthType: NFreeFormWidths.full,
                  labelText: NA.t('kanjiToHiragana'),
                  onChanged: (String newValue) {},
                  initialValue: '',
                  correctValues: ['いし'],
                  onCorrect: () {},
                ),
              ]),
        ),
        ListTile(
          title: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    NA.t('iwanttodo'),
                    style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.bodyMedium!.fontSize!),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButton<int>(
                      value: numberOfKanjiN5Exercises,
                      onChanged: (value) {
                        setState(() {
                          numberOfKanjiN5Exercises = value!;
                        });
                        saveSettings();
                      },
                      items: [
                        DropdownMenuItem<int>(
                          value: 10,
                          child: Text(
                            NA.t('10'),
                            style: TextStyle(
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .fontSize!,
                                color: Theme.of(context).colorScheme.primary),
                          ),
                        ),
                        DropdownMenuItem<int>(
                          value: 25,
                          child: Text(
                            NA.t('25'),
                            style: TextStyle(
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .fontSize!,
                                color: Theme.of(context).colorScheme.primary),
                          ),
                        ),
                        DropdownMenuItem<int>(
                          value: 50,
                          child: Text(
                            NA.t('50'),
                            style: TextStyle(
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .fontSize!,
                                color: Theme.of(context).colorScheme.primary),
                          ),
                        ),
                        DropdownMenuItem<int>(
                          value: 9999,
                          child: Text(
                            NA.t('all'),
                            style: TextStyle(
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .fontSize!,
                                color: Theme.of(context).colorScheme.primary),
                          ),
                        ),
                      ].toList(),
                    ),
                  ),
                  Text(
                    NA.t('exercises'),
                    style: TextStyle(
                      fontSize:
                          Theme.of(context).textTheme.bodyMedium!.fontSize!,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        NAMenuButton(
          destination: KanjiExercise(
              showFurigana: showKanjiN5Furigana,
              showKanjiTranslations: showKanjiN5Translation,
              showPhraseTranslations: showN5PhraseTranslation,
              numberOfExercises: numberOfKanjiN5Exercises - 1,
              shuffle: kanjiN5Shuffle,
              exerciseType: widget.exerciseType),
          label: NA.t('Start'),
          translabel: [
            FuriText(text: '始', furigana: 'はじ'),
            FuriText(text: 'める')
          ],
        ),
      ],
    );
  }

  void loadSettings() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      numberOfKanjiN5Exercises = prefs.getInt('numberOfKanjiN5Exercises') ?? 10;
      numberOfKanjiN4Exercises = prefs.getInt('numberOfKanjiN4Exercises') ?? 10;
      numberOfDoushiExercises = prefs.getInt('numberOfDoushiExercises') ?? 10;
      numberOfAgeExercises = prefs.getInt('numberOfAgeExercises') ?? 10;
      numberOfCountingExercises =
          prefs.getInt('numberOfCountingExercises') ?? 10;
      numberOfJikanExercises = prefs.getInt('numberOfJikanExercises') ?? 10;
      showKanjiN5Translation = prefs.getBool('showKanjiN5Translation') ?? true;
      showKanjiN4Translation = prefs.getBool('showKanjiN4Translation') ?? true;
      showVerbTranslation = prefs.getBool('showVerbTranslation') ?? true;
      showN5PhraseTranslation =
          prefs.getBool('showN5PhraseTranslation') ?? true;
      showN4PhraseTranslation =
          prefs.getBool('showN4PhraseTranslation') ?? true;
      showKanjiN5Furigana = prefs.getBool('showKanjiN5Furigana') ?? true;
      showKanjiN4Furigana = prefs.getBool('showKanjiN4Furigana') ?? true;
      showVerbFurigana = prefs.getBool('showVerbFurigana') ?? true;
      verbShuffle = prefs.getBool('verbShuffle') ?? false;
      mangaShuffle = prefs.getBool('mangaShuffle') ?? false;
      kanjiN5Shuffle = prefs.getBool('kanjiN5Shuffle') ?? false;
      kanjiN4Shuffle = prefs.getBool('kanjiN4Shuffle') ?? false;
    });
  }

  void saveSettings() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('numberOfKanjiN5Exercises', numberOfKanjiN5Exercises);
    await prefs.setInt('numberOfKanjiN4Exercises', numberOfKanjiN4Exercises);
    await prefs.setInt('numberOfDoushiExercises', numberOfDoushiExercises);
    await prefs.setInt('numberOfAgeExercises', numberOfAgeExercises);
    await prefs.setInt('numberOfCountingExercises', numberOfCountingExercises);
    await prefs.setInt('numberOfJikanExercises', numberOfJikanExercises);
    await prefs.setBool('showKanjiN5Translation', showKanjiN5Translation);
    await prefs.setBool('showKanjiN4Translation', showKanjiN4Translation);
    await prefs.setBool('showVerbTranslation', showVerbTranslation);
    await prefs.setBool('showN5PhraseTranslation', showN5PhraseTranslation);
    await prefs.setBool('showN4PhraseTranslation', showN4PhraseTranslation);
    await prefs.setBool('showKanjiN5Furigana', showKanjiN5Furigana);
    await prefs.setBool('showKanjiN4Furigana', showKanjiN4Furigana);
    await prefs.setBool('showVerbFurigana', showVerbFurigana);
    await prefs.setBool('verbShuffle', verbShuffle);
    await prefs.setBool('mangaShuffle', mangaShuffle);
    await prefs.setBool('kanjiN5Shuffle', kanjiN5Shuffle);
    await prefs.setBool('kanjiN4Shuffle', kanjiN4Shuffle);
  }
}
