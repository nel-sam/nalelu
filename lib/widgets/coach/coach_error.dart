import 'package:flutter/material.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/services/lang-coach-service.dart';

/// Friendly error view with a retry button, shared by the question-loading
/// and results-fetching states of the Coach.
class CoachError extends StatelessWidget {
  final String message;
  final Object? error;
  final VoidCallback onRetry;

  const CoachError({
    Key? key,
    required this.message,
    required this.error,
    required this.onRetry,
  }) : super(key: key);

  bool get _isRateLimited =>
      error is LangCoachException &&
      (error as LangCoachException).statusCode == 429;

  @override
  Widget build(BuildContext context) {
    final rateLimited = _isRateLimited;

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
                rateLimited
                    ? Icons.hourglass_top_outlined
                    : Icons.cloud_off_outlined,
                size: 64,
                color: Theme.of(context).colorScheme.primary),
            const SizedBox(height: 16),
            Text(message,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium),
            if (error != null)
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(rateLimited ? NA.t('coach_rate_limited') : '$error',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodySmall),
              ),
            const SizedBox(height: 24),
            rateLimited
                ? const SizedBox()
                : FilledButton.icon(
                    onPressed: onRetry,
                    icon: const Icon(Icons.refresh),
                    label: Text(NA.t('retry')),
                  ),
          ],
        ),
      ),
    );
  }
}
