import 'package:flutter/scheduler.dart';

import '../../native/affise_native.dart';
import '../affise_has_module.dart';
import '../affise_modules.dart';
import 'affise_module_appsflyer_api.dart';

abstract class AffiseAppsFlyer implements AffiseModuleAppsFlyerApi {
  final AffiseNative _native;

  AffiseAppsFlyer(this._native);

  @override
  void logEvent(String eventName, Map<String, dynamic> eventValues) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _native.appsFlyerLogEvent(eventName, eventValues);
    });
  }

  @override
  Future<bool> hasModule() {
    return isModuleInit(_native, AffiseModules.APPSFLYER);
  }
}
