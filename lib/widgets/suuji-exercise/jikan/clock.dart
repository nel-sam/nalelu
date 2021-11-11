import 'package:flutter/material.dart';
import 'package:nareru/constants.dart';

class Clock extends StatelessWidget {
  final String time;
  const Clock({Key? key, required this.time}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 10),
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              time,
              style: TextStyle(fontSize: 65, color: ACCENT_COLOR),
            ),
          ),
        ],
      ),
    );
  }
}
