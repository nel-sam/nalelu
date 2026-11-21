import 'package:flutter/material.dart';
import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nrs_flutter_lib/nrs_flutter_lib.dart';
import 'package:nrs_flutter_lib/widgets/n_spinner.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

// TODO: This doesn't need to be a full page widget and instead can just
// be a button that you click to trigger the login popup

class _LoginState extends State<Login> {
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _login();
    isLoading = false;
  }

  _login() async {
    final FlutterAppAuth appAuth = FlutterAppAuth();
    final clientId = '972db35b-f6ce-464c-a10d-ee59196f29f2';
    final tenantId = 'e338544a-d3eb-47c5-a834-6c82364c3822';
    final subdomain = 'nrsdevlangapp';
    final redirectUrl = 'nalelu://auth';

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
          ],
        ),
      );

      final accessToken = result.accessToken;
      final refreshToken = result.refreshToken;
    } on FlutterAppAuthUserCancelledException catch (e) {
      // No need to do anything when the user cancels
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Nrs.NrsAppBar(title: NA.t('login'), context: context),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (isLoading)
              NSpinner()
            else
              ElevatedButton(onPressed: _login, child: Text(NA.t('login')))
          ],
        ),
      ),
    );
  }
}
