import 'package:material_ui/material_ui.dart';
import 'package:nalelu/furi_text.dart';
import 'package:nalelu/widgets/shared/furigana_text.dart';

class NumberBlock extends StatelessWidget {
  final int digit;
  final List<FuriText> furiTexts;

  const NumberBlock({
    Key? key,
    required this.digit,
    required this.furiTexts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double radius = 15;

    return Padding(
      padding: const EdgeInsets.all(4),
      child: Container(
        height: 250,
        width: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(radius)),
          color: Theme.of(context).primaryColor.withAlpha(50),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                digit.toString(),
                style: TextStyle(fontSize: 18),
              ),
              if (furiTexts.isNotEmpty)
                FuriganaText(
                    furiTexts: furiTexts, fontSize: digit > 18 ? 14 : 18),
            ]),
      ),
    );
  }
}
