import 'package:flutter/scheduler.dart';

import '../../native/affise_native.dart';
import '../affise_has_module.dart';
import '../affise_modules.dart';
import 'affise_module_tiktok_api.dart';

abstract class AffiseTikTok implements AffiseModuleTikTokApi {
  final AffiseNative _native;

  AffiseTikTok(this._native);

  @override
  void sendEvent(String eventName, Map<String, dynamic> properties, String eventId) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _native.tikTokSendEvent(eventName, properties, eventId);
    });
  }

  @override
  Future<bool> hasModule() {
    return isModuleInit(_native, AffiseModules.TIKTOK);
  }
}
