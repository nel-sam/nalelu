import 'package:flutter/material.dart';
import 'package:nalelu/na_helpers.dart';

class CoachIntro extends StatelessWidget {
  final VoidCallback onNext;

  const CoachIntro({Key? key, required this.onNext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).colorScheme.primary;

    return Stack(
      children: [
        Positioned.fill(
          child: Center(
            child: Icon(
              Icons.quiz_outlined,
              size: 320,
              color: primary.withValues(alpha: 0.08),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Spacer(),
              Text(
                NA.t('coach_intro_title'),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 24),
              Text(
                NA.t('coach_intro_body'),
                textAlign: TextAlign.center,
                style: NA.fontStyleNormal(context),
              ),
              const Spacer(),
              FilledButton.icon(
                onPressed: onNext,
                icon: const Icon(Icons.arrow_forward),
                label: Text(NA.t('next')),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
