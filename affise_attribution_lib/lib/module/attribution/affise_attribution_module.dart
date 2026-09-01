import 'dart:async';
import 'package:affise_attribution_lib/module/tiktok/affise_tiktok.dart';
import 'package:flutter/scheduler.dart';
import '../../affise.dart';
import '../../native/affise_native.dart';
import '../appsflyer/affise_appsflyer.dart';
import '../link/affise_link.dart';
import '../subscription/affise_subscription.dart';
import '../advertising/affise_advertising.dart';
import 'affise_attribution_module_api.dart';


abstract class AffiseAttributionModules implements AffiseAttributionModulesApi {

  final AffiseNative _native;

  @override
  final AffiseModuleAdvertisingApi advertising;

  @override
  final AffiseModuleAppsFlyerApi appsFlyer;

  @override
  final AffiseModuleLinkApi link;

  @override
  final AffiseModuleSubscriptionApi subscription;

  @override
  final AffiseModuleTikTokApi tikTok;

  AffiseAttributionModules(this._native) :
        advertising = _AffiseModuleAdvertising(_native),
        appsFlyer = _AffiseModuleAppsFlyer(_native),
        link = _AffiseModuleLink(_native),
        subscription = _AffiseModuleSubscription(_native),
        tikTok = _AffiseModuleTikTok(_native);

  /// Get module status
  @override
  getStatus(AffiseModules module, OnKeyValueCallback callback)  {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _native.getStatus(module, callback);
    });
  }

  /// Get installed modules
  @override
  Future<List<AffiseModules>> getModulesInstalled() async {
    var completer = Completer<List<AffiseModules>>();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _native.getModulesInstalled().then((value) {
        completer.complete(value);
      }).catchError((error) {
        completer.completeError(error);
      });
    });
    return completer.future;
  }
}

class _AffiseModuleAdvertising extends AffiseAdvertising {
  _AffiseModuleAdvertising(super.native);
}

class _AffiseModuleAppsFlyer extends AffiseAppsFlyer {
  _AffiseModuleAppsFlyer(super.native);
}

class _AffiseModuleLink extends AffiseLink {
  _AffiseModuleLink(super.native);
}

class _AffiseModuleSubscription extends AffiseSubscription {
  _AffiseModuleSubscription(super.native);
}

class _AffiseModuleTikTok extends AffiseTikTok {
  _AffiseModuleTikTok(super.native);
}
