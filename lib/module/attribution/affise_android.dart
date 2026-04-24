import 'package:flutter/scheduler.dart';
import '../../native/affise_native.dart';
import 'affise_android_api.dart';

abstract class AffiseAndroid implements AffiseAndroidApi {

  final AffiseNative _native;

  AffiseAndroid(this._native);

  /// Erases all user data from mobile and sends GDPREvent [userData]
  @override
  void forget(String userData) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _native.forget(userData);
    });
  }

  @override
  void crashApplication() {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _native.crashApplication();
    });
  }
}