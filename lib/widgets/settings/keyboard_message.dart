import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

setFirstTimeSetting() async {
  final preferences = (await SharedPreferences.getInstance());
  preferences.setBool("isFirstTime", true);
}

class KeyboardMessage extends StatelessWidget {
  const KeyboardMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    setFirstTimeSetting();
    return Text('Change keyboard');
  }
}
