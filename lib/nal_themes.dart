import 'package:material_ui/material_ui.dart';
import 'package:nrs_flutter_lib/themes.dart';

final primaryColor = Colors.deepOrange;

final naleluLightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    primary: primaryColor,
    onPrimary: Colors.white,
  ),
  textTheme: nrsTextTheme,
  appBarTheme: nrsAppBarThemeLight,
);

final naleluDarkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    primary: primaryColor,
    onPrimary: Colors.white,
  ),
  appBarTheme: nrsAppBarThemeDark,
  textTheme: nrsTextTheme,
  switchTheme: SwitchThemeData(
    thumbColor: WidgetStateProperty.resolveWith((states) =>
        states.contains(WidgetState.selected) ? primaryColor : null),
    trackColor: WidgetStateProperty.resolveWith(
      (states) => states.contains(WidgetState.selected)
          ? primaryColor.withValues(alpha: 0.4)
          : null,
    ),
  ),
);
