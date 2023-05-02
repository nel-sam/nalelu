import 'package:flutter/material.dart';
import 'package:nalelu/furi_text.dart';
import 'package:nalelu/widgets/shared/furigana_text.dart';
import 'package:nrs_flutter_lib/constants.dart';
import 'package:nrs_flutter_lib/nrs_flutter_lib.dart';
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
    double screenWidth = Nrs.getScreenWidth();
    double buttonWidth = screenWidth - 30;
    double buttonHeight = 90;
    double radius = 10;

    return Padding(
      padding: const EdgeInsets.all(FONT_SIZE / 2),
      child: SizedBox(
        height: buttonHeight,
        width: buttonWidth,
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
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: FONT_SIZE * 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (translabel.isNotEmpty)
                          Text(
                            label.toUpperCase(),
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: FuriganaText(
                              furigana: translabel,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
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
