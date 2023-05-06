import 'package:flutter/material.dart';
import 'package:nalelu/furi_text.dart';
import 'package:nalelu/widgets/shared/furigana_text.dart';
import 'package:nrs_flutter_lib/constants.dart';
import 'package:nrs_flutter_lib/widgets/n_action_arrow.dart';

class NAMenuButton extends StatelessWidget {
  final Widget destination;
  final String label;
  final List<FuriText> translabel;
  final bool isPremiumLocked;

  const NAMenuButton({
    Key? key,
    required this.destination,
    required this.label,
    required this.translabel,
    this.isPremiumLocked = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double buttonHeight = 90;
    double radius = 10;

    return Padding(
      padding: const EdgeInsets.all(FONT_SIZE / 2),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(radius)),
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destination),
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: FONT_SIZE * 1.3),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Text(
                      label,
                      style: TextStyle(
                        fontSize: FONT_SIZE * 1.2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  FuriganaText(
                    furiTexts: translabel,
                    fontSize: FONT_SIZE,
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: buttonHeight,
                  height: buttonHeight,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(radius),
                      bottomRight: Radius.circular(radius),
                    ),
                  ),
                  child: isPremiumLocked
                      ? const NPremiumIcon()
                      : const NActionArrow(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class NPremiumIcon extends StatelessWidget {
  const NPremiumIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Icon(Icons.workspace_premium_outlined,
        size: 40, color: PREMIUM_COLOR);
  }
}
