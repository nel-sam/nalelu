import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:nalelu/services/auth/token_collection.dart';

class AuthService {
  final FlutterAppAuth appAuth = FlutterAppAuth();
  final clientId = '972db35b-f6ce-464c-a10d-ee59196f29f2';
  final redirectUrl = 'nalelu://auth/';
  final discoveryUrl =
      'https://nrsdevlangapp.ciamlogin.com/e338544a-d3eb-47c5-a834-6c82364c3822/v2.0/.well-known/openid-configuration';

  Future<TokenCollection> performOAuthLogin() async {
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

      return TokenCollection(
        idToken: result.idToken ?? '',
        accessToken: result.accessToken ?? '',
        refreshToken: result.refreshToken ?? '',
      );
    } on FlutterAppAuthUserCancelledException catch (e) {
      // No need to do anything when the user cancels
    } catch (e) {
      rethrow;
    }

    return TokenCollection(idToken: '', accessToken: '', refreshToken: '');
  }

  Future<EndSessionResponse> performLogout(String currentIdToken) async {
    final response = await appAuth.endSession(EndSessionRequest(
      idTokenHint: currentIdToken,
      //discoveryUrl: discoveryUrl,
    ));

    return response;
  }
}
