import 'package:material_ui/material_ui.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  final String titleText;
  final String detailsText;
  final TextStyle? detailsStyle;
  final String? loginButtonText;
  final VoidCallback? onLogin;
  final String? skipButtonText;
  final VoidCallback? onSkip;
  final Widget? loginButton;

  const LoginPage({
    Key? key,
    required this.titleText,
    required this.detailsText,
    this.detailsStyle,
    this.loginButtonText,
    this.onLogin,
    this.skipButtonText,
    this.onSkip,
    this.loginButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final hasLogin =
        loginButton != null || (loginButtonText != null && onLogin != null);
    final hasSkip = skipButtonText != null && onSkip != null;

    return Scaffold(
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: SvgPicture.asset(
                      'assets/banners/new_banner.svg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).padding.top + 24,
                    left: 24,
                    child: Text(
                      'nalelu',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w900,
                        color: colorScheme.onPrimary,
                        letterSpacing: -0.6,
                        height: 1.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Bottom content & action buttons
            Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 32),
                    Text(
                      titleText,
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w900,
                        color: colorScheme.onSurface,
                        height: 1.15,
                        letterSpacing: -0.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      detailsText,
                      style: detailsStyle ??
                          TextStyle(
                            fontSize: 16,
                            height: 1.4,
                            color: colorScheme.onSurfaceVariant,
                            fontWeight: FontWeight.w500,
                          ),
                      textAlign: TextAlign.center,
                    ),
                    const Spacer(),
                    if (hasLogin)
                      SizedBox(
                        width: double.infinity,
                        child: loginButton ??
                            SizedBox(
                              height: 58,
                              child: FilledButton(
                                onPressed: onLogin,
                                style: FilledButton.styleFrom(
                                  backgroundColor: colorScheme.primary,
                                  foregroundColor: colorScheme.onPrimary,
                                  shape: const StadiumBorder(),
                                  elevation: 0,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      loginButtonText!,
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: colorScheme.onPrimary,
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Icon(
                                      Icons.arrow_forward_rounded,
                                      size: 20,
                                      color: colorScheme.onPrimary,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                      ),
                    if (hasSkip) ...[
                      const SizedBox(height: 12),
                      TextButton(
                        onPressed: onSkip,
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                        ),
                        child: Text(
                          skipButtonText!,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ),
                    ],
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
