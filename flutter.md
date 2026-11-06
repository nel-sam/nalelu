# Flutter Development Preferences

## Philosophy

- Prefer simple, maintainable solutions over architectural complexity.
- Prioritize readability and long-term maintainability.
- Optimize for practical delivery rather than framework purity.
- Assume an experienced software engineer audience.
- Skip beginner explanations unless explicitly requested.
- Explain tradeoffs when suggesting architectural patterns.

## General Approach

- Use Flutter's built-in capabilities before introducing packages.
- Keep dependencies to a minimum.
- Avoid architecture decisions that create more complexity than business value.

Before adding a package, ask:

> What problem does this solve that Flutter cannot already solve?

## Widgets

- Prefer small, focused widgets.
- Extract widgets for readability.
- Avoid deeply nested build methods.
- Favor clear and explicit layouts.

Prefer:

```dart
UserCard(user: user)
```

Over:

```dart
DynamicWidgetFactory.build(config)
```

Unless dynamic rendering is a core requirement.

## State Management

### Preferred order

1. setState
2. ValueNotifier
3. Provider
4. Riverpod when complexity justifies it

Do not introduce BloC, Redux, MobX, GetX, or other state management frameworks by default.

Choose the simplest solution that satisfies the requirements.

## Architecture

- Prefer straightforward feature-oriented organization.
- Avoid excessive layers.
- Avoid "clean architecture" implementations with large amounts of boilerplate unless the project genuinely benefits from them.
- Do not create interfaces simply to satisfy architectural dogma.

## Dart

Use modern Dart features where appropriate.

Prefer:

- null safety
- final variables
- immutable models
- named parameters
- records where they improve readability

Example:

```dart
class User {
  final String id;
  final String name;

  const User({
    required this.id,
    required this.name,
  });
}
```

## API Integration

- Keep networking separate from UI concerns.
- Use dedicated service classes.
- Keep API code predictable and easy to follow.
- Avoid scattering HTTP calls throughout widgets.

## Async Code

- Use async/await.
- Handle loading states.
- Handle error states.
- Avoid deeply nested Future chains.

## Navigation

- Prefer straightforward navigation structures.
- Avoid overly complex routing systems unless application size requires them.

## Performance

- Flutter is already fast.
- Do not prematurely optimize.
- Measure before optimizing.

Avoid introducing complexity solely for theoretical performance gains.

## Packages

Favor mature, widely adopted packages.

Be conservative when introducing:

- niche