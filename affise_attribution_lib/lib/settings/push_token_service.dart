enum PushTokenService {
  FIREBASE,
  APPLE
}

extension PushTokenServiceExt on PushTokenService {
  String get service {
    switch (this) {
      case PushTokenService.FIREBASE:
        return "fms";
      case PushTokenService.APPLE:
        return "apns";
    }
  }
}
