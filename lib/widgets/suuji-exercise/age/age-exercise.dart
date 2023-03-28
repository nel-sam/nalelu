import 'package:flutter/material.dart';
import 'package:nareru/hd-helpers.dart';
import 'package:nareru/state/models/age-exercise-state.dart';

class AgeExercise extends StatefulWidget {
  final AgeExerciseState state;
  final Function onAgeSet;

  const AgeExercise({
    Key? key,
    required this.state,
    required this.onAgeSet,
  }) : super(key: key);

  @override
  _AgeExerciseState createState() => _AgeExerciseState();
}

class _AgeExerciseState extends State<AgeExercise> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('なんさいですか?', style: TextStyle(fontSize: 20)),
            Text('${widget.state.age}${widget.state.counter}',
                style: TextStyle(fontSize: 24)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 350,
                  child: TextField(
                    autofocus: true,
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.fromLTRB(4, 18, 0, 1),
                      enabledBorder: HD.getTextFieldBorder(
                          widget.state.correctAnswer, widget.state.userInput),
                      focusedBorder: HD.getTextFieldBorder(
                          widget.state.correctAnswer, widget.state.userInput),
                    ),
                    onChanged: (String? newVal) {
                      if (newVal != null) {
                        setState(() {
                          widget.onAgeSet(widget.state, newVal);
                        });
                      }
                    },
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
