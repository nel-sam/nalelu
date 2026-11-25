import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:material_ui/material_ui.dart'
    hide ThemeData, GlobalMaterialLocalizations, ColorScheme, Colors, TextTheme;
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:nalelu/nal_themes.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'main.directories.g.dart';

void main() {
  runApp(const WidgetbookApp());
}

@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      directories: [...directories],
      addons: [
        MaterialThemeAddon(
          themes: [
            WidgetbookTheme(
              name: 'light',
              data: ThemeData(
                brightness: Brightness.light,
                colorScheme: ColorScheme.light(
                  primary: primaryColor,
                  onPrimary: Colors.white,
                ),
              ),
            ),
          ],
        ),
        // LocalizationAddon(
        //   locales: const [
        //     Locale('en', 'US'),
        //     const Locale('es', 'MX'),
        //   ], // the locales your app supports
        //   localizationsDelegates: [
        //     LocalJsonLocalization.delegate,
        //     GlobalMaterialLocalizations.delegate,
        //     GlobalWidgetsLocalizations.delegate,
        //     GlobalCupertinoLocalizations.delegate,
        //   ],
        // ),
      ],
    );
  }
}
