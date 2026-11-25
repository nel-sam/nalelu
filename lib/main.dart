import 'package:cupertino_ui/cupertino_ui.dart'
    hide GlobalCupertinoLocalizations;
import 'package:material_ui/material_ui.dart' hide GlobalMaterialLocalizations;
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:localization/localization.dart';
import 'package:nalelu/constants.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/nal_themes.dart';
import 'package:nalelu/widgets/auth/login_button.dart';
import 'package:nalelu/widgets/login_banner_card.dart';
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
  const NaleluHomePage({Key? key}) : super(key: key);

  @override
  _NaleluHomePageState createState() => _NaleluHomePageState();
}

class NaleluApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        theme: naleluLightTheme,
        darkTheme: naleluDarkTheme,
        themeMode: ThemeMode.system,
        home: NaleluHomePage());
  }
}

class _NaleluHomePageState extends State<NaleluHomePage> {
  late final Future<bool> _isFirstTimeFuture = getIsFirstTimeSetting();
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
      final colorScheme = Theme.of(context).colorScheme;
      final isDark = Theme.of(context).brightness == Brightness.dark;

      return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: isDark
                  ? [
                      colorScheme.surface,
                      colorScheme.primary.withValues(alpha: 0.12),
                    ]
                  : [
                      colorScheme.surface,
                      colorScheme.primary.withValues(alpha: 0.08),
                    ],
            ),
          ),
          child: SafeArea(
            child: LayoutBuilder(
              builder: (context, constraints) {
                return SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints:
                        BoxConstraints(minHeight: constraints.maxHeight),
                    child: Center(
                      child: LoginBannerCard(
                        titleText: NA.t('login_banner_title'),
                        detailsText: NA.t('login_banner_details'),
                        loginButton: const LoginButton(),
                        skipButtonText: NA.t('skip'),
                        onSkip: _openMainMenu,
                        onDismiss: _openMainMenu,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      );
    }

    return FutureBuilder<bool>(
      future: _isFirstTimeFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.data == true) {
            return NKeyboardMessage(
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
