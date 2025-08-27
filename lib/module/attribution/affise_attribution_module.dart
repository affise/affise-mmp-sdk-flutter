import 'dart:async';
import 'package:affise_attribution_lib/module/tiktok/affise_tiktok.dart';
import 'package:flutter/scheduler.dart';
import '../../affise.dart';
import '../../native/affise_native.dart';
import '../appsflyer/affise_appsflyer.dart';
import '../link/affise_link.dart';
import '../subscription/affise_subscription.dart';
import 'affise_attribution_module_api.dart';


abstract class AffiseAttributionModules implements AffiseAttributionModulesApi {

  final AffiseNative _native;

  @override
  final AffiseModuleAppsFlyerApi appsFlyer;

  @override
  final AffiseModuleLinkApi link;

  @override
  final AffiseModuleSubscriptionApi subscription;

  @override
  final AffiseModuleTikTokApi tikTok;

  AffiseAttributionModules(this._native) :
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

  /// Manual module start
  @override
  Future<bool> moduleStart(AffiseModules module) async {
    var completer = Completer<bool>();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _native.moduleStart(module).then((value) {
        completer.complete(value);
      }).catchError((error) {
        completer.completeError(error);
      });
    });
    return completer.future;
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

  /// Module Link url Resolve
  @Deprecated('Use `Affise.module.link.resolve` instead')
  @override
  void linkResolve(String url, AffiseLinkCallback callback) {
    link.resolve(url, callback);
  }

  /// Module subscription fetchProducts
  @Deprecated('Use `Affise.module.subscription.fetchProducts` instead')
  @override
  void fetchProducts(
      List<String> ids,
      AffiseResultCallback<AffiseProductsResult> callback,
      ) {
    subscription.fetchProducts(ids, callback);
  }

  /// Module subscription purchase
  @Deprecated('Use `Affise.module.subscription.purchase` instead')
  @override
  void purchase(
      AffiseProduct product,
      AffiseProductType type,
      AffiseResultCallback<AffisePurchasedInfo> callback,
      ) {
    subscription.purchase(product, type, callback);
  }
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
