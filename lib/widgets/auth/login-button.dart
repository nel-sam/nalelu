import 'package:flutter/material.dart';
import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:nalelu/na_helpers.dart';

class LoginButton extends StatefulWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  bool isLoading = false;
  bool isLoggedIn = false;

  @override
  void initState() {
    super.initState();
  }

  _login() async {
    setState(() {
      isLoading = true;
    });

    final FlutterAppAuth appAuth = FlutterAppAuth();
    final clientId = '972db35b-f6ce-464c-a10d-ee59196f29f2';
    final tenantId = 'e338544a-d3eb-47c5-a834-6c82364c3822';
    final subdomain = 'nrsdevlangapp';
    final redirectUrl = 'nalelu://auth/';

    try {
      final result = await appAuth.authorizeAndExchangeCode(
        AuthorizationTokenRequest(
          clientId,
          redirectUrl,
          discoveryUrl:
              'https://${subdomain}.ciamlogin.com/${tenantId}/v2.0/.well-known/openid-configuration',
          scopes: [
            'openid',
            'profile',
            'email',
            'offline_access',
          ],
        ),
      );

      final idToken = result.idToken;
      final accessToken = result.accessToken;
      final refreshToken = result.refreshToken;

      if (idToken != null) {
        isLoggedIn = true;
      }
    } on FlutterAppAuthUserCancelledException catch (e) {
      // No need to do anything when the user cancels
    }

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _login,
      style: ElevatedButton.styleFrom(minimumSize: Size(180, 40)),
      child: isLoading
          ? const CircularProgressIndicator(
              constraints: BoxConstraints.tightFor(width: 20, height: 20))
          : Text(isLoggedIn ? NA.t('logout') : NA.t('login')),
    );
  }
}
