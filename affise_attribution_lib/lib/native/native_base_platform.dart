import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import '../utils/try_cast.dart';
import 'native_base.dart';

abstract class NativeBasePlatform extends PlatformInterface {

  static const _CHANNEL = "affise_sdk/api";
  static const _EVENTS_CHANNEL = 'affise_sdk/api_events';

  static NativeBasePlatform _instance = NativeBase();

  static final Object _token = Object();

  static NativeBasePlatform get instance => _instance;

  /// Platform-specific plugins should set this with their own platform-specific
  /// class that extends [NativeBasePlatform] when they register themselves.
  static set instance(NativeBasePlatform instance) {
    PlatformInterface.verify(instance, _token);
    _instance = instance;
  }

  NativeBasePlatform() : super(token: _token) {
    if (kDebugMode) {
      _methodChannel = const OptionalMethodChannel(_CHANNEL);
    }

    _nativeCallback();
    _nativeStream();
  }

  /// The method channel used to interact with the native platform.
  MethodChannel _methodChannel = const MethodChannel(_CHANNEL);
  final EventChannel _event = const EventChannel(_EVENTS_CHANNEL);

  Future<T?> apiCall<T>(String apiName, [Object? data]) {
    return _methodChannel.invokeMethod(apiName, data);
  }

  dynamic apiCallback(String apiName, dynamic arguments) {}

  dynamic apiStream(String apiName, dynamic arguments) {}

  void _nativeCallback() {
    _methodChannel.setMethodCallHandler((MethodCall call) async {
      try {
        apiCallback(call.method, call.arguments);
      } catch (e) {
        if (kDebugMode) {
          print(e.toString());
        }
      }
    });
  }

  void _nativeStream() {
    _event.receiveBroadcastStream().listen((value) {
      var stream = tryCast<Map<Object?, Object?>>(value);
      stream?.forEach((method, arguments) {
        apiStream(method.toString(), value);
      });
    });
  }
}
