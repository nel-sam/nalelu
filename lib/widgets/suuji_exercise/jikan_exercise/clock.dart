import 'package:flutter/material.dart';
import 'package:nrs_flutter_lib/nrs_flutter_lib.dart';

class Clock extends StatelessWidget {
  final String time;
  const Clock({Key? key, required this.time}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = Nrs.getScreenWidth();

    return Container(
      height: 140,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 10),
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              time,
              style: TextStyle(
                  fontSize: screenWidth / 8,
                  color: Nrs.getPrimaryColor(context)),
            ),
          ),
        ],
      ),
    );
  }
}
