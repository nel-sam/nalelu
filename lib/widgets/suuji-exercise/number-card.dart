import 'package:flutter/material.dart';

class NumberCard extends StatefulWidget {
  final String number;
  final String hiragana;
  final String kanji;

  const NumberCard({
    Key? key,
    required this.number,
    required this.hiragana,
    required this.kanji,
  }) : super(key: key);
  @override
  State<NumberCard> createState() => _NumberCardState();
}

class _NumberCardState extends State<NumberCard> {
  bool selected = true;

  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          selected = false;
        });
      },
      child: Ink(
        child: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Text(widget.number),
              selected ? Text(widget.hiragana) : Text(widget.kanji),
            ],
          ),
        ),
      ),
    );
  }
}
