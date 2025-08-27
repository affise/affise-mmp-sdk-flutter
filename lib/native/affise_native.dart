import '../affise_init_properties.dart';
import '../callback/error_callback.dart';
import '../debug/export.dart';
import '../deeplink/export.dart';
import '../events/event_to_serialized_event_converter.dart';
import '../events/export.dart';
import '../module/export.dart';
import '../parameters/provider_type.dart';
import '../referrer/export.dart';
import '../settings/affise_settings.dart';
import '../settings/push_token_service.dart';
import '../utils/try_cast.dart';
import 'affise_api_method.dart';
import 'data/data_name.dart';
import 'data/export.dart';
import 'native_base.dart';
import 'utils/export.dart';

class AffiseNative extends NativeBase {

  EventToSerializedEventConverter converter = EventToSerializedEventConverter();

  void init(AffiseInitProperties initProperties) {
    nativeCallbackOnly(
      AffiseApiMethod.ON_INIT_SUCCESS_HANDLER,
      initProperties.onInitSuccessHandler,
    );

    nativeCallbackOnly(
      AffiseApiMethod.ON_INIT_ERROR_HANDLER,
      initProperties.onInitErrorHandler,
    );

    native(AffiseApiMethod.INIT, initProperties.toMap);
  }

  Future<bool> isInitialized() async {
    return await native(AffiseApiMethod.IS_INITIALIZED);
  }

  void sendEvent(Event event) {
    native(AffiseApiMethod.SEND_EVENT, converter.convert(event));
  }

  void sendEventNow(
    Event event,
    OnSendSuccessCallback success,
    OnSendFailedCallback failed,
  ) {
    nativeCallbackGroup(
      AffiseApiMethod.SEND_EVENT_NOW,
      {
        DataName.SUCCESS: success,
        DataName.FAILED: failed,
      },
      converter.convert(event),
    );
  }

  void addPushToken(String pushToken, PushTokenService service) {
    native(
      AffiseApiMethod.ADD_PUSH_TOKEN,
      {
        DataName.PUSH_TOKEN: pushToken,
        DataName.PUSH_TOKEN_SERVICE: service.service,
      },
    );
  }

  void registerDeeplinkCallback(OnDeeplinkCallback callback) {
    nativeCallback(
      AffiseApiMethod.REGISTER_DEEPLINK_CALLBACK,
      callback,
    );

    initialLink();
  }

  void setSecretKey(String secretKey) {
    native(AffiseApiMethod.SET_SECRET_KEY, secretKey);
  }

  void setAutoCatchingTypes(List<AutoCatchingType> types) {
    native(AffiseApiMethod.SET_AUTO_CATCHING_TYPES, types.toStringList);
  }

  void setOfflineModeEnabled(bool enabled) {
    native(AffiseApiMethod.SET_OFFLINE_MODE_ENABLED, enabled);
  }

  Future<bool> isOfflineModeEnabled() async {
    return await native(AffiseApiMethod.IS_OFFLINE_MODE_ENABLED);
  }

  void setBackgroundTrackingEnabled(bool enabled) {
    native(AffiseApiMethod.SET_BACKGROUND_TRACKING_ENABLED, enabled);
  }

  Future<bool> isBackgroundTrackingEnabled() async {
    return await native(AffiseApiMethod.IS_BACKGROUND_TRACKING_ENABLED);
  }

  void setTrackingEnabled(bool enabled) {
    native(AffiseApiMethod.SET_TRACKING_ENABLED, enabled);
  }

  Future<bool> isTrackingEnabled() async {
    return await native(AffiseApiMethod.IS_TRACKING_ENABLED);
  }

  void forget(String userData) {
    native(AffiseApiMethod.FORGET, userData);
  }

  void setEnabledMetrics(bool enabled) {
    native(AffiseApiMethod.SET_ENABLED_METRICS, enabled);
  }

  void crashApplication() {
    native(AffiseApiMethod.CRASH_APPLICATION);
  }

  void getReferrerUrl(ReferrerCallback callback) {
    nativeCallbackOnce(
      AffiseApiMethod.GET_REFERRER_URL_CALLBACK,
      callback,
    );
  }

  void getReferrerUrlValue(ReferrerKey key, ReferrerCallback callback) {
    nativeCallbackOnce(
      AffiseApiMethod.GET_REFERRER_URL_VALUE_CALLBACK,
      callback,
      key.value,
    );
  }

  void getDeferredDeeplink(ReferrerCallback callback) {
    nativeCallbackOnce(
      AffiseApiMethod.GET_DEFERRED_DEEPLINK_CALLBACK,
      callback,
    );
  }

