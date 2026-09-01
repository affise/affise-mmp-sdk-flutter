import '../affise_has_module.dart';
import '../affise_modules.dart';
import '../affise_result_callback.dart';
import 'package:flutter/scheduler.dart';

import '../../native/affise_native.dart';
import 'affise_product.dart';
import 'affise_product_type.dart';
import 'affise_products_result.dart';
import 'affise_purchased_info.dart';
import 'affise_module_subscription_api.dart';

abstract class AffiseSubscription implements AffiseModuleSubscriptionApi {
  final AffiseNative _native;

  AffiseSubscription(this._native);

  @override
  void fetchProducts(
    List<String> ids,
    AffiseResultCallback<AffiseProductsResult> callback,
  ) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _native.fetchProducts(ids, callback);
    });
  }

  @override
  void purchase(
    AffiseProduct product,
    AffiseProductType type,
    AffiseResultCallback<AffisePurchasedInfo> callback,
  ) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _native.purchase(product, type, callback);
    });
  }

  @override
  Future<bool> hasModule() {
    return isModuleInit(_native, AffiseModules.SUBSCRIPTION);
  }
}
