import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_ui/material_ui.dart';
import 'package:nalelu/furi_text.dart';
import 'package:nalelu/widgets/shared/na_furigana_label.dart';
import 'package:nalelu/widgets/shared/na_menu_color.dart';

enum MenuCardVariant {
  hero,
  square,
  wide,
}

class _MenuCardStyle {
  const _MenuCardStyle({
    required this.height,
    required this.radius,
    required this.backgroundColor,
    required this.borderColor,
    required this.borderWidth,
    required this.textColor,
    required this.furiganaColor,
    required this.captionFontSize,
    required this.furiganaSize,
    required this.gapAfterLabel,
    required this.arrowSize,
    required this.arrowIconSize,
    required this.arrowBackgroundColor,
    required this.arrowIconColor,
  });

  final double height;
  final double radius;
  final Color backgroundColor;
  final Color? borderColor;
  final double borderWidth;
  final Color textColor;
  final Color furiganaColor;
  final double captionFontSize;
  final double furiganaSize;
  final double gapAfterLabel;
  final double arrowSize;
  final double arrowIconSize;
  final Color arrowBackgroundColor;
  final Color arrowIconColor;

  factory _MenuCardStyle.forVariant(
    MenuCardVariant variant, {
    double? height,
    Color? backgroundColor,
    Color? borderColor,
    double? borderWidth,
    Color? textColor,
    Color? furiganaColor,
    Color? arrowBackgroundColor,
    Color? arrowIconColor,
  }) {
    switch (variant) {
      case MenuCardVariant.hero:
        return _MenuCardStyle(
          height: height ?? 220,
          radius: 28,
          backgroundColor: backgroundColor ?? MenuColors.terracotta,
          borderColor: borderColor ?? MenuColors.goldBorder,
          borderWidth: borderWidth ?? 2.0,
          textColor: textColor ?? Colors.white,
          furiganaColor: furiganaColor ?? Colors.white.withValues(alpha: 0.9),
          captionFontSize: 28,
          furiganaSize: 12,
          gapAfterLabel: 6,
          arrowSize: 48,
          arrowIconSize: 22,
          arrowBackgroundColor: arrowBackgroundColor ?? Colors.white,
          arrowIconColor: arrowIconColor ?? MenuColors.terracotta,
        );
      case MenuCardVariant.square:
        return _MenuCardStyle(
          height: height ?? 162,
          radius: 26,
          backgroundColor: backgroundColor ?? MenuColors.peachCard,
          borderColor: borderColor,
          borderWidth: borderWidth ?? 1.5,
          textColor: textColor ?? Colors.white,
          furiganaColor: furiganaColor ?? Colors.white.withValues(alpha: 0.9),
          captionFontSize: 28,
          furiganaSize: 11,
          gapAfterLabel: 4,
          arrowSize: 44,
          arrowIconSize: 20,
          arrowBackgroundColor: arrowBackgroundColor ?? MenuColors.peachCard,
          arrowIconColor: arrowIconColor ?? MenuColors.terracotta,
        );
      case MenuCardVariant.wide:
        return _MenuCardStyle(
          height: height ?? 98,
          radius: 26,
          backgroundColor: backgroundColor ?? MenuColors.warmWhiteCard,
          borderColor: borderColor ?? MenuColors.softBorder,
          borderWidth: borderWidth ?? 1.5,
          textColor: textColor ?? MenuColors.darkBrown,
          furiganaColor: furiganaColor ?? MenuColors.mutedBrown,
          captionFontSize: 28,
          furiganaSize: 11,
          gapAfterLabel: 4,
          arrowSize: 44,
          arrowIconSize: 20,
          arrowBackgroundColor: arrowBackgroundColor ?? MenuColors.peachCard,
          arrowIconColor: arrowIconColor ?? MenuColors.terracotta,
        );
    }
  }
}

class MenuCard extends StatelessWidget {
  const MenuCard({
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

  _MenuCardStyle get _style => _MenuCardStyle.forVariant(
        variant,
        height: height,
        backgroundColor: backgroundColor,
        borderColor: borderColor,
        borderWidth: borderWidth,
        textColor: textColor,
        furiganaColor: furiganaColor,
        arrowBackgroundColor: arrowBackgroundColor,
        arrowIconColor: arrowIconColor,
      );

  @override
  Widget build(BuildContext context) {
    final style = _style;
    final japanese = translabel.isNotEmpty ? translabel.first : null;
    final borderRadius = BorderRadius.circular(style.radius);

    return Material(
      color: style.backgroundColor,
      borderRadius: borderRadius,
      child: InkWell(
        borderRadius: borderRadius,
        onTap: onTap,
        child: Container(
          width: double.infinity,
          height: style.height,
          decoration: BoxDecoration(
            borderRadius: borderRadius,
            border: style.borderColor != null
                ? Border.all(
                    color: style.borderColor!, width: style.borderWidth)
                : null,
          ),
          clipBehavior: Clip.antiAlias,
          child: _buildBody(style, japanese),
        ),
      ),
    );
  }

  Widget _buildBody(_MenuCardStyle style, FuriText? japanese) {
    switch (variant) {
      case MenuCardVariant.hero:
        return _buildHeroContent(style, japanese);
      case MenuCardVariant.square:
        return _buildSquareContent(style, japanese);
      case MenuCardVariant.wide:
        return _buildWideContent(style, japanese);
    }
  }

  Widget _buildHeroContent(_MenuCardStyle style, FuriText? japanese) {
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
                child: _FuriganaSlot(japanese: japanese, style: style),
              ),
              _ArrowCircle(
                size: style.arrowSize,
                iconSize: style.arrowIconSize,
                backgroundColor: style.arrowBackgroundColor,
                iconColor: style.arrowIconColor,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSquareContent(_MenuCardStyle style, FuriText? japanese) {
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
                  color: watermarkColor ?? MenuColors.peachWatermark,
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
              _FuriganaSlot(japanese: japanese, style: style),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildWideContent(_MenuCardStyle style, FuriText? japanese) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Row(
        children: [
          Expanded(
            child: _FuriganaSlot(japanese: japanese, style: style),
          ),
          _ArrowCircle(
            size: style.arrowSize,
            iconSize: style.arrowIconSize,
            backgroundColor: style.arrowBackgroundColor,
            iconColor: style.arrowIconColor,
          ),
        ],
      ),
    );
  }
}

class _FuriganaSlot extends StatelessWidget {
  const _FuriganaSlot({
    required this.japanese,
    required this.style,
  });

  final FuriText? japanese;
  final _MenuCardStyle style;

  @override
  Widget build(BuildContext context) {
    if (japanese == null) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: style.gapAfterLabel),
        FuriganaLabel(
          text: japanese!.text,
          furigana: japanese!.furigana,
          textColor: style.textColor,
          furiganaColor: style.furiganaColor,
          fontSize: style.captionFontSize,
          furiganaSize: style.furiganaSize,
        ),
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
