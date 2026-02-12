import 'dart:async';
import 'package:flutter/scheduler.dart';
import '../native/affise_native.dart';
import 'affise_debug_api.dart';
import 'network/debug_on_network_callback.dart';
import 'validate/debug_on_validate_callback.dart';

abstract class AffiseDebug implements AffiseDebugApi {
  final AffiseNative _native;

  AffiseDebug(this._native);

  /// Debug validate
  @override
  void validate(DebugOnValidateCallback callback) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _native.validate(callback);
    });
  }

  /// Debug network request/response
  @override
  void network(DebugOnNetworkCallback callback) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _native.network(callback);
    });
  }

  /// Debug get version of flutter library
  @override
  String version() {
    return "1.6.51";
  }

  /// Debug get version of native library Android/iOS
  @override
  Future<String> versionNative() {
    var completer = Completer<String>();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _native.versionNative().then((value) {
        completer.complete(value);
      }).catchError((error) {
        completer.completeError(error);
      });
    });
    return completer.future;
  }
}