import 'package:flutter/material.dart';

class LoginBannerCard extends StatelessWidget {
  final String titleText;
  final String detailsText;
  final TextStyle? detailsStyle;
  final String? loginButtonText;
  final VoidCallback? onLogin;
  final String? skipButtonText;
  final VoidCallback? onSkip;
  final Widget? loginButton;
  final VoidCallback? onDismiss;

  const LoginBannerCard({
    Key? key,
    required this.titleText,
    required this.detailsText,
    this.detailsStyle,
    this.loginButtonText,
    this.onLogin,
    this.skipButtonText,
    this.onSkip,
    this.loginButton,
    this.onDismiss,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final isDark = theme.brightness == Brightness.dark;

    final hasLogin =
        loginButton != null || (loginButtonText != null && onLogin != null);
    final hasSkip = skipButtonText != null && onSkip != null;
    final hasFooter = hasLogin || hasSkip;

    return Container(
      constraints: const BoxConstraints(maxWidth: 420),
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
      decoration: BoxDecoration(
        color: isDark
            ? colorScheme.surfaceContainerHigh
            : colorScheme.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(18.0),
        border: Border.all(
          color: colorScheme.outlineVariant.withValues(alpha: 0.4),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: isDark ? 0.35 : 0.08),
            blurRadius: 24,
            offset: const Offset(0, 12),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(17.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Top body section
            Padding(
              padding: const EdgeInsets.fromLTRB(24.0, 22.0, 18.0, 24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.insights_rounded,
                        color: colorScheme.primary,
                        size: 24,
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          titleText,
                          style: theme.textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.2,
                          ),
                        ),
                      ),
                      if (onDismiss != null)
                        IconButton(
                          visualDensity: VisualDensity.compact,
                          icon: Icon(
                            Icons.close_rounded,
                            size: 22,
                            color: theme.textTheme.bodyMedium?.color
                                ?.withValues(alpha: 0.55),
                          ),
                          onPressed: onDismiss,
                        ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text(
                      detailsText,
                      style: detailsStyle ??
                          theme.textTheme.bodyMedium?.copyWith(
                            height: 1.5,
                            color: theme.textTheme.bodyMedium?.color
                                ?.withValues(alpha: 0.78),
                          ),
                    ),
                  ),
                ],
              ),
            ),

            // Tinted footer bar matching the reference layout
            if (hasFooter)
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 14.0,
                ),
                decoration: BoxDecoration(
                  color: isDark
                      ? colorScheme.surfaceContainerHighest
                          .withValues(alpha: 0.65)
                      : colorScheme.surfaceContainerLow,
                  border: Border(
                    top: BorderSide(
                      color: colorScheme.outlineVariant.withValues(alpha: 0.35),
                      width: 1,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    if (hasSkip)
                      TextButton(
                        onPressed: onSkip,
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 18,
                            vertical: 12,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          skipButtonText!,
                          style: theme.textTheme.labelLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: theme.textTheme.bodyMedium?.color
                                ?.withValues(alpha: 0.75),
                          ),
                        ),
                      ),
                    if (hasSkip && hasLogin) const SizedBox(width: 12),
                    if (loginButton != null)
                      loginButton!
                    else if (loginButtonText != null && onLogin != null)
                      FilledButton(
                        onPressed: onLogin,
                        style: FilledButton.styleFrom(
                          backgroundColor: colorScheme.primary,
                          foregroundColor: colorScheme.onPrimary,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 22,
                            vertical: 12,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          loginButtonText!,
                          style: const TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