  void getDeferredDeeplinkValue(ReferrerKey key, ReferrerCallback callback) {
    nativeCallbackOnce(
      AffiseApiMethod.GET_DEFERRED_DEEPLINK_VALUE_CALLBACK,
      callback,
      key.value,
    );
  }

  Future<bool> isFirstRun() async {
    return await native(AffiseApiMethod.IS_FIRST_RUN);
  }

  Future<String> getRandomUserId() async {
    return await native(AffiseApiMethod.GET_RANDOM_USER_ID);
  }

  Future<String> getRandomDeviceId() async {
    return await native(AffiseApiMethod.GET_RANDOM_DEVICE_ID);
  }

  Future<Map<ProviderType, dynamic>> getProviders() async {
    Map<Object?, Object?>? data = await native(AffiseApiMethod.GET_PROVIDERS);
    if (data == null) return {};

    final Map<ProviderType, dynamic> result = {};
    data.forEach((keyString, value) {
      ProviderType? key = ProviderType.fromString(keyString.toString());
      if (key != null) {
        result[key] = value;
      }
    });
    return result;
  }

  void registerAppForAdNetworkAttribution(ErrorCallback completionHandler) {
    nativeCallbackOnce(
      AffiseApiMethod.SKAD_REGISTER_ERROR_CALLBACK,
      completionHandler,
    );
  }

  void updatePostbackConversionValue(
      int fineValue, String coarseValue,
      ErrorCallback completionHandler,
  ) {
    final Map<String, dynamic> value = {
      DataName.FINE_VALUE: fineValue,
      DataName.COARSE_VALUE: coarseValue,
    };
    nativeCallbackOnce(
      AffiseApiMethod.SKAD_POSTBACK_ERROR_CALLBACK,
      completionHandler,
      value,
    );
  }

  void validate(DebugOnValidateCallback callback) {
    nativeCallbackOnce(
      AffiseApiMethod.DEBUG_VALIDATE_CALLBACK,
      callback,
    );
  }

  void network(DebugOnNetworkCallback callback) {
    nativeCallback(
      AffiseApiMethod.DEBUG_NETWORK_CALLBACK,
      callback,
    );
  }

  Future<String> versionNative() async {
    return await native(AffiseApiMethod.DEBUG_VERSION_NATIVE);
  }

  ////////////////////////////////////////
  // modules
  ////////////////////////////////////////
  Future<bool> moduleStart(AffiseModules module) async {
    return await native(AffiseApiMethod.MODULE_START, module.value);
  }

  Future<List<AffiseModules>> getModulesInstalled() async {
    List<Object?>? data = await native(AffiseApiMethod.GET_MODULES_INSTALLED);
    final List<AffiseModules> result = [];
    if (data == null) return result;

    for (var value in data) {
      AffiseModules? module = AffiseModules.fromString(value.toString());
      if (module != null) {
        result.add(module);
      }
    }

    return result;
  }

  void getStatus(AffiseModules module, OnKeyValueCallback callback) {
    nativeCallbackOnce(
      AffiseApiMethod.GET_STATUS_CALLBACK,
      callback,
      module.value,
    );
  }

  // Link Module
  void linkResolve(String url, AffiseLinkCallback callback) {
    nativeCallbackOnce(
      AffiseApiMethod.MODULE_LINK_LINK_RESOLVE_CALLBACK,
      callback,
      url,
    );
  }

  // Subscription Module
  void fetchProducts(List<String> ids, AffiseResultCallback<AffiseProductsResult> callback,) {
    nativeCallbackOnce(
      AffiseApiMethod.MODULE_SUBS_FETCH_PRODUCTS_CALLBACK,
      callback,
      ids,
    );
  }

  void purchase(
      AffiseProduct product, AffiseProductType type,
      AffiseResultCallback<AffisePurchasedInfo> callback,
  ) {
    final Map<String, dynamic> data = {
      DataName.PRODUCT: DataMapper.fromProduct(product),
      DataName.TYPE: type.value,
    };

    nativeCallbackOnce(
      AffiseApiMethod.MODULE_SUBS_PURCHASE_CALLBACK,
      callback,
      data,
    );
  }

  // AppsFlyer Module
  appsFlyerLogEvent(String eventName, Map<String, dynamic> eventValues) {
    final Map<String, dynamic> data = {
      DataName.EVENT_NAME: eventName,
      DataName.EVENT_VALUES: eventValues,
    };
    native(AffiseApiMethod.MODULE_APPSFLYER_LOG_EVENT, data);
  }

  // TikTok Module
  tikTokSendEvent(String eventName, Map<String, dynamic> properties, String eventId) {
    final Map<String, dynamic> data = {
      DataName.EVENT_NAME: eventName,
      DataName.EVENT_VALUES: properties,
      DataName.EVENT_ID: eventId,
    };
    native(AffiseApiMethod.MODULE_TIKTOK_EVENT, data);
  }
  ////////////////////////////////////////
  // modules
  ////////////////////////////////////////

