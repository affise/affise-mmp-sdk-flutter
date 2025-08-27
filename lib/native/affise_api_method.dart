enum AffiseApiMethod {
  INIT,
  IS_INITIALIZED,
  SEND_EVENT,
  SEND_EVENT_NOW,
  ADD_PUSH_TOKEN,
  REGISTER_WEB_VIEW,
  UNREGISTER_WEB_VIEW,
  SET_SECRET_KEY,
  SET_AUTO_CATCHING_TYPES,
  SET_OFFLINE_MODE_ENABLED,
  IS_OFFLINE_MODE_ENABLED,
  SET_BACKGROUND_TRACKING_ENABLED,
  IS_BACKGROUND_TRACKING_ENABLED,
  SET_TRACKING_ENABLED,
  IS_TRACKING_ENABLED,
  FORGET,
  SET_ENABLED_METRICS,
  CRASH_APPLICATION,
  GET_RANDOM_USER_ID,
  GET_RANDOM_DEVICE_ID,
  GET_PROVIDERS,
  IS_FIRST_RUN,

  // callbacks
  ON_INIT_SUCCESS_HANDLER,
  ON_INIT_ERROR_HANDLER,
  GET_REFERRER_URL_CALLBACK,
  GET_REFERRER_URL_VALUE_CALLBACK,
  GET_DEFERRED_DEEPLINK_CALLBACK,
  GET_DEFERRED_DEEPLINK_VALUE_CALLBACK,
  REGISTER_DEEPLINK_CALLBACK,
  SKAD_REGISTER_ERROR_CALLBACK,
  SKAD_POSTBACK_ERROR_CALLBACK,

  // debug
  DEBUG_VALIDATE_CALLBACK,
  DEBUG_NETWORK_CALLBACK,
  DEBUG_VERSION_NATIVE,

  ////////////////////////////////////////
  // modules
  ////////////////////////////////////////
  MODULE_START,
  GET_MODULES_INSTALLED,
  GET_STATUS_CALLBACK,
  // AppsFlyer Module
  MODULE_APPSFLYER_LOG_EVENT,
  // Link Module
  MODULE_LINK_LINK_RESOLVE_CALLBACK,
  // Subscription Module
  MODULE_SUBS_FETCH_PRODUCTS_CALLBACK,
  MODULE_SUBS_PURCHASE_CALLBACK,
  // TikTok Module
  MODULE_TIKTOK_EVENT,
  ////////////////////////////////////////
  // modules
  ////////////////////////////////////////
  INITIAL_LINK,
}

AffiseApiMethod? apiMethodFrom(String? name) {
  if (name == null) return null;
  return AffiseApiMethod.values.firstWhere((e) => e.apiName == name);
}

