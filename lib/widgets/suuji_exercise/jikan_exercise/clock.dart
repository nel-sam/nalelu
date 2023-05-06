import 'package:flutter/material.dart';

class Clock extends StatelessWidget {
  final String time;
  const Clock({Key? key, required this.time}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 10),
          borderRadius: BorderRadius.all(
            Radius.circular(18),
          )),
      child: Center(
        widthFactor: 1,
        child: Text(
          time,
          style: TextStyle(
              fontSize: 60, color: Theme.of(context).colorScheme.primary),
        ),
      ),
    );
  }
}
