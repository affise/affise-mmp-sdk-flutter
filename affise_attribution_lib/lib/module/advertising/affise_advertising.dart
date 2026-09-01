import 'package:flutter/scheduler.dart';

import '../../native/affise_native.dart';
import '../affise_has_module.dart';
import '../affise_modules.dart';
import 'affise_module_advertising_api.dart';

abstract class AffiseAdvertising implements AffiseModuleAdvertisingApi {
  final AffiseNative _native;

  AffiseAdvertising(this._native);

  @override
  void startModule() {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _native.advertisingStartModule();
    });
  }

  @override
  Future<bool> hasModule() {
    return isModuleInit(_native, AffiseModules.ADVERTISING);
  }
}
