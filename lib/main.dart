import 'package:cupertino_ui/cupertino_ui.dart';
import 'package:flutter_localizations/flutter_localizations.dart'
    show GlobalWidgetsLocalizations;
import 'package:material_ui/material_ui.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:localization/localization.dart';
import 'package:nalelu/constants.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/nal_themes.dart';
import 'package:nalelu/state/auth/auth_state.dart';
import 'package:nalelu/widgets/login_page.dart';
import 'package:nalelu/widgets/menus/main_menu.dart';
import 'package:nrs_flutter_lib/widgets/n_keyboard_message.dart';
import 'package:nrs_flutter_lib/widgets/n_spinner.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();

  final RequestConfiguration requestConfiguration = RequestConfiguration(
      ageRestrictedTreatment: AgeRestrictedTreatment.unspecified);
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

class NaleluHomePage extends StatefulWidget {
  const NaleluHomePage({super.key});

  @override
  _NaleluHomePageState createState() => _NaleluHomePageState();
}

class NaleluApp extends StatelessWidget {
  const NaleluApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: appName,
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
        theme: naleluLightTheme,
        darkTheme: naleluDarkTheme,
        themeMode: ThemeMode.system,
        home: NaleluHomePage());
  }
}

class _NaleluHomePageState extends State<NaleluHomePage> {
  late final Future<({bool isFirstTime, AuthState? auth})> _initFuture =
      _initialize();

  Future<({bool isFirstTime, AuthState? auth})> _initialize() async {
    final isFirstTime = await getIsFirstTimeSetting();
    final auth = await _restoreSession();
    return (isFirstTime: isFirstTime, auth: auth);
  }

  Future<AuthState?> _restoreSession() async {
    // Your token restoration logic
    return null;
  }

  bool _showLoginBanner = false;
  bool _enteredMainMenu = false;

  void _openMainMenu() {
    setState(() {
      _showLoginBanner = false;
      _enteredMainMenu = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_enteredMainMenu) {
      return MainMenu();
    }

    if (_showLoginBanner) {
      return LoginPage(
        onSkip: _openMainMenu,
      );
    }

    return FutureBuilder<({bool isFirstTime, AuthState? auth})>(
      future: _initFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final isFirstTime = snapshot.data!.isFirstTime;
          final isLoggedIn = snapshot.data!.auth != null;

          if (isFirstTime) {
            return NKeyboardMessage(
              // TODO: these text items do not need to be params. Since we are using localization
              // they can be localized inside the widget itself.
              welcomeText: NA.t('welcome_to_nalelu'),
              detailsText: NA.t('japanese_keyboard_needed'),
              instructionsButtonText: NA.t('instructions'),
              continueLinkText: NA.t('continue'),
              imageUrl: 'assets/banners/slant_keyboard.png',
              onContinue: () async {
                await setFirstTimeSetting();
                if (!context.mounted) return;
                setState(() {
                  _showLoginBanner = true;
                });
              },
            );
          } else if (!isLoggedIn) { // TODO: The login page should only show on first load of the app
            return LoginPage(
              onSkip: _openMainMenu,
            );
          } else {
            return MainMenu();
          }
        } else {
          return NSpinner();
        }
      },
    );
  }
}
