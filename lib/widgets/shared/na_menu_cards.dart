import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_ui/material_ui.dart';
import 'package:nalelu/furi_text.dart';
import 'package:nalelu/nal_themes.dart';
import 'package:nalelu/widgets/shared/furigana_text.dart';

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
    required this.watermarkColor,
    required this.captionFontSize,
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
  final Color watermarkColor;
  final double captionFontSize;
  final double gapAfterLabel;
  final double arrowSize;
  final double arrowIconSize;
  final Color arrowBackgroundColor;
  final Color arrowIconColor;

  factory _MenuCardStyle.forVariant(
    MenuCardVariant variant, {
    required ColorScheme scheme,
    required NaleluMenuColors menuColors,
    double? height,
    Color? backgroundColor,
    Color? borderColor,
    double? borderWidth,
    Color? textColor,
    Color? watermarkColor,
    Color? arrowBackgroundColor,
    Color? arrowIconColor,
  }) {
    switch (variant) {
      case MenuCardVariant.hero:
        return _MenuCardStyle(
          height: height ?? 220,
          radius: 28,
          backgroundColor: backgroundColor ?? scheme.primary,
          borderColor: borderColor ?? menuColors.goldBorder,
          borderWidth: borderWidth ?? 2.0,
          textColor: textColor ?? scheme.onPrimary,
          watermarkColor: watermarkColor ?? menuColors.heroWatermarkOverlay,
          captionFontSize: 28,
          gapAfterLabel: 6,
          arrowSize: 48,
          arrowIconSize: 22,
          arrowBackgroundColor: arrowBackgroundColor ?? scheme.onPrimary,
          arrowIconColor: arrowIconColor ?? scheme.primary,
        );
      case MenuCardVariant.square:
        return _MenuCardStyle(
          height: height ?? 162,
          radius: 26,
          backgroundColor: backgroundColor ?? menuColors.peachCard,
          borderColor: borderColor,
          borderWidth: borderWidth ?? 1.5,
          textColor: textColor ?? scheme.onPrimary,
          watermarkColor: watermarkColor ?? menuColors.peachWatermark,
          captionFontSize: 28,
          gapAfterLabel: 4,
          arrowSize: 44,
          arrowIconSize: 20,
          arrowBackgroundColor: arrowBackgroundColor ?? menuColors.peachCard,
          arrowIconColor: arrowIconColor ?? scheme.primary,
        );
      case MenuCardVariant.wide:
        return _MenuCardStyle(
          height: height ?? 98,
          radius: 26,
          backgroundColor: backgroundColor ?? scheme.surface,
          borderColor: borderColor ?? menuColors.softBorder,
          borderWidth: borderWidth ?? 1.5,
          textColor: textColor ?? scheme.onSurface,
          watermarkColor: watermarkColor ?? menuColors.peachWatermark,
          captionFontSize: 28,
          gapAfterLabel: 4,
          arrowSize: 44,
          arrowIconSize: 20,
          arrowBackgroundColor: arrowBackgroundColor ?? menuColors.peachCard,
          arrowIconColor: arrowIconColor ?? scheme.primary,
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

  /// Used by [MenuCardVariant.hero].
  final String? svgAssetPath;

  /// Used by [MenuCardVariant.square].
  final String? watermarkChar;
  final Color? watermarkColor;

  /// Used by [MenuCardVariant.hero] and [MenuCardVariant.wide].
  final Color? arrowBackgroundColor;
  final Color? arrowIconColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final menuColors =
        theme.extension<NaleluMenuColors>() ?? NaleluMenuColors.light;

    final style = _MenuCardStyle.forVariant(
      variant,
      scheme: theme.colorScheme,
      menuColors: menuColors,
      height: height,
      backgroundColor: backgroundColor,
      borderColor: borderColor,
      borderWidth: borderWidth,
      textColor: textColor,
      watermarkColor: watermarkColor,
      arrowBackgroundColor: arrowBackgroundColor,
      arrowIconColor: arrowIconColor,
    );

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
              Text(
                label,
                style: TextStyle(
                  color: style.textColor,
                ),
              ),
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
                  color: style.watermarkColor,
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
              Text(
                label,
                style: TextStyle(
                  color: style.textColor,
                ),
              ),
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
          Text(
            label,
            style: TextStyle(
              color: style.textColor,
            ),
          ),
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
        FuriganaText(
          furiTexts: [
            FuriText(
              text: japanese!.text,
              furigana: japanese!.furigana,
            )
          ],
          textColor: style.textColor,
          fontSize: style.captionFontSize,
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
