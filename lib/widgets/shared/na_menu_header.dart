import 'package:flutter/material.dart';
import 'package:nalelu/furi_text.dart';
import 'package:nalelu/widgets/shared/furigana_text.dart';
import 'package:nrs_flutter_lib/constants.dart';

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
    return Stack(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: Icon(
            icon,
            size: 150,
            color: Colors.black.withOpacity(0.08),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          heightFactor: 2,
          child: Padding(
            padding: const EdgeInsets.only(left: FONT_SIZE),
            child: FuriganaText(
                furiTexts: label,
                fontSize: FONT_SIZE * 1.5,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
