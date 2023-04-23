import 'package:flutter/material.dart';
import 'package:nareru/furi_text.dart';
import 'package:nareru/widgets/shared/furigana_text.dart';
import 'package:nrs_flutter_lib/constants.dart';
import 'package:nrs_flutter_lib/nrs_flutter_lib.dart';

class NAMenuHeader extends StatelessWidget {
  final IconData icon;
  final String transLabel;
  final List<FuriText> label;
  const NAMenuHeader({
    Key? key,
    required this.icon,
    required this.transLabel,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final headerHeight = Nrs.getScreenHeight() / 3.4;

    return SizedBox(
      height: headerHeight,
      width: Nrs.getScreenWidth(),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Icon(
              icon,
              size: Nrs.getScreenWidth() / 1.5,
              color: Colors.black.withOpacity(0.08),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(28),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  icon,
                  size: FONT_SIZE * 2,
                  color: Colors.black.withOpacity(0.6),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: FONT_SIZE * 1.3, bottom: FONT_SIZE / 2),
                  child: Text(
                    transLabel.toUpperCase(),
                    style: TextStyle(
                      color: Nrs.getSecondaryColor(),
                      fontSize: FONT_SIZE,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                FuriganaText(
                    furigana: label,
                    fontSize: FONT_SIZE * 1.5,
                    fontWeight: FontWeight.bold)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
