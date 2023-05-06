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
