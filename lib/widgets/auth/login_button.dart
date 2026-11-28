import 'package:material_ui/material_ui.dart';
import 'package:nalelu/services/auth/auth_service.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/services/auth/token_storage.dart';
import 'package:nalelu/state/auth/auth_notifier.dart';
import 'package:provider/provider.dart';

class LoginButton extends StatefulWidget {
  const LoginButton({super.key});

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton>
    with TickerProviderStateMixin {
  final authService = AuthService();
  final tokenStorage = TokenStorage();
  late AnimationController _pulseController;
  bool isLoading = false;
  bool isLoggedIn = false;

  @override
  void initState() {
    super.initState();
    _pulseController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat(reverse: true, count: 2);
  }

  dynamic _logout(AuthNotifier authNotifier) async {
    if (mounted) {
      setState(() {
        isLoading = true;
      });
    }

    final currentIdToken = authNotifier.state.idToken;

    // TODO: Fix logout. It is currently not properly handled and the
    // user remains logged in for some reason
    final response = await authService.performLogout(currentIdToken);
    print(response); // TODO: remove

    await tokenStorage.clearTokens();
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

    final tokens = await authService.performOAuthLogin();

    if (!mounted) return;

    await tokenStorage.saveTokens(tokens);

    authNotifier.login(
      idToken: tokens.idToken,
      accessToken: tokens.accessToken,
      refreshToken: tokens.refreshToken,
    );

    if (mounted) {
      setState(() {
        isLoggedIn = true;
        isLoading = false;
      });
    }
  }

  Widget _buildButton(AuthNotifier authNotifier) {
    final button = ElevatedButton(
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
    );

    if (!isLoggedIn) {
      return ScaleTransition(
        scale: Tween<double>(begin: 1.0, end: 1.08).animate(
          CurvedAnimation(parent: _pulseController, curve: Curves.easeInOut),
        ),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).colorScheme.primary.withAlpha(51),
                blurRadius: 20,
                spreadRadius: 2,
              ),
            ],
          ),
          child: button,
        ),
      );
    }

    return button;
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ((context) => AuthNotifier()),
      child: Consumer<AuthNotifier>(
        builder: (context, authNotifier, child) => _buildButton(authNotifier),
      ),
    );
  }
}