  void initialLink() {
    native(AffiseApiMethod.INITIAL_LINK);
  }

  @override
  dynamic handleCallback(
    AffiseApiMethod api,
    dynamic callback,
    dynamic data,
    String? tag,
  ) {
    if (callback == null) return;
    switch (api) {
      case AffiseApiMethod.SEND_EVENT_NOW:
        switch (tag) {
          case DataName.SUCCESS:
            tryCast<OnSendSuccessCallback>(callback)?.call();
            break;
          case DataName.FAILED:
            tryCast<OnSendFailedCallback>(callback)
                ?.call(DebugUtils.toResponse(from: data));
            break;
        }
        break;
      case AffiseApiMethod.ON_INIT_SUCCESS_HANDLER:
        tryCast<OnInitSuccessHandler>(callback)?.call();
        removeApiCallback(api);
        break;
      case AffiseApiMethod.ON_INIT_ERROR_HANDLER:
        tryCast<OnInitErrorHandler>(callback)
            ?.call(DataMapper.toNonNullString(from: data));
        removeApiCallback(api);
        break;
      case AffiseApiMethod.GET_REFERRER_URL_CALLBACK:
        tryCast<ReferrerCallback>(callback)
            ?.call(DataMapper.toNonNullString(from: data));
        break;
      case AffiseApiMethod.GET_REFERRER_URL_VALUE_CALLBACK:
        tryCast<ReferrerCallback>(callback)
            ?.call(DataMapper.toNonNullString(from: data));
        break;
      case AffiseApiMethod.GET_DEFERRED_DEEPLINK_CALLBACK:
        tryCast<ReferrerCallback>(callback)
            ?.call(DataMapper.toNonNullString(from: data));
        break;
      case AffiseApiMethod.GET_DEFERRED_DEEPLINK_VALUE_CALLBACK:
        tryCast<ReferrerCallback>(callback)
            ?.call(DataMapper.toNonNullString(from: data));
        break;
      case AffiseApiMethod.SKAD_REGISTER_ERROR_CALLBACK:
        tryCast<ErrorCallback>(callback)
            ?.call(DataMapper.toNonNullString(from: data));
        break;
      case AffiseApiMethod.SKAD_POSTBACK_ERROR_CALLBACK:
        tryCast<ErrorCallback>(callback)
            ?.call(DataMapper.toNonNullString(from: data));
        break;
      case AffiseApiMethod.DEBUG_VALIDATE_CALLBACK:
        tryCast<DebugOnValidateCallback>(callback)?.call(
          DebugUtils.toValidationStatus(from: data),
        );
        break;
      case AffiseApiMethod.DEBUG_NETWORK_CALLBACK:
        tryCast<DebugOnNetworkCallback>(callback)?.call(
          DebugUtils.toRequestWithKey(from: data, key: DataName.REQUEST),
          DebugUtils.toResponseWithKey(from: data, key: DataName.RESPONSE),
        );
        break;
      ////////////////////////////////////////
      // modules
      ////////////////////////////////////////
      case AffiseApiMethod.GET_STATUS_CALLBACK:
        tryCast<OnKeyValueCallback>(callback)
            ?.call(DataMapper.toAffiseKeyValueList(from: data));
        break;
      // Link Module
      case AffiseApiMethod.MODULE_LINK_LINK_RESOLVE_CALLBACK:
        tryCast<AffiseLinkCallback>(callback)
            ?.call(DataMapper.toNonNullString(from: data));
        break;
      // Subscription Module
      case AffiseApiMethod.MODULE_SUBS_FETCH_PRODUCTS_CALLBACK:
        tryCast<AffiseResultCallback<AffiseProductsResult>>(callback)
            ?.call(DataMapper.toResultAffiseProductsResult(from: data));
        break;
      case AffiseApiMethod.MODULE_SUBS_PURCHASE_CALLBACK:
        tryCast<AffiseResultCallback<AffisePurchasedInfo>>(callback)
            ?.call(DataMapper.toResultAffisePurchasedInfo(from: data));
        break;
      ////////////////////////////////////////
      // modules
      ////////////////////////////////////////
      default:
        break;
    }
  }

  @override
  handleStream(AffiseApiMethod api, dynamic callback, dynamic data) {
    if (callback == null) return;
    switch (api) {
      case AffiseApiMethod.REGISTER_DEEPLINK_CALLBACK:
        tryCast<OnDeeplinkCallback>(callback)
            ?.call(DataMapper.toDeeplinkValue(from: data));
        break;
      default:
        break;
    }
  }
}
