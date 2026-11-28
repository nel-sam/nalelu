import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_ui/material_ui.dart';
import 'package:nalelu/furi_text.dart';

class MainMenuColors {
  const MainMenuColors._();

  static const creamBg = Color(0xFFFAF2E4);
  static const terracotta = Color(0xFFC84B25);
  static const peachCard = Color(0xFFF6DEC3);
  static const peachWatermark = Color(0xFFEAC29E);
  static const warmWhiteCard = Color(0xFFFFFAF2);
  static const darkBrown = Color(0xFF3E1C0D);
  static const mutedBrown = Color(0xFF7A442C);
  static const goldBorder = Color(0xFFD5A657);
  static const softBorder = Color(0xFFEBD3B7);
}

class FuriganaCaption extends StatelessWidget {
  const FuriganaCaption({super.key, 
    required this.text,
    this.furigana,
    required this.textColor,
    required this.furiganaColor,
    required this.fontSize,
    required this.furiganaSize,
  });

  final String text;
  final String? furigana;
  final Color textColor;
  final Color furiganaColor;
  final double fontSize;
  final double furiganaSize;

  List<String> _splitCharacters(String value) {
    return value.runes.map((rune) => String.fromCharCode(rune)).toList();
  }

  @override
  Widget build(BuildContext context) {
    final hasFurigana = furigana != null && furigana!.trim().isNotEmpty;
    final baseStyle = TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.w800,
      color: textColor,
      height: 1.1,
    );

    if (!hasFurigana) {
      return Text(text, style: baseStyle);
    }

    final baseChars = _splitCharacters(text);
    final furiChars = _splitCharacters(furigana!.trim());
    final furiStyle = TextStyle(
      fontSize: furiganaSize,
      fontWeight: FontWeight.w700,
      color: furiganaColor,
      height: 1.1,
    );

    if (baseChars.length > 1 && furiChars.length >= baseChars.length) {
      final columns = <Widget>[];
      final baseFuriPerChar = furiChars.length ~/ baseChars.length;
      final remainder = furiChars.length % baseChars.length;
      var cursor = 0;

      for (var i = 0; i < baseChars.length; i++) {
        final extra = i < remainder ? 1 : 0;
        final take = baseFuriPerChar + extra;
        final chunk = furiChars.sublist(cursor, cursor + take).join();
        cursor += take;

        columns.add(
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(chunk, style: furiStyle, textAlign: TextAlign.center),
              Text(baseChars[i], style: baseStyle, textAlign: TextAlign.center),
            ],
          ),
        );
      }

      return Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: columns,
      );
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(furigana!.trim(), style: furiStyle, textAlign: TextAlign.center),
        Text(text, style: baseStyle, textAlign: TextAlign.center),
      ],
    );
  }
}

enum MenuCardVariant {
  hero,
  square,
  wide,
}

class MenuCard extends StatelessWidget {
  const MenuCard({super.key, 
    required this.variant,
    required this.label,
    required this.translabel,
    required this.onTap,
    this.height,
    this.backgroundColor,
    this.borderColor,
    this.borderWidth,
    this.textColor,
    this.furiganaColor,
    this.svgAssetPath,
    this.watermarkChar,
    this.watermarkColor,
    this.arrowBackgroundColor,
    this.arrowIconColor,
  });

  final MenuCardVariant variant;
  final String label;
  final List<FuriText> translabel;
  final VoidCallback onTap;

  /// Optional override; if omitted, uses the default height for [variant].
  final double? height;

  final Color? backgroundColor;
  final Color? borderColor;
  final double? borderWidth;
  final Color? textColor;
  final Color? furiganaColor;

  /// Used by [MenuCardVariant.hero].
  final String? svgAssetPath;

  /// Used by [MenuCardVariant.square].
  final String? watermarkChar;
  final Color? watermarkColor;

  /// Used by [MenuCardVariant.hero] and [MenuCardVariant.wide].
  final Color? arrowBackgroundColor;
  final Color? arrowIconColor;

  double get _defaultHeight {
    switch (variant) {
      case MenuCardVariant.hero:
        return 220;
      case MenuCardVariant.square:
        return 162;
      case MenuCardVariant.wide:
        return 98;
    }
  }

  double get _radius {
    switch (variant) {
      case MenuCardVariant.hero:
        return 28;
      case MenuCardVariant.square:
      case MenuCardVariant.wide:
        return 26;
    }
  }

  Color get _resolvedBackgroundColor {
    if (backgroundColor != null) return backgroundColor!;
    switch (variant) {
      case MenuCardVariant.hero:
        return MainMenuColors.terracotta;
      case MenuCardVariant.square:
        return MainMenuColors.peachCard;
      case MenuCardVariant.wide:
        return MainMenuColors.warmWhiteCard;
    }
  }

  Color? get _resolvedBorderColor {
    if (borderColor != null) return borderColor;
    switch (variant) {
      case MenuCardVariant.hero:
        return MainMenuColors.goldBorder;
      case MenuCardVariant.wide:
        return MainMenuColors.softBorder;
      case MenuCardVariant.square:
        return null;
    }
  }

