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
        height: 120,
        width: 120,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.all(
            Radius.circular(radius),
          ),
        ),
        child: Center(
          child: Text(
            kanji,
            style: TextStyle(
              color: Theme.of(context).colorScheme.onPrimary,
              fontSize: 70,
            ),
          ),
        ),
      ),
    );
  }
}
