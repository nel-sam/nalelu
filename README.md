# nalelu

A new Flutter project.

## Android release builds

The release build loads [ProGuard rules](android/app/proguard-rules.pro) that
preserve the reflective database constructor used by WorkManager 2.7.0 and
Room 2.2.5, currently pulled in by Mobile Ads. Keep this rule while using these
dependency versions; otherwise R8 can remove the constructor and the app crashes
in `InitializationProvider` before Flutter starts.

Validate release changes with both a signed build and an Android device or
emulator launch; a successful debug build does not exercise R8 shrinking.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