  double get _resolvedBorderWidth {
    if (borderWidth != null) return borderWidth!;
    return variant == MenuCardVariant.hero ? 2.0 : 1.5;
  }

  Color get _resolvedTextColor {
    if (textColor != null) return textColor!;
    return variant == MenuCardVariant.wide
        ? MainMenuColors.darkBrown
        : Colors.white;
  }

  Color get _resolvedFuriganaColor {
    if (furiganaColor != null) return furiganaColor!;
    return variant == MenuCardVariant.wide
        ? MainMenuColors.mutedBrown
        : Colors.white.withOpacity(0.9);
  }

  @override
  Widget build(BuildContext context) {
    final japanese = translabel.isNotEmpty ? translabel.first : null;
    final resolvedBorder = _resolvedBorderColor;

    return Material(
      color: _resolvedBackgroundColor,
      borderRadius: BorderRadius.circular(_radius),
      child: InkWell(
        borderRadius: BorderRadius.circular(_radius),
        onTap: onTap,
        child: Container(
          constraints: BoxConstraints(minHeight: height ?? _defaultHeight),
          width: double.infinity,
          height: height ?? _defaultHeight,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(_radius),
            border: resolvedBorder != null
                ? Border.all(color: resolvedBorder, width: _resolvedBorderWidth)
                : null,
          ),
          clipBehavior: Clip.antiAlias,
          child: _buildBody(japanese),
        ),
      ),
    );
  }

  Widget _buildBody(FuriText? japanese) {
    switch (variant) {
      case MenuCardVariant.hero:
        return _buildHeroContent(japanese);
      case MenuCardVariant.square:
        return _buildSquareContent(japanese);
      case MenuCardVariant.wide:
        return _buildWideContent(japanese);
    }
  }

  Widget _buildHeroContent(FuriText? japanese) {
    return Stack(
      children: [
        if (svgAssetPath != null)
          Positioned.fill(
            child: SvgPicture.asset(
              svgAssetPath!,
              fit: BoxFit.cover,
              alignment: Alignment.bottomCenter,
            ),
          ),
        Positioned(
          top: 20,
          left: 22,
          right: 20,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: _LabelAndFurigana(
                  label: label,
                  japanese: japanese,
                  labelFontSize: 32,
                  furiganaSize: 12,
                  gapAfterLabel: 6,
                  textColor: _resolvedTextColor,
                  furiganaColor: _resolvedFuriganaColor,
                ),
              ),
              _ArrowCircle(
                size: 48,
                iconSize: 22,
                backgroundColor: arrowBackgroundColor ?? Colors.white,
                iconColor: arrowIconColor ?? MainMenuColors.terracotta,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSquareContent(FuriText? japanese) {
    return Stack(
      children: [
        if (watermarkChar != null)
          Positioned(
            top: -22,
            right: 6,
            child: IgnorePointer(
              child: Text(
                watermarkChar!,
                style: TextStyle(
                  fontSize: 128,
                  fontWeight: FontWeight.w900,
                  height: 1.0,
                  color: watermarkColor ?? MainMenuColors.peachWatermark,
                ),
              ),
            ),
          ),
        Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _LabelAndFurigana(
                label: label,
                japanese: japanese,
                labelFontSize: 20,
                furiganaSize: 11,
                gapAfterLabel: 4,
                textColor: _resolvedTextColor,
                furiganaColor: _resolvedFuriganaColor,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildWideContent(FuriText? japanese) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Row(
        children: [
          Expanded(
            child: _LabelAndFurigana(
              label: label,
              japanese: japanese,
              labelFontSize: 22,
              furiganaSize: 11,
              gapAfterLabel: 4,
              textColor: _resolvedTextColor,
              furiganaColor: _resolvedFuriganaColor,
            ),
          ),
          _ArrowCircle(
            size: 44,
            iconSize: 20,
            backgroundColor: arrowBackgroundColor ?? MainMenuColors.peachCard,
            iconColor: arrowIconColor ?? MainMenuColors.terracotta,
          ),
        ],
      ),
    );
  }
}

class _LabelAndFurigana extends StatelessWidget {
  const _LabelAndFurigana({
    required this.label,
    required this.japanese,
    required this.labelFontSize,
    required this.furiganaSize,
    required this.gapAfterLabel,
    required this.textColor,
    required this.furiganaColor,
  });

  final String label;
  final FuriText? japanese;
  final double labelFontSize;
  final double furiganaSize;
  final double gapAfterLabel;
  final Color textColor;
  final Color furiganaColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (japanese != null) ...[
          SizedBox(height: gapAfterLabel),
          FuriganaCaption(
            text: japanese!.text,
            furigana: japanese!.furigana,
            textColor: textColor,
            furiganaColor: furiganaColor,
            fontSize: 28,
            furiganaSize: furiganaSize,
          ),
        ],
      ],
    );
  }
}

class _ArrowCircle extends StatelessWidget {
  const _ArrowCircle({
    required this.size,
    required this.iconSize,
    required this.backgroundColor,
    required this.iconColor,
  });

  final double size;
  final double iconSize;
  final Color backgroundColor;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
      ),
      child: Icon(
        Icons.arrow_forward,
        color: iconColor,
        size: iconSize,
      ),
    );
  }
}
