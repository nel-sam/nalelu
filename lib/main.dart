import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:localization/localization.dart';
import 'package:nalelu/constants.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/widgets/menus/main_menu.dart';
import 'package:nrs_flutter_lib/widgets/n_keyboard_message.dart';
import 'package:nrs_flutter_lib/widgets/n_spinner.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();

  final RequestConfiguration requestConfiguration = RequestConfiguration(
      tagForUnderAgeOfConsent: TagForUnderAgeOfConsent.yes);
  MobileAds.instance.updateRequestConfiguration(requestConfiguration);

  runApp(NaleluApp());
}

Future<bool> getIsFirstTimeSetting() async {
  final preferences = (await SharedPreferences.getInstance());
  final isFirstTime = preferences.getBool('isFirstTime') ?? true;
  return isFirstTime;
}

Future setFirstTimeSetting() async {
  final preferences = (await SharedPreferences.getInstance());
  preferences.setBool("isFirstTime", false);
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class NaleluApp extends StatelessWidget {
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

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getIsFirstTimeSetting(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if ((snapshot.data as bool)) {
              return NKeyboardMessage(
                welcomeText: NA.t('welcome_to_nalelu'),
                detailsText: NA.t('japanese_keyboard_needed'),
                instructionsButtonText: NA.t('instructions'),
                continueLinkText: NA.t('continue'),
                onContinue: () async {
                  await setFirstTimeSetting();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainMenu()),
                  );
                },
              );
            } else {
              return MainMenu();
            }
          } else {
            return NSpinner();
          }
        });
  }
}
