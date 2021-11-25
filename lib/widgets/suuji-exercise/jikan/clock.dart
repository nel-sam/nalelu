import 'package:flutter/material.dart';
import 'package:nareru/constants.dart';

class Clock extends StatelessWidget {
  final String hour;
  final String minute;
  final String second;
  final bool hourState;
  final bool minuteState;
  final bool secondState;

  const Clock({
    Key? key,
    required this.hour,
    required this.minute,
    required this.second,
    required this.hourState,
    required this.minuteState,
    required this.secondState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 10),
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(hour,
              style: hourState
                  ? TextStyle(fontSize: 65, color: ACCENT_COLOR)
                  : TextStyle(fontSize: 70, color: Colors.purple)),
          Text(
            ':',
            style: TextStyle(fontSize: 65, color: ACCENT_COLOR),
          ),
          Text(minute,
              style: minuteState
                  ? TextStyle(fontSize: 65, color: ACCENT_COLOR)
                  : TextStyle(fontSize: 70, color: Colors.purple)),
          Text(
            ':',
            style: TextStyle(fontSize: 64, color: ACCENT_COLOR),
          ),
          Text(second,
              style: secondState
                  ? TextStyle(fontSize: 65, color: ACCENT_COLOR)
                  : TextStyle(fontSize: 70, color: Colors.purple)),
        ],
      ),
    );
  }
}
