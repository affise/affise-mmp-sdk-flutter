import 'dart:async';

import 'package:flutter/scheduler.dart';

import 'debug/affise_debug.dart';
import 'module/internal.dart';
import 'native/affise_native.dart';
import 'export.dart';

export 'export.dart';

class Affise {
  static final AffiseNative _native = AffiseNative();

  /// Affise SDK settings builder
  static AffiseSettings settings({required String affiseAppId, required String secretKey}) {
    return AffiseSettings(affiseAppId, secretKey);
  }

  /// Init [AffiseComponent] with [initProperties]
  static void start(AffiseInitProperties initProperties) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _native.init(initProperties);
    });
  }

  @Deprecated('Use `Affise.settings.setOnInitSuccess` instead')
  static Future<bool> isInitialized() async {
    var completer = Completer<bool>();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _native.isInitialized().then((value) {
        completer.complete(value);
      }).catchError((error) {
        completer.completeError(error);
      });
    });
    return completer.future;
  }

  /// Store and send [event]
  static void sendEvent(Event event) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _native.sendEvent(event);
    });
  }

  /// Send [event] now
  static void sendEventNow(Event event, OnSendSuccessCallback success, OnSendFailedCallback failed) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _native.sendEventNow(event, success, failed);
    });
  }

  /// Add [pushToken]
  static void addPushToken(String pushToken, PushTokenService service) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _native.addPushToken(pushToken, service);
    });
  }

  /// Register [callback] for deeplink
  static void registerDeeplinkCallback(OnDeeplinkCallback callback) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _native.registerDeeplinkCallback(callback);
    });
  }

  /// Set new [secretKey]
  static void setSecretKey(String secretKey) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _native.setSecretKey(secretKey);
    });
  }

  /// Send enabled autoCatching [types]
  // static void setAutoCatchingTypes(List<AutoCatchingType> types) {
  //   SchedulerBinding.instance.addPostFrameCallback((_) {
  //     _native.setAutoCatchingTypes(types);
  //   });
  // }

  /// Sets offline mode to [enabled] state
  ///
  /// When enabled, no network activity should be triggered by this library,
  /// but background work is not paused. When offline mode is enabled,
  /// all recorded events should be sent
  static void setOfflineModeEnabled(bool enabled) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _native.setOfflineModeEnabled(enabled);
    });
  }

  /// Returns current offline mode state
  static Future<bool> isOfflineModeEnabled() async {
    var completer = Completer<bool>();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _native.isOfflineModeEnabled().then((value) {
        completer.complete(value);
      }).catchError((error) {
        completer.completeError(error);
      });
    });
    return completer.future;
  }

  /// Sets background tracking mode to [enabled] state
  ///
  /// When disabled, library should not generate any tracking events while in background
  static void setBackgroundTrackingEnabled(bool enabled) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _native.setBackgroundTrackingEnabled(enabled);
    });
  }

  /// Returns current background tracking state
  static Future<bool> isBackgroundTrackingEnabled() async {
    var completer = Completer<bool>();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _native.isBackgroundTrackingEnabled().then((value) {
        completer.complete(value);
      }).catchError((error) {
        completer.completeError(error);
      });
    });
    return completer.future;
  }

  /// Sets offline mode to [enabled] state
  ///
  /// When disabled, library should not generate any tracking events
  static void setTrackingEnabled(bool enabled) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _native.setTrackingEnabled(enabled);
    });
  }

  /// Returns current tracking state
  static Future<bool> isTrackingEnabled() async {
    var completer = Completer<bool>();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _native.isTrackingEnabled().then((value) {
        completer.complete(value);
      }).catchError((error) {
        completer.completeError(error);
      });
    });
    return completer.future;
  }

  /// Set [enabled] collect metrics
  ///
  /// When disabled, library should not generate any metrics events,
  /// but will send the saved metrics events
  // static void setEnabledMetrics(bool enabled) {
  //   SchedulerBinding.instance.addPostFrameCallback((_) {
  //     _native.setEnabledMetrics(enabled);
  //   });
  // }

  /// Get module status
  @Deprecated('Use `Affise.module.getStatus` instead')
  static void getStatus(AffiseModules module, OnKeyValueCallback callback)  {
    Affise.module.getStatus(module, callback);
  }

  /// Get installed modules
  @Deprecated('Use `Affise.module.getModulesInstalled` instead')
  static Future<List<AffiseModules>> getModulesInstalled() async {
    return Affise.module.getModulesInstalled();
  }

  /// Get random User Id
  static Future<String> getRandomUserId() async {
    var completer = Completer<String>();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _native.getRandomUserId().then((value) {
        completer.complete(value);
      }).catchError((error) {
        completer.completeError(error);
      });
    });
    return completer.future;
  }

  /// Get random Device Id
  static Future<String> getRandomDeviceId() async {
    var completer = Completer<String>();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _native.getRandomDeviceId().then((value) {
        completer.complete(value);
      }).catchError((error) {
        completer.completeError(error);
      });
    });
    return completer.future;
  }

  /// Get providers map
  static Future<Map<ProviderType, dynamic>> getProviders() async {
    var completer = Completer<Map<ProviderType, dynamic>>();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _native.getProviders().then((value) {
        completer.complete(value);
      }).catchError((error) {
        completer.completeError(error);
      });
    });
    return completer.future;
  }

  /// Is it first run
  static Future<bool> isFirstRun() async {
    var completer = Completer<bool>();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _native.isFirstRun().then((value) {
        completer.complete(value);
      }).catchError((error) {
        completer.completeError(error);
      });
    });
    return completer.future;
  }

  /// Get referrer
  @Deprecated('Use `Affise.getReferrerUrl` instead')
  static void getReferrer(ReferrerCallback callback) {
    getReferrerUrl(callback);
  }

  /// Get referrer Value
  @Deprecated('Use `Affise.getReferrerUrlValue` instead')
  static void getReferrerValue(ReferrerKey key, ReferrerCallback callback) {
    getReferrerUrlValue(key, callback);
  }

  /// Get referrer
  static void getReferrerUrl(ReferrerCallback callback) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _native.getReferrerUrl(callback);
    });
  }

  /// Get referrer Value
  static void getReferrerUrlValue(ReferrerKey key, ReferrerCallback callback) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _native.getReferrerUrlValue(key, callback);
    });
  }

  /// Get referrer on server
  @Deprecated('Use `Affise.getDeferredDeeplink` instead')
  static void getReferrerOnServer(ReferrerCallback callback) {
    Affise.getDeferredDeeplink(callback);
  }

  /// Get referrer on server value
  @Deprecated('Use `Affise.getDeferredDeeplinkValue` instead')
  static void getReferrerOnServerValue(ReferrerKey key, ReferrerCallback callback) {
    Affise.getDeferredDeeplinkValue(key, callback);
  }

  /// Get deferred deeplink on server
  static void getDeferredDeeplink(ReferrerCallback callback) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _native.getDeferredDeeplink(callback);
    });
  }

  /// Get deferred deeplink value on server
  static void getDeferredDeeplinkValue(ReferrerKey key, ReferrerCallback callback) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _native.getDeferredDeeplinkValue(key, callback);
    });
  }

  static AffiseAndroidApi android = _AffiseAndroid(_native);
  static AffiseIOSApi ios = _AffiseIOS(_native);

  static AffiseAttributionModulesApi module = _AffiseAttributionModules(_native);
  
  static AffiseDebug debug = _AffiseDebug(_native);
}

class _AffiseAndroid extends AffiseAndroid {
  _AffiseAndroid(super.native);
}

class _AffiseIOS extends AffiseIOS {
  _AffiseIOS(super.native);
}

class _AffiseAttributionModules extends AffiseAttributionModules {
  _AffiseAttributionModules(super.native);
}

class _AffiseDebug extends AffiseDebug {
  _AffiseDebug(super.native);
}