import 'package:flutter/scheduler.dart';
import '../../native/affise_native.dart';
import '../../export.dart';
import 'affise_ios_api.dart';

abstract class AffiseIOS implements AffiseIOSApi {
  final AffiseNative _native;

  AffiseIOS(this._native);

  /// SKAd registerAppForAdNetworkAttribution
  @override
  void registerAppForAdNetworkAttribution(ErrorCallback completionHandler) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _native.registerAppForAdNetworkAttribution(completionHandler);
    });
  }

  /// SKAd updatePostbackConversionValue
  @override
  void updatePostbackConversionValue(int fineValue, CoarseValue coarseValue, ErrorCallback completionHandler) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _native.updatePostbackConversionValue(fineValue, coarseValue.value, completionHandler);
    });
  }
}