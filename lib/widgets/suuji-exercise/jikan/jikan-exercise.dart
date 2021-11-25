import 'package:flutter/material.dart';
import 'package:nareru/hd-helpers.dart';
import 'package:nareru/state/models/jikan-exercise-state.dart';
import 'package:nareru/widgets/shared/info-button.dart';
import 'package:nareru/widgets/suuji-exercise/jikan/clock.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class JikanExercise extends StatefulWidget {
  final JikanExerciseState jikanExerciseState;
  final Function(JikanExerciseState, String) onUserHourSet;
  final Function(JikanExerciseState, String) onUserMinSet;
  final Function(JikanExerciseState, String) onUserSecSet;

  const JikanExercise({
    Key? key,
    required this.jikanExerciseState,
    required this.onUserHourSet,
    required this.onUserMinSet,
    required this.onUserSecSet,
  }) : super(key: key);

  @override
  _JikanExerciseState createState() => _JikanExerciseState();
}

class _JikanExerciseState extends State<JikanExercise> {
  final double textFieldWidth = 70;
  bool showInfo = false;

  @override
  Widget build(BuildContext context) {
    var s = widget.jikanExerciseState;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Clock(
            hour: s.hour,
            minute: s.min,
            second: s.sec,
            hourState: s.hourState,
            minuteState: s.minuteState,
            secondState: s.secondState,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Text(AppLocalizations.of(context)!.typeTheTime),
              ),
              InfoButton(
                onPressed: () {
                  setState(() {
                    showInfo = !showInfo;
                  });
                },
              ),
            ],
          ),
          if (showInfo) Text(AppLocalizations.of(context)!.timeDesc),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Container(
                        width: textFieldWidth,
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.fromLTRB(4, 18, 0, 1),
                            enabledBorder: HD.getTextFieldBorder(
                                widget.jikanExerciseState.correctHour,
                                widget.jikanExerciseState.userHour),
                            focusedBorder: HD.getTextFieldBorder(
                                widget.jikanExerciseState.correctHour,
                                widget.jikanExerciseState.userHour),
                          ),
                          onChanged: (String? newVal) {
                            if (newVal != null) {
                              setState(() {
                                widget.onUserHourSet(
                                    widget.jikanExerciseState, newVal);
                              });
                            }
                          },
                          onTap: () {
                            setState(() {
                              widget.jikanExerciseState.hourState = false;
                              widget.jikanExerciseState.minuteState = true;
                              widget.jikanExerciseState.secondState = true;
                            });
                          },
                        )),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                        width: textFieldWidth,
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.fromLTRB(4, 18, 0, 1),
                            enabledBorder: HD.getTextFieldBorder(
                                widget.jikanExerciseState.correctMin,
                                widget.jikanExerciseState.userMin),
                            focusedBorder: HD.getTextFieldBorder(
                                widget.jikanExerciseState.correctMin,
                                widget.jikanExerciseState.userMin),
                          ),
                          onChanged: (String? newVal) {
                            if (newVal != null) {
                              setState(() {
                                widget.onUserMinSet(
                                    widget.jikanExerciseState, newVal);
                              });
                            }
                          },
                          onTap: () {
                            setState(() {
                              widget.jikanExerciseState.hourState = true;
                              widget.jikanExerciseState.minuteState = false;
                              widget.jikanExerciseState.secondState = true;
                            });
                          },
                        )),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                        width: textFieldWidth,
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.fromLTRB(4, 18, 0, 1),
                            enabledBorder: HD.getTextFieldBorder(
                                widget.jikanExerciseState.correctSec,
                                widget.jikanExerciseState.userSec),
                            focusedBorder: HD.getTextFieldBorder(
                                widget.jikanExerciseState.correctSec,
                                widget.jikanExerciseState.userSec),
                          ),
                          onChanged: (String? newVal) {
                            if (newVal != null) {
                              setState(() {
                                widget.onUserSecSet(
                                    widget.jikanExerciseState, newVal);
                              });
                            }
                          },
                          onTap: () {
                            setState(() {
                              widget.jikanExerciseState.hourState = true;
                              widget.jikanExerciseState.minuteState = true;
                              widget.jikanExerciseState.secondState = false;
                            });
                          },
                        )),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
