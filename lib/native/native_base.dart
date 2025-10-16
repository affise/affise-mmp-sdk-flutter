import '../utils/export.dart';
import 'affise_api_method.dart';
import 'native_base_platform.dart';

class NativeBase extends NativeBasePlatform {
  static const _UUID = "callback_uuid";
  static const _TAG = "callback_tag";

  final Map<String, Map<String, dynamic>> _callbacksGroup = {};
  final Map<String, dynamic> _callbacksOnce = {};
  final Map<AffiseApiMethod, dynamic> _callbacks = {};

  Future<T?> native<T>(AffiseApiMethod api, [dynamic data]) {
    Map<String, dynamic> apiData = {
      api.apiName: data,
    };
    return apiCall(api.apiName, apiData);
  }

  void nativeCallbackOnce(AffiseApiMethod api, dynamic callback, [dynamic data]) {
    String uuid = Uuid.generate();
    Map<String, dynamic> apiData = {
      api.apiName: data,
      _UUID: uuid,
    };
    _callbacksOnce[uuid] = callback;
    apiCall(api.apiName, apiData);
  }

  void nativeCallbackGroup(AffiseApiMethod api, Map<String, dynamic> callbackGroup, [dynamic data]) {
    String uuid = Uuid.generate();
    Map<String, dynamic> apiData = {
      api.apiName: data,
      _UUID: uuid,
    };
    _callbacksGroup[uuid] = callbackGroup;
    apiCall(api.apiName, apiData);
  }

  void nativeCallback(AffiseApiMethod api, dynamic callback, [dynamic data]) {
    Map<String, dynamic> apiData = {
      api.apiName: data,
    };
    _callbacks[api] = callback;
    apiCall(api.apiName, apiData);
  }

  void nativeCallbackOnly(AffiseApiMethod api, dynamic callback) {
    _callbacks[api] = callback;
  }

  @override
  dynamic apiCallback(String apiName, dynamic arguments) {
    AffiseApiMethod? api = apiMethodFrom(apiName);
    if (api == null) return null;
    Map<Object?, Object?>? map = tryCast<Map<Object?, Object?>>(arguments);
    String? uuid = map?[_UUID]?.toString();
    String? tag = map?[_TAG]?.toString();
    dynamic data = map?[apiName];

    dynamic result;

    if (uuid == null || uuid.isEmpty) {
      dynamic callback = _callbacks[api];
      result = handleCallback(api, callback, data, null);
    } else if (tag != null && tag.isNotEmpty) {
      dynamic callback = _callbacksGroup[uuid]?[tag];
      result = handleCallback(api, callback, data, tag);
      _callbacksGroup.remove(uuid);
    } else {
      dynamic callback = _callbacksOnce[uuid];
      result = handleCallback(api, callback, data, null);
      _callbacksOnce.remove(uuid);
    }

    return result;
  }

  void removeApiCallback(AffiseApiMethod api) {
    if(!_callbacksOnce.containsKey(api.apiName)) return;
    _callbacksOnce.remove(api.apiName);
  }

  dynamic handleCallback(AffiseApiMethod api, dynamic callback, dynamic data, String? tag) {
    return null;
  }

  @override
  dynamic apiStream(String apiName, dynamic arguments) {
    AffiseApiMethod? api = apiMethodFrom(apiName);
    if (api == null) return null;

    Map<Object?, Object?>? map = tryCast<Map<Object?, Object?>>(arguments);
    dynamic data = map?[apiName];

    dynamic callback = _callbacks[api];
    handleStream(api, callback, data);
  }

  void handleStream(AffiseApiMethod api, dynamic callback, dynamic data) {
  }
}
