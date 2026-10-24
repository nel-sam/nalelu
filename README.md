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

## Android release signing

Create `android/key.properties` locally with your keystore details:

```properties
storePassword=YOUR_STORE_PASSWORD
keyPassword=YOUR_KEY_PASSWORD
keyAlias=YOUR_KEY_ALIAS
storeFile=/absolute/path/to/upload-keystore.jks
```

Use forward slashes in paths, including on Windows (for example,
`C:/Users/you/upload-keystore.jks`). Relative `storeFile` paths are resolved from
`android/app`.

Release builds use this configuration, never the debug key. Debug builds do not
require this file. All four properties must be present and nonblank when the file
exists. A release build without a configured keystore fails signing validation.
The signing properties and keystore files are already ignored by
`android/.gitignore`; do not commit signing credentials.
