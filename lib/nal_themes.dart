import 'package:material_ui/material_ui.dart';
import 'package:nrs_flutter_lib/themes.dart';

class _MenuPalette {
  const _MenuPalette._();

  static const creamBg = Color(0xFFFAF2E4);
  static const terracotta = Color(0xFFC84B25);
  static const peachCard = Color(0xFFF6DEC3);
  static const peachWatermark = Color(0xFFEAC29E);
  static const warmWhiteCard = Color(0xFFFFFAF2);
  static const darkBrown = Color(0xFF3E1C0D);
  static const mutedBrown = Color(0xFF7A442C);
  static const goldBorder = Colors.transparent;
  static const softBorder = Color(0xFFEBD3B7);
  static const lightBrown = Color(0xFF5E4336);

  static const darkBg = Color(0xFF1C130F);
  static const darkSurface = Color(0xFF281C16);
  static const darkPeachCard = Color(0xFF3A2820);
  static const darkWatermark = Color(0xFF543A2E);
  static const darkOutline = Color(0xFF4B362B);
  static const darkMutedText = Color(0xFFD2B8A6);
}

/// Menu-specific color tokens that do not map cleanly to Material [ColorScheme].
@immutable
class NaleluMenuColors extends ThemeExtension<NaleluMenuColors> {
  const NaleluMenuColors({
    required this.creamBg,
    required this.peachCard,
    required this.peachWatermark,
    required this.goldBorder,
    required this.softBorder,
    required this.lightBrown,
    required this.heroFurigana,
    required this.heroWatermarkOverlay,
  });

  final Color creamBg;
  final Color peachCard;
  final Color peachWatermark;
  final Color goldBorder;
  final Color softBorder;
  final Color lightBrown;
  final Color heroFurigana;
  final Color heroWatermarkOverlay;

  static final light = NaleluMenuColors(
    creamBg: _MenuPalette.creamBg,
    peachCard: _MenuPalette.peachCard,
    peachWatermark: _MenuPalette.peachWatermark,
    goldBorder: _MenuPalette.goldBorder,
    softBorder: _MenuPalette.softBorder,
    lightBrown: _MenuPalette.lightBrown,
    heroFurigana: Colors.white.withValues(alpha: 0.9),
    heroWatermarkOverlay: Colors.white.withValues(alpha: 0.16),
  );

  static final dark = NaleluMenuColors(
    creamBg: _MenuPalette.darkBg,
    peachCard: _MenuPalette.darkPeachCard,
    peachWatermark: _MenuPalette.darkWatermark,
    goldBorder: _MenuPalette.goldBorder,
    softBorder: _MenuPalette.darkOutline,
    lightBrown: _MenuPalette.darkMutedText,
    heroFurigana: Colors.white.withValues(alpha: 0.9),
    heroWatermarkOverlay: Colors.white.withValues(alpha: 0.16),
  );

  @override
  NaleluMenuColors copyWith({
    Color? creamBg,
    Color? peachCard,
    Color? peachWatermark,
    Color? goldBorder,
    Color? softBorder,
    Color? lightBrown,
    Color? heroFurigana,
    Color? heroWatermarkOverlay,
  }) {
    return NaleluMenuColors(
      creamBg: creamBg ?? this.creamBg,
      peachCard: peachCard ?? this.peachCard,
      peachWatermark: peachWatermark ?? this.peachWatermark,
      goldBorder: goldBorder ?? this.goldBorder,
      softBorder: softBorder ?? this.softBorder,
      lightBrown: lightBrown ?? this.lightBrown,
      heroFurigana: heroFurigana ?? this.heroFurigana,
      heroWatermarkOverlay: heroWatermarkOverlay ?? this.heroWatermarkOverlay,
    );
  }

  @override
  NaleluMenuColors lerp(ThemeExtension<NaleluMenuColors>? other, double t) {
    if (other is! NaleluMenuColors) return this;
    return NaleluMenuColors(
      creamBg: Color.lerp(creamBg, other.creamBg, t)!,
      peachCard: Color.lerp(peachCard, other.peachCard, t)!,
      peachWatermark: Color.lerp(peachWatermark, other.peachWatermark, t)!,
      goldBorder: Color.lerp(goldBorder, other.goldBorder, t)!,
      softBorder: Color.lerp(softBorder, other.softBorder, t)!,
      lightBrown: Color.lerp(lightBrown, other.lightBrown, t)!,
      heroFurigana: Color.lerp(heroFurigana, other.heroFurigana, t)!,
      heroWatermarkOverlay:
          Color.lerp(heroWatermarkOverlay, other.heroWatermarkOverlay, t)!,
    );
  }
}

final primaryColor = _MenuPalette.terracotta;

final naleluLightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: _MenuPalette.creamBg,
  colorScheme: const ColorScheme.light(
    primary: _MenuPalette.terracotta,
    onPrimary: Colors.white,
    secondary: _MenuPalette.goldBorder,
    onSecondary: _MenuPalette.darkBrown,
    surface: _MenuPalette.warmWhiteCard,
    onSurface: _MenuPalette.darkBrown,
    onSurfaceVariant: _MenuPalette.mutedBrown,
    outline: _MenuPalette.softBorder,
    outlineVariant: _MenuPalette.lightBrown,
  ),
  textTheme: nrsTextTheme,
  appBarTheme: nrsAppBarThemeLight,
  extensions: [
    NaleluMenuColors.light,
  ],
);

final naleluDarkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: const Color.fromARGB(255, 0, 0, 0),
  colorScheme: const ColorScheme.dark(
    primary: _MenuPalette.terracotta,
    onPrimary: Colors.white,
    secondary: _MenuPalette.goldBorder,
    onSecondary: _MenuPalette.darkBrown,
    surface: _MenuPalette.darkSurface,
    onSurface: _MenuPalette.creamBg,
    onSurfaceVariant: _MenuPalette.darkMutedText,
    outline: _MenuPalette.darkOutline,
    outlineVariant: _MenuPalette.lightBrown,
  ),
  appBarTheme: nrsAppBarThemeDark,
  textTheme: nrsTextTheme,
  switchTheme: SwitchThemeData(
    thumbColor: WidgetStateProperty.resolveWith(
      (states) => states.contains(WidgetState.selected) ? primaryColor : null,
    ),
    trackColor: WidgetStateProperty.resolveWith(
      (states) => states.contains(WidgetState.selected)
          ? primaryColor.withValues(alpha: 0.4)
          : null,
    ),
  ),
  extensions: [
    NaleluMenuColors.dark,
  ],
);
