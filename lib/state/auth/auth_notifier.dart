import 'package:material_ui/material_ui.dart';
import 'package:nalelu/state/auth/auth_state.dart';

class AuthNotifier extends ChangeNotifier {
  AuthState _state = const AuthState(
    idToken: '',
    accessToken: '',
    refreshToken: '',
  );

  AuthState get state => _state;

  void login({
    required String idToken,
    required String accessToken,
    required String refreshToken,
  }) {
    _state = AuthState(
      idToken: idToken,
      accessToken: accessToken,
      refreshToken: refreshToken,
    );

    notifyListeners();
  }

  void logout() {
    _state = const AuthState(
      idToken: '',
      accessToken: '',
      refreshToken: '',
    );

    notifyListeners();
  }
}
