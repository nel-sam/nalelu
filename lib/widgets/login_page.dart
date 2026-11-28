import 'package:material_ui/material_ui.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/widgets/auth/login_button.dart';

class LoginPage extends StatelessWidget {
  final VoidCallback? onLogin;
  final VoidCallback? onSkip;

  const LoginPage({
    super.key,
    this.onLogin,
    this.onSkip,
  });

  @override
  Widget build(BuildContext context) {
    const backgroundColor = Color(0xFFFFF9F2);
    const primaryTextColor = Color(0xFF2E1A11);
    const secondaryTextColor = Color(0xFF5E4336);
    const skipTextColor = Color(0xFF5A2A14);

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            // Top illustration header + 'nalelu' text + optional dismiss button
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
                    child: const Text(
                      'nalelu',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
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
                      NA.t('login_banner_title'),
                      style: const TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w900,
                        color: primaryTextColor,
                        height: 1.15,
                        letterSpacing: -0.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      NA.t('login_banner_details'),
                      style: const TextStyle(
                        fontSize: 16,
                        height: 1.4,
                        color: secondaryTextColor,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const Spacer(),
                    LoginButton(),
                    const SizedBox(height: 12),
                    TextButton(
                      onPressed: onSkip,
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                      ),
                      child: Text(
                        NA.t('skip'),
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: skipTextColor,
                        ),
                      ),
                    ),
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
