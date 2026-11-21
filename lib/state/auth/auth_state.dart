class AuthState {
  String idToken = '';
  String accessToken = '';
  String refreshToken = '';

  AuthState({
    required this.idToken,
    required this.accessToken,
    required this.refreshToken,
  });

  clear() {
    this.idToken = '';
    this.accessToken = '';
    this.refreshToken = '';
  }
}
