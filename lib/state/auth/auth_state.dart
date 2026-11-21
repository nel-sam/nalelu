class AuthState {
  final String idToken;
  final String accessToken;
  final String refreshToken;

  const AuthState({
    required this.idToken,
    required this.accessToken,
    required this.refreshToken,
  });

  AuthState copyWith({
    String? idToken,
    String? accessToken,
    String? refreshToken,
  }) {
    return AuthState(
      idToken: idToken ?? this.idToken,
      accessToken: accessToken ?? this.accessToken,
      refreshToken: refreshToken ?? this.refreshToken,
    );
  }
}
