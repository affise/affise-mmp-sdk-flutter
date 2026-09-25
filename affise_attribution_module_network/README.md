# Affise Attribution Module Network

Flutter wrapper package for the Affise Network native module.

This package does not expose a Dart API. Add it to a Flutter application to include the native Network module dependency for Android.

## Integration

### Integrate as dependency

Run console command

```console
flutter pub add affise_attribution_lib
flutter pub add affise_attribution_module_network
```

or add dependency to `pubspec.yaml` in your flutter application

```yaml
dependencies:
  affise_attribution_lib: ^1.7.16
  affise_attribution_module_network: ^1.7.16
```

## Native Dependencies

Android:

```kotlin
com.affise:module-network:1.7.16
```