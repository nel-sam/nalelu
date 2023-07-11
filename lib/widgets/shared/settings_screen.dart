import 'package:flutter/material.dart';
import 'package:nalelu/furi_text.dart';
import 'package:nalelu/lang_data/N4.dart';
import 'package:nalelu/lang_data/N5.dart';
import 'package:nalelu/lang_data/doushi.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/state/enums.dart';
import 'package:nalelu/widgets/doushi_exercise/doushi_exercise_1.dart';
import 'package:nalelu/widgets/kanji.dart';
import 'package:nalelu/widgets/kanji_exercise/kanji_exercise.dart';
import 'package:nalelu/widgets/manga_exercise/manga_exercise.dart';
import 'package:nalelu/widgets/shared/na_menu_button.dart';
import 'package:nalelu/widgets/suuji_exercise/age/age_exercise.dart';
import 'package:nalelu/widgets/suuji_exercise/counting.dart/counting_exercise.dart';
import 'package:nalelu/widgets/suuji_exercise/jikan_exercise/jikan_exercise.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsScreen extends StatefulWidget {
  final ExerciseType exerciseType;

  SettingsScreen({required this.exerciseType});

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  int numberOfAgeExercises = 10;
  int numberOfCountingExercises = 10;
  int numberOfJikanExercises = 10;
  bool selectAll = false;
  bool verbShuffle = false;
  bool mangaShuffle = false;
  bool kanjiN5Shuffle = false;
  bool kanjiN4Shuffle = false;
  List<Kanji> selectedN5Kanjis = [];
  List<Kanji> selectedN4Kanjis = [];
  List<Doushi> selectedVerbs = [];

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
          title: Text(NA.t(widget.exerciseType.name.toString().toLowerCase()) +
              ' ' +
              NA.t('settings')),
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
    bool hasSelectedIItems = selectedVerbs.length == 1;
    if (selectedVerbs.isEmpty) {
      selectedVerbs.add(doushiBank.first);
    }
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Tooltip(
                    message: NA.t('selectall'),
                    child: Icon(
                      Icons.select_all,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  Switch(
                      value: selectAll,
                      onChanged: (value) {
                        setState(() {
                          selectAll = value;
                          if (selectAll) {
                            selectedVerbs = List<Doushi>.from(doushiBank);
                          } else {
                            selectedVerbs.clear();
                            selectedVerbs.add(doushiBank.first);
                          }
                          saveSettings();
                        });
                      })
                ],
              ),
              Row(
                children: [
                  Tooltip(
                    message: NA.t('shuffle'),
                    child: Icon(
                      Icons.shuffle,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  Switch(
                      value: verbShuffle,
                      onChanged: (value) {
                        setState(() {
                          verbShuffle = value;
                          if (verbShuffle) {
                            selectedVerbs.shuffle();
                          }
                          saveSettings();
                        });
                      })
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              childAspectRatio: 1,
            ),
            itemCount: doushiBank.length,
            itemBuilder: (BuildContext context, int index) {
              final item = doushiBank[index];
              bool isSelected = selectedVerbs.contains(item);
              return GestureDetector(
                onTap: () {
                  setState(() {
                    if (isSelected) {
                      if (!hasSelectedIItems) selectedVerbs.remove(item);
                    } else {
                      selectedVerbs.add(item);
                    }
                  });
                },
                child: Container(
                  margin: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: isSelected
                        ? Theme.of(context).colorScheme.primary
                        : null,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      item.infinitive,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 20),
        NAMenuButton(
          destination: DoushiExerciseLevel1(
              selectedVerbs: selectedVerbs, verbShuffle: verbShuffle),
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
    bool hasSelectedIItems = selectedN4Kanjis.length == 1;
    if (selectedN4Kanjis.isEmpty) {
      selectedN4Kanjis.add(kanjiN4Bank.first);
    }
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Tooltip(
                    message: NA.t('selectall'),
                    child: Icon(
                      Icons.select_all,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  Switch(
                      value: selectAll,
                      onChanged: (value) {
                        setState(() {
                          selectAll = value;
                          if (selectAll) {
                            selectedN4Kanjis = List<Kanji>.from(kanjiN4Bank);
                          } else {
                            selectedN4Kanjis.clear();
                            selectedN4Kanjis.add(kanjiN4Bank.first);
                          }
                          saveSettings();
                        });
                      })
                ],
              ),
              Row(
                children: [
                  Tooltip(
                    message: NA.t('shuffle'),
                    child: Icon(
                      Icons.shuffle,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  Switch(
                      value: kanjiN4Shuffle,
                      onChanged: (value) {
                        setState(() {
                          kanjiN4Shuffle = value;
                          if (kanjiN4Shuffle) {
                            selectedN4Kanjis.shuffle();
                          }
                          saveSettings();
                        });
                      })
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 6,
              childAspectRatio: 1,
            ),
            itemCount: kanjiN4Bank.length,
            itemBuilder: (BuildContext context, int index) {
              final item = kanjiN4Bank[index];
              bool isSelected = selectedN4Kanjis.contains(item);
              return GestureDetector(
                onTap: () {
                  setState(() {
                    if (isSelected) {
                      if (!hasSelectedIItems) selectedN4Kanjis.remove(item);
                    } else {
                      selectedN4Kanjis.add(item);
                    }
                  });
                },
                child: Container(
                  margin: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: isSelected
                        ? Theme.of(context).colorScheme.primary
                        : null,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      item.kanji,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 20),
        NAMenuButton(
          destination: KanjiExercise(
              selectedKanjis: selectedN4Kanjis,
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
    bool hasSelectedIItems = selectedN5Kanjis.length == 1;
    if (selectedN5Kanjis.isEmpty) {
      selectedN5Kanjis.add(kanjiN5Bank.first);
    }
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Tooltip(
                    message: NA.t('selectall'),
                    child: Icon(
                      Icons.select_all,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  Switch(
                      value: selectAll,
                      onChanged: (value) {
                        setState(() {
                          selectAll = value;
                          if (selectAll) {
                            selectedN5Kanjis = List<Kanji>.from(kanjiN5Bank);
                          } else {
                            selectedN5Kanjis.clear();
                            selectedN5Kanjis.add(kanjiN5Bank.first);
                          }
                          saveSettings();
                        });
                      })
                ],
              ),
              Row(
                children: [
                  Tooltip(
                    message: NA.t('shuffle'),
                    child: Icon(
                      Icons.shuffle,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  Switch(
                      value: kanjiN5Shuffle,
                      onChanged: (value) {
                        setState(() {
                          kanjiN5Shuffle = value;
                          if (kanjiN5Shuffle) {
                            selectedN5Kanjis.shuffle();
                          }
                          saveSettings();
                        });
                      })
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 6,
              childAspectRatio: 1,
            ),
            itemCount: kanjiN5Bank.length,
            itemBuilder: (BuildContext context, int index) {
              final item = kanjiN5Bank[index];
              bool isSelected = selectedN5Kanjis.contains(item);
              return GestureDetector(
                onTap: () {
                  setState(() {
                    if (isSelected) {
                      if (!hasSelectedIItems) selectedN5Kanjis.remove(item);
                    } else {
                      selectedN5Kanjis.add(item);
                    }
                  });
                },
                child: Container(
                  margin: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: isSelected
                        ? Theme.of(context).colorScheme.primary
                        : null,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      item.kanji,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 20),
        NAMenuButton(
          destination: KanjiExercise(
              selectedKanjis: selectedN5Kanjis,
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
      numberOfAgeExercises = prefs.getInt('numberOfAgeExercises') ?? 10;
      numberOfCountingExercises =
          prefs.getInt('numberOfCountingExercises') ?? 10;
      numberOfJikanExercises = prefs.getInt('numberOfJikanExercises') ?? 10;
      // selectAll = prefs.getBool('selectAll') ?? false;
      verbShuffle = prefs.getBool('verbShuffle') ?? false;
      mangaShuffle = prefs.getBool('mangaShuffle') ?? false;
      kanjiN5Shuffle = prefs.getBool('kanjiN5Shuffle') ?? false;
      kanjiN4Shuffle = prefs.getBool('kanjiN4Shuffle') ?? false;
    });
  }

  void saveSettings() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('numberOfAgeExercises', numberOfAgeExercises);
    await prefs.setInt('numberOfCountingExercises', numberOfCountingExercises);
    await prefs.setInt('numberOfJikanExercises', numberOfJikanExercises);
    // await prefs.setBool('selectAll', selectAll);
    await prefs.setBool('verbShuffle', verbShuffle);
    await prefs.setBool('mangaShuffle', mangaShuffle);
    await prefs.setBool('kanjiN5Shuffle', kanjiN5Shuffle);
    await prefs.setBool('kanjiN4Shuffle', kanjiN4Shuffle);
  }
}
