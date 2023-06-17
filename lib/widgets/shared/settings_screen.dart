import 'package:flutter/material.dart';
import 'package:nalelu/furi_text.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/state/enums.dart';
import 'package:nalelu/widgets/doushi_exercise/doushi_exercise_1.dart';
import 'package:nalelu/widgets/kanji_exercise/kanji_exercise.dart';
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
  int numberOfKanjiExercises = 10;
  int numberOfDoushiExercises = 10;
  int numberOfAgeExercises = 10;
  int numberOfCountingExercises = 10;
  int numberOfJikanExercises = 10;
  bool showKanjiTranslation = true;
  bool showVerbTranslation = true;
  bool showPhraseTranslation = true;
  bool showKanjiFurigana = true;
  bool showVerbFurigana = true;

  Widget ageSettings() {
    return ListView(children: [
      ListTile(
        subtitle: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(NA.t('iwanttodo')),
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
                        child: Text('10'),
                      ),
                      DropdownMenuItem<int>(value: 25, child: Text('25')),
                    ].toList(),
                  ),
                ),
                Text(NA.t('exercises')),
              ],
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
        // TODO: Handle this case.
        break;
      case ExerciseType.Kanji:
        settings = kanjiSettings();
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

  Widget countingSettings() {
    return ListView(children: [
      ListTile(
        subtitle: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(NA.t('iwanttodo')),
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
                        child: Text('10'),
                      ),
                      DropdownMenuItem<int>(value: 25, child: Text('25')),
                    ].toList(),
                  ),
                ),
                Text(NA.t('exercises')),
              ],
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
          subtitle: Text(NA.t('showVerb')),
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
        ListTile(
          subtitle: Text(NA.t('showfurigana')),
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
          subtitle: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(NA.t('iwanttodo')),
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
                          child: Text('10'),
                        ),
                        DropdownMenuItem<int>(value: 25, child: Text('25')),
                        DropdownMenuItem<int>(value: 50, child: Text('50')),
                        DropdownMenuItem<int>(value: 100, child: Text('100')),
                      ].toList(),
                    ),
                  ),
                  Text(NA.t('exercises')),
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
          ),
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
        subtitle: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(NA.t('iwanttodo')),
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
                        child: Text('10'),
                      ),
                      DropdownMenuItem<int>(value: 25, child: Text('25')),
                    ].toList(),
                  ),
                ),
                Text(NA.t('exercises')),
              ],
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

  Widget kanjiSettings() {
    return ListView(
      children: [
        ListTile(
          subtitle: Text(NA.t('showkanji')),
          trailing: Switch(
            value: showKanjiTranslation,
            onChanged: (bool value) {
              setState(() {
                showKanjiTranslation = value;
              });
              saveSettings();
            },
          ),
        ),
        ListTile(
          subtitle: Text(NA.t('showphrase')),
          trailing: Switch(
            value: showPhraseTranslation,
            onChanged: (bool value) {
              setState(() {
                showPhraseTranslation = value;
              });
              saveSettings();
            },
          ),
        ),
        ListTile(
          subtitle: Text(NA.t('showfurigana')),
          trailing: Switch(
            value: showKanjiFurigana,
            onChanged: (bool value) {
              setState(() {
                showKanjiFurigana = value;
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
                      showKanjiTranslation
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
        SizedBox(height: 30),
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 300),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Wrap(children: [
                  FuriganaText(
                    showFurigana: showKanjiFurigana,
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
                  showPhraseTranslation
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
          subtitle: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(NA.t('iwanttodo')),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButton<int>(
                      value: numberOfKanjiExercises,
                      onChanged: (value) {
                        setState(() {
                          numberOfKanjiExercises = value!;
                        });
                        saveSettings();
                      },
                      items: [
                        DropdownMenuItem<int>(
                          value: 10,
                          child: Text('10'),
                        ),
                        DropdownMenuItem<int>(value: 25, child: Text('25')),
                        DropdownMenuItem<int>(value: 50, child: Text('50')),
                        DropdownMenuItem<int>(value: 100, child: Text('100')),
                      ].toList(),
                    ),
                  ),
                  Text(NA.t('exercises')),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        NAMenuButton(
          destination: KanjiExercise(
            showFurigana: showKanjiFurigana,
            showKanjiTranslations: showKanjiTranslation,
            showPhraseTranslations: showPhraseTranslation,
            numberOfExercises: numberOfKanjiExercises - 1,
          ),
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
      numberOfKanjiExercises = prefs.getInt('numberOfKanjiExercises') ?? 10;
      numberOfDoushiExercises = prefs.getInt('numberOfDoushiExercises') ?? 10;
      numberOfAgeExercises = prefs.getInt('numberOfAgeExercises') ?? 10;
      numberOfCountingExercises =
          prefs.getInt('numberOfCountingExercises') ?? 10;
      numberOfJikanExercises = prefs.getInt('numberOfJikanExercises') ?? 10;
      showKanjiTranslation = prefs.getBool('showKanjiTranslation') ?? true;
      showVerbTranslation = prefs.getBool('showVerbTranslation') ?? true;
      showPhraseTranslation = prefs.getBool('showPhraseTranslation') ?? true;
      showKanjiFurigana = prefs.getBool('showKanjiFurigana') ?? true;
      showVerbFurigana = prefs.getBool('showVerbFurigana') ?? true;
    });
  }

  void saveSettings() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('numberOfKanjiExercises', numberOfKanjiExercises);
    await prefs.setInt('numberOfDoushiExercises', numberOfDoushiExercises);
    await prefs.setInt('numberOfAgeExercises', numberOfAgeExercises);
    await prefs.setInt('numberOfCountingExercises', numberOfCountingExercises);
    await prefs.setInt('numberOfJikanExercises', numberOfJikanExercises);
    await prefs.setBool('showKanjiTranslation', showKanjiTranslation);
    await prefs.setBool('showVerbTranslation', showVerbTranslation);
    await prefs.setBool('showPhraseTranslation', showPhraseTranslation);
    await prefs.setBool('showKanjiFurigana', showKanjiFurigana);
    await prefs.setBool('showVerbFurigana', showVerbFurigana);
  }
}