extension AffiseApiMethodExt on AffiseApiMethod {
  String get apiName {
    switch (this) {
      case AffiseApiMethod.INIT:
        return "init";
      case AffiseApiMethod.IS_INITIALIZED:
        return "is_initialized";
      case AffiseApiMethod.SEND_EVENT:
        return "send_event";
      case AffiseApiMethod.SEND_EVENT_NOW:
        return "send_event_now";
      case AffiseApiMethod.ADD_PUSH_TOKEN:
        return "add_push_token";
      case AffiseApiMethod.REGISTER_WEB_VIEW:
        return "register_web_view";
      case AffiseApiMethod.UNREGISTER_WEB_VIEW:
        return "unregister_web_view";
      case AffiseApiMethod.SET_SECRET_KEY:
        return "set_secret_id";
      case AffiseApiMethod.SET_AUTO_CATCHING_TYPES:
        return "set_auto_catching_types";
      case AffiseApiMethod.SET_OFFLINE_MODE_ENABLED:
        return "set_offline_mode_enabled";
      case AffiseApiMethod.IS_OFFLINE_MODE_ENABLED:
        return "is_offline_mode_enabled";
      case AffiseApiMethod.SET_BACKGROUND_TRACKING_ENABLED:
        return "set_background_tracking_enabled";
      case AffiseApiMethod.IS_BACKGROUND_TRACKING_ENABLED:
        return "is_background_tracking_enabled";
      case AffiseApiMethod.SET_TRACKING_ENABLED:
        return "set_tracking_enabled";
      case AffiseApiMethod.IS_TRACKING_ENABLED:
        return "is_tracking_enabled";
      case AffiseApiMethod.FORGET:
        return "forget";
      case AffiseApiMethod.SET_ENABLED_METRICS:
        return "set_enabled_metrics";
      case AffiseApiMethod.CRASH_APPLICATION:
        return "crash_application";
      case AffiseApiMethod.GET_RANDOM_USER_ID:
        return "get_random_user_id";
      case AffiseApiMethod.GET_RANDOM_DEVICE_ID:
        return "get_random_device_id";
      case AffiseApiMethod.GET_PROVIDERS:
        return "get_providers";
      case AffiseApiMethod.IS_FIRST_RUN:
        return "is_first_run";
      case AffiseApiMethod.ON_INIT_SUCCESS_HANDLER:
        return "on_init_success_handler";
      case AffiseApiMethod.ON_INIT_ERROR_HANDLER:
        return "on_init_error_handler";
      case AffiseApiMethod.GET_REFERRER_URL_CALLBACK:
        return "get_referrer_url_callback";
      case AffiseApiMethod.GET_REFERRER_URL_VALUE_CALLBACK:
        return "get_referrer_url_value_callback";
      case AffiseApiMethod.GET_DEFERRED_DEEPLINK_CALLBACK:
        return "get_deferred_deeplink_callback";
      case AffiseApiMethod.GET_DEFERRED_DEEPLINK_VALUE_CALLBACK:
        return "get_deferred_deeplink_value_callback";
      case AffiseApiMethod.REGISTER_DEEPLINK_CALLBACK:
        return "register_deeplink_callback";
      case AffiseApiMethod.SKAD_REGISTER_ERROR_CALLBACK:
        return "skad_register_error_callback";
      case AffiseApiMethod.SKAD_POSTBACK_ERROR_CALLBACK:
        return "skad_postback_error_callback";
      case AffiseApiMethod.DEBUG_VALIDATE_CALLBACK:
        return "debug_validate_callback";
      case AffiseApiMethod.DEBUG_NETWORK_CALLBACK:
        return "debug_network_callback";
      case AffiseApiMethod.DEBUG_VERSION_NATIVE:
        return "debug_version_native";
      ////////////////////////////////////////
      // modules
      ////////////////////////////////////////
      case AffiseApiMethod.MODULE_START:
        return "module_start";
      case AffiseApiMethod.GET_MODULES_INSTALLED:
        return "get_modules_installed";
      case AffiseApiMethod.GET_STATUS_CALLBACK:
        return "get_status_callback";
      // AppsFlyer Module
      case AffiseApiMethod.MODULE_APPSFLYER_LOG_EVENT:
        return "module_appsflyer_log_event";
      // Link Module
      case AffiseApiMethod.MODULE_LINK_LINK_RESOLVE_CALLBACK:
        return "module_link_link_resolve_callback";
      // Subscription Module
      case AffiseApiMethod.MODULE_SUBS_FETCH_PRODUCTS_CALLBACK:
        return "module_subs_fetch_products_callback";
      case AffiseApiMethod.MODULE_SUBS_PURCHASE_CALLBACK:
        return "module_subs_purchase_callback";
      // TikTok Module
      case AffiseApiMethod.MODULE_TIKTOK_EVENT:
        return "module_tiktok_event";
      ////////////////////////////////////////
      // modules
      ////////////////////////////////////////
      case AffiseApiMethod.INITIAL_LINK:
        return "initial_link";
    }
  }
}
