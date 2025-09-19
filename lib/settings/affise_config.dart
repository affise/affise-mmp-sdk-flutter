import 'package:collection/collection.dart';

enum AffiseConfig {
  FB_APP_ID;

  static AffiseConfig? fromString(String? value) {
    if (value == null) return null;
    return AffiseConfig.values.firstWhereOrNull((e) => e.value == value);
  }
}

extension AffiseConfigExt on AffiseConfig {
  String get value {
    switch (this) {
      case AffiseConfig.FB_APP_ID:
        return "fb_app_id";
    }
  }
}

extension AffiseConfigMapExt on Map<AffiseConfig, dynamic> {
  Map<String, dynamic> get toStringMap {
    return map((k, v) => MapEntry(k.value, v));
  }
}