import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:nareru/constants.dart';
import 'package:nareru/state/suuji.exercise-notifier.dart';
import 'package:nareru/widgets/suuji-exercise/suuji-exercise.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Nareru';

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        localizationsDelegates: [
          LocalJsonLocalization.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('en', ''),
          const Locale('es', ''),
        ],
        theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: ACCENT_COLOR,
        ),
        darkTheme: ThemeData(
          primarySwatch: ACCENT_COLOR,
          primaryColor: Colors.black,
          brightness: Brightness.dark,
          backgroundColor: const Color(0xFF212121),
          dividerColor: Colors.black12,
        ),
        home: MultiProvider(providers: [
          ChangeNotifierProvider(create: (_) => SuujiExerciseNotifier()),
        ], child: SuujiExercise()));
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
        ),
      ),
    );
  }
}
