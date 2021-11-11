import 'package:flutter/material.dart';

class InfoButton extends StatelessWidget {
  final Function onPressed;
  const InfoButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        icon: Icon(Icons.info),
        onPressed: () => onPressed(),
      ),
    );
  }
}
