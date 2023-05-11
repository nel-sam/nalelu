import 'package:flutter/material.dart';

class NAKanjiBlock extends StatelessWidget {
  final String kanji;

  const NAKanjiBlock({
    Key? key,
    required this.kanji,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double radius = 10;

    return Padding(
      padding: const EdgeInsets.all(4),
      child: Container(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 10,
            minimumSize: Size(100, 100),
            padding: const EdgeInsets.all(20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(radius)),
            ),
          ),
          onPressed: () {},
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  kanji,
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
