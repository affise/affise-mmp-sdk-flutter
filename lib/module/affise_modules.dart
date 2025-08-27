import 'package:collection/collection.dart';

enum AffiseModules {
  ADSERVICE,
  ADVERTISING,
  ANDROIDID,
  APPSFLYER,
  LINK,
  META,
  NETWORK,
  PERSISTENT,
  PHONE,
  STATUS,
  SUBSCRIPTION,
  RUSTORE,
  HUAWEI,
  TIKTOK;

  static AffiseModules? fromString(String? value) {
    if (value == null) return null;
    return AffiseModules.values.firstWhereOrNull((e) => e.value == value);
  }
}

extension AffiseModulesExt on AffiseModules {
  String get value {
    switch (this) {
      case AffiseModules.ADSERVICE:
        return "AdService";
      case AffiseModules.ADVERTISING:
        return "Advertising";
      case AffiseModules.ANDROIDID:
        return "AndroidId";
      case AffiseModules.APPSFLYER:
        return "AppsFlyer";
      case AffiseModules.LINK:
        return "Link";
      case AffiseModules.META:
        return "Meta";
      case AffiseModules.NETWORK:
        return "Network";
      case AffiseModules.PERSISTENT:
        return "Persistent";
      case AffiseModules.PHONE:
        return "Phone";
      case AffiseModules.STATUS:
        return "Status";
      case AffiseModules.SUBSCRIPTION:
        return "Subscription";
      case AffiseModules.RUSTORE:
        return "RuStore";
      case AffiseModules.HUAWEI:
        return "Huawei";
      case AffiseModules.TIKTOK:
        return "TikTok";
    }
  }
}
