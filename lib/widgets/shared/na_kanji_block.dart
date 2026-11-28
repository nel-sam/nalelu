import 'package:material_ui/material_ui.dart';

class NAKanjiBlock extends StatelessWidget {
  final String kanji;

  const NAKanjiBlock({
    super.key,
    required this.kanji,
  });

  @override
  Widget build(BuildContext context) {
    double radius = 10;

    return Container(
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
    );
  }
}
