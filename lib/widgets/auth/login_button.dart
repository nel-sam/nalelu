import 'package:flutter/material.dart';
import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/state/auth/auth_notifier.dart';
import 'package:provider/provider.dart';

class LoginButton extends StatefulWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  final FlutterAppAuth appAuth = FlutterAppAuth();
  final clientId = '972db35b-f6ce-464c-a10d-ee59196f29f2';
  final redirectUrl = 'nalelu://auth/';
  final discoveryUrl =
      'https://nrsdevlangapp.ciamlogin.com/e338544a-d3eb-47c5-a834-6c82364c3822/v2.0/.well-known/openid-configuration';
  bool isLoading = false;
  bool isLoggedIn = false;

  @override
  void initState() {
    super.initState();
  }

  dynamic _logout(AuthNotifier authNotifier) async {
    if (mounted) {
      setState(() {
        isLoading = true;
      });
    }

    final currentIdToken = authNotifier.state.idToken;
    final response = await appAuth.endSession(EndSessionRequest(
      idTokenHint: currentIdToken,
      //discoveryUrl: discoveryUrl,
    ));

    print(response);
    authNotifier.logout();

    if (mounted) {
      setState(() {
        isLoggedIn = false;
        isLoading = false;
      });
    }
  }

  dynamic _login(AuthNotifier authNotifier) async {
    if (mounted) {
      setState(() {
        isLoading = true;
      });
    }

    try {
      final result = await appAuth.authorizeAndExchangeCode(
        AuthorizationTokenRequest(
          clientId,
          redirectUrl,
          discoveryUrl: discoveryUrl,
          scopes: [
            'openid',
            'profile',
            'email',
            'offline_access',
          ],
          promptValues: [
            'login'
          ], // Breaks SSO. Entra ID defaults to proper SSO otherwise
          externalUserAgent:
              ExternalUserAgent.ephemeralAsWebAuthenticationSession,
        ),
      );

      if (!mounted) return;

      authNotifier.login(
        idToken: result.idToken!,
        accessToken: result.accessToken!,
        refreshToken: result.refreshToken!,
      );
    } on FlutterAppAuthUserCancelledException catch (e) {
      // No need to do anything when the user cancels
    } finally {
      if (mounted) {
        setState(() {
          isLoggedIn = true;
          isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ((context) => AuthNotifier()),
      child: Consumer<AuthNotifier>(
        builder: (context, authNotifier, child) => ElevatedButton(
          onPressed: isLoading
              ? null
              : () => isLoggedIn ? _logout(authNotifier) : _login(authNotifier),
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.primary,
            foregroundColor: Theme.of(context).colorScheme.onPrimary,
            elevation: 0,
            minimumSize: const Size(110, 42),
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: isLoading
              ? const CircularProgressIndicator(
                  constraints: BoxConstraints.tightFor(width: 20, height: 20))
              : Text(isLoggedIn ? NA.t('logout') : NA.t('login')),
        ),
      ),
    );
  }
}
