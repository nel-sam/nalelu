import 'package:flutter/material.dart';

class TextEntryActivator extends StatelessWidget {
  final Function() onPress;

  const TextEntryActivator({
    Key? key,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.lightbulb),
      onPressed: () => {onPress()},
    );
  }
}
