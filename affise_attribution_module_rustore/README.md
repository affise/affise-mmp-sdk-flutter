# Affise Attribution Module RuStore

Flutter wrapper package for the Affise RuStore native module.

This package does not expose a Dart API. Add it to a Flutter application to include the native RuStore module dependency for Android.

## Integration

### Integrate as dependency

Run console command

```console
flutter pub add affise_attribution_lib
flutter pub add affise_attribution_module_rustore
```

or add dependency to `pubspec.yaml` in your flutter application

```yaml
dependencies:
  affise_attribution_lib: ^1.7.15
  affise_attribution_module_rustore: ^1.7.15
```

## Native Dependencies

Android:

```kotlin
com.affise:module-rustore:1.7.15
```