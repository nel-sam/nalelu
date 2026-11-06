import 'package:flutter/material.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/services/coach_result.dart';
import 'package:nalelu/widgets/coach/coach_error.dart';

class CoachResultsPage extends StatelessWidget {
  final List<CoachAnswer> answers;
  final Future<CoachFeedback> feedbackFuture;
  final VoidCallback onRetry;

  const CoachResultsPage({
    Key? key,
    required this.answers,
    required this.feedbackFuture,
    required this.onRetry,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<CoachFeedback>(
      future: feedbackFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return const _LoadingView();
        }

        if (snapshot.hasError) {
          return CoachError(
            message: NA.t('coach_results_error'),
            error: snapshot.error,
            onRetry: onRetry,
          );
        }

        return _FeedbackView(
          answers: answers,
          feedback: snapshot.data!.feedback,
        );
      },
    );
  }
}

/// Spinner with a gently pulsing coach icon in the middle.
class _LoadingView extends StatefulWidget {
  const _LoadingView();

  @override
  State<_LoadingView> createState() => _LoadingViewState();
}

class _LoadingViewState extends State<_LoadingView>
    with SingleTickerProviderStateMixin {
  late final AnimationController _pulse = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 900),
  )..repeat(reverse: true);

  @override
  void dispose() {
    _pulse.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).colorScheme.primary;

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 96,
              height: 96,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: 96,
                    height: 96,
                    child: CircularProgressIndicator(
                      strokeWidth: 6,
                      color: primary,
                      backgroundColor: primary.withValues(alpha: 0.15),
                    ),
                  ),
                  ScaleTransition(
                    scale: Tween(begin: 0.85, end: 1.1).animate(
                      CurvedAnimation(parent: _pulse, curve: Curves.easeInOut),
                    ),
                    child: Icon(Icons.psychology_outlined,
                        size: 44, color: primary),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 28),
            Text(
              NA.t('coach_getting_results'),
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}

class _FeedbackView extends StatefulWidget {
  final List<CoachAnswer> answers;
  final String feedback;

  const _FeedbackView({required this.answers, required this.feedback});

  @override
  State<_FeedbackView> createState() => _FeedbackViewState();
}

class _FeedbackViewState extends State<_FeedbackView>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 1800),
  )..forward();

  // Staggered entrance: badge pops, then the ring fills, then the card slides.
  late final Animation<double> _badge = CurvedAnimation(
    parent: _controller,
    curve: const Interval(0.0, 0.35, curve: Curves.elasticOut),
  );
  late final Animation<double> _ring = CurvedAnimation(
    parent: _controller,
    curve: const Interval(0.2, 0.75, curve: Curves.easeOutCubic),
  );
  late final Animation<double> _card = CurvedAnimation(
    parent: _controller,
    curve: const Interval(0.55, 1.0, curve: Curves.easeOutCubic),
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  int get _correct => widget.answers.where((a) => a.isCorrect).length;
  int get _total => widget.answers.length;
  double get _ratio => _total == 0 ? 0 : _correct / _total;

  _ScoreTier get _tier {
    if (_ratio >= 0.8) return _ScoreTier.high;
    if (_ratio >= 0.5) return _ScoreTier.mid;
    return _ScoreTier.low;
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final primary = scheme.primary;
    final tier = _tier;

    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(24, 16, 24, 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ScaleTransition(
            scale: _badge,
            child: _Badge(icon: tier.icon, color: primary),
          ),
          const SizedBox(height: 16),
          FadeTransition(
            opacity: _badge,
            child: Text(
              NA.t(tier.titleKey),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: primary,
                    fontWeight: FontWeight.w800,
                  ),
            ),
          ),
          const SizedBox(height: 24),
          AnimatedBuilder(
            animation: _ring,
            builder: (context, _) => _ScoreRing(
              progress: _ratio * _ring.value,
              correct: (_correct * _ring.value).round(),
              total: _total,
              color: primary,
            ),
          ),
          const SizedBox(height: 32),
          FadeTransition(
            opacity: _card,
            child: SlideTransition(
              position: Tween(begin: const Offset(0, 0.15), end: Offset.zero)
                  .animate(_card),
              child: _FeedbackCard(feedback: widget.feedback),
            ),
          ),
        ],
      ),
    );
  }
}

enum _ScoreTier { high, mid, low }

extension on _ScoreTier {
  IconData get icon {
    switch (this) {
      case _ScoreTier.high:
        return Icons.emoji_events_outlined;
      case _ScoreTier.mid:
        return Icons.thumb_up_alt_outlined;
      case _ScoreTier.low:
        return Icons.rocket_launch_outlined;
    }
  }

  String get titleKey {
    switch (this) {
      case _ScoreTier.high:
        return 'coach_score_high';
      case _ScoreTier.mid:
        return 'coach_score_mid';
      case _ScoreTier.low:
        return 'coach_score_low';
    }
  }
}

class _Badge extends StatelessWidget {
  final IconData icon;
  final Color color;

  const _Badge({required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 96,
        height: 96,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
          boxShadow: [
            BoxShadow(
              color: color.withValues(alpha: 0.4),
              blurRadius: 24,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: Icon(icon, size: 52, color: Colors.white),
      ),
    );
  }
}

class _ScoreRing extends StatelessWidget {
  final double progress;
  final int correct;
  final int total;
  final Color color;

  const _ScoreRing({
    required this.progress,
    required this.correct,
    required this.total,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Center(
      child: SizedBox(
        width: 150,
        height: 150,
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: 150,
              height: 150,
              child: CircularProgressIndicator(
                value: progress,
                strokeWidth: 12,
                strokeCap: StrokeCap.round,
                color: color,
                backgroundColor: color.withValues(alpha: 0.12),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '$correct',
                  style: textTheme.displaySmall?.copyWith(
                    color: color,
                    fontWeight: FontWeight.w800,
                    height: 1,
                  ),
                ),
                Text(
                  NA.t('coach_score_of', inserts: ['$total']),
                  style: textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.2,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/// The coach's feedback, presented as a shaded speech bubble.
class _FeedbackCard extends StatelessWidget {
  final String feedback;

  const _FeedbackCard({required this.feedback});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 24),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(4),
          topRight: Radius.circular(24),
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
        color: scheme.primary.withValues(alpha: isDark ? 0.18 : 0.08),
        border: Border.all(color: scheme.primary.withValues(alpha: 0.35)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: isDark ? 0.4 : 0.08),
            blurRadius: 16,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.record_voice_over_outlined, color: scheme.primary),
              const SizedBox(width: 8),
              Text(
                NA.t('coach_results_title'),
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: scheme.primary,
                      fontWeight: FontWeight.w700,
                    ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            feedback,
            style: NA.fontStyleNormal(context).copyWith(height: 1.5),
          ),
        ],
      ),
    );
  }
}
