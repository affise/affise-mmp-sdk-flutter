import 'package:flutter/scheduler.dart';

import '../../native/affise_native.dart';
import '../affise_has_module.dart';
import '../affise_modules.dart';
import 'affise_module_link_api.dart';
import 'affise_link_callback.dart';

abstract class AffiseLink implements AffiseModuleLinkApi {
  final AffiseNative _native;

  AffiseLink(this._native);

  @override
  void resolve(String url, AffiseLinkCallback callback) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _native.linkResolve(url, callback);
    });
  }

  @override
  Future<bool> hasModule() {
    return isModuleInit(_native, AffiseModules.LINK);
  }
}
