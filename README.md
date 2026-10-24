# nalelu

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## iOS startup troubleshooting

Google Mobile Ads requires the `GADApplicationIdentifier` entry in
[`ios/Runner/Info.plist`](ios/Runner/Info.plist). Preserve this app ID when
regenerating the iOS project; without it, startup aborts with
`GADInvalidInitializationException`. After changing the plist, stop the app and
rebuild it; hot reload and hot restart do not apply native configuration changes.

`WFIsolatedShortcutRunner` indexing and sandbox-extension messages are iOS
Shortcuts diagnostics, not the cause of this crash.
