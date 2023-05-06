import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:localization/localization.dart';
import 'package:nalelu/constants.dart';
import 'package:nalelu/widgets/menus/main_menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final primaryColor = Colors.deepOrange;

    final textTheme = TextTheme(
      titleLarge: TextStyle(fontSize: 42.0),
      titleMedium: TextStyle(fontSize: 39.0),
      titleSmall: TextStyle(fontSize: 22.0),
      bodyLarge: TextStyle(fontSize: 20.0),
      bodyMedium: TextStyle(fontSize: 18.0),
      bodySmall: TextStyle(fontSize: 16.0),
    );

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: APP_NAME,
        localizationsDelegates: [
          LocalJsonLocalization.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('en', 'US'),
          const Locale('es', 'MX'),
        ],
        theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: primaryColor,
          textTheme: textTheme,
        ),
        darkTheme: ThemeData(
          primaryColor: Colors.black,
          brightness: Brightness.dark,
          colorScheme: ColorScheme.dark(
            primary: primaryColor,
            background: const Color(0xFF212121),
            onPrimary: Colors.white,
          ),
          dividerColor: Colors.black12,
          textTheme: textTheme,
        ),
        themeMode: ThemeMode.system,
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MainMenu(),
      ),
    );
  }
}
