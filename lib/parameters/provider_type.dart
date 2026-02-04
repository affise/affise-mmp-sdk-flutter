import '../utils/list_ext.dart';

enum ProviderType {
  AFFISE_APP_ID,
  AFFISE_PKG_APP_NAME,
  AFF_APP_NAME_DASHBOARD,
  APP_VERSION,
  APP_VERSION_RAW,
  STORE,
  TRACKER_TOKEN,
  TRACKER_NAME,
  FIRST_TRACKER_TOKEN,
  FIRST_TRACKER_NAME,
  LAST_TRACKER_TOKEN,
  LAST_TRACKER_NAME,
  OUTDATED_TRACKER_TOKEN,
  INSTALLED_TIME,
  FIRST_OPEN_TIME,
  INSTALLED_HOUR,
  FIRST_OPEN_HOUR,
  INSTALL_FIRST_EVENT,
  INSTALL_BEGIN_TIME,
  INSTALL_FINISH_TIME,
  REFERRER_INSTALL_VERSION,
  REFERRAL_TIME,
  REFERRER_CLICK_TIME,
  REFERRER_CLICK_TIME_SERVER,
  REFERRER_GOOGLE_PLAY_INSTANT,
  CREATED_TIME,
  CREATED_TIME_MILLI,
  CREATED_TIME_HOUR,
  UNINSTALL_TIME,
  REINSTALL_TIME,
  LAST_SESSION_TIME,
  CPU_TYPE,
  HARDWARE_NAME,
  DEVICE_MANUFACTURER,
  DEEPLINK_CLICK,
  DEVICE_ATLAS_ID,
  AFFISE_DEVICE_ID,
  AFFISE_ALT_DEVICE_ID,
  ANDROID_ID,
  ANDROID_ID_MD5,
  REFTOKEN,
  REFTOKENS,
  REFERRER,
  REFERRER_UPDATED,
  USER_AGENT,
  MCCODE,
  MNCODE,
  REGION,
  COUNTRY,
  LANGUAGE,
  DEVICE_NAME,
  DEVICE_TYPE,
  OS_NAME,
  PLATFORM,
  SDK_PLATFORM,
  API_LEVEL_OS,
  AFFISE_SDK_VERSION,
  OS_VERSION,
  RANDOM_USER_ID,
  AFFISE_SDK_POS,
  TIMEZONE_DEV,
  AFFISE_EVENT_NAME,
  AFFISE_EVENT_TOKEN,
  LAST_TIME_SESSION,
  TIME_SESSION,
  AFFISE_SESSION_COUNT,
  LIFETIME_SESSION_COUNT,
  AFFISE_DEEPLINK,
  AFFISE_PART_PARAM_NAME,
  AFFISE_PART_PARAM_NAME_TOKEN,
  AFFISE_APP_TOKEN,
  LABEL,
  AFFISE_SDK_SECRET_ID,
  UUID,
  AFFISE_APP_OPENED,
  PUSHTOKEN,
  AFFISE_EVENTS_COUNT,
  AFFISE_SDK_EVENTS_COUNT,
  AFFISE_METRICS_EVENTS_COUNT,
  AFFISE_INTERNAL_EVENTS_COUNT,
  IS_ROOTED,
  IS_EMULATOR,

  // advertising
  GAID_ADID,
  GAID_ADID_MD5,
  OAID,
  OAID_MD5,
  ADID,
  ALTSTR_ADID,
  FIREOS_ADID,
  COLOROS_ADID,

  // meta
  META,

  // network
  MAC_SHA1,
  MAC_MD5,
  CONNECTION_TYPE,
  PROXY_IP_ADDRESS,

  // phone
  NETWORK_TYPE,
  ISP,
  ;

  static ProviderType? fromString(String? value) {
    if (value == null) return null;
    return ProviderType.values.firstElementOrNull((e) => e.provider == value);
  }
}

extension ProviderTypeExt on ProviderType {
  String get provider {
    switch (this) {
      case ProviderType.AFFISE_APP_ID:
        return "affise_app_id";
      case ProviderType.AFFISE_PKG_APP_NAME:
        return "affise_pkg_app_name";
      case ProviderType.AFF_APP_NAME_DASHBOARD:
        return "affise_app_name_dashboard";
      case ProviderType.APP_VERSION:
        return "app_version";
      case ProviderType.APP_VERSION_RAW:
        return "app_version_raw";
      case ProviderType.STORE:
        return "store";
      case ProviderType.TRACKER_TOKEN:
        return "tracker_token";
      case ProviderType.TRACKER_NAME:
        return "tracker_name";
      case ProviderType.FIRST_TRACKER_TOKEN:
        return "first_tracker_token";
      case ProviderType.FIRST_TRACKER_NAME:
        return "first_tracker_name";
      case ProviderType.LAST_TRACKER_TOKEN:
        return "last_tracker_token";
      case ProviderType.LAST_TRACKER_NAME:
        return "last_tracker_name";
      case ProviderType.OUTDATED_TRACKER_TOKEN:
        return "outdated_tracker_token";
      case ProviderType.INSTALLED_TIME:
        return "installed_time";
      case ProviderType.FIRST_OPEN_TIME:
        return "first_open_time";
      case ProviderType.INSTALLED_HOUR:
        return "installed_hour";
      case ProviderType.FIRST_OPEN_HOUR:
        return "first_open_hour";
      case ProviderType.INSTALL_FIRST_EVENT:
        return "install_first_event";
      case ProviderType.INSTALL_BEGIN_TIME:
        return "install_begin_time";
      case ProviderType.INSTALL_FINISH_TIME:
        return "install_finish_time";
      case ProviderType.REFERRER_INSTALL_VERSION:
        return "referrer_install_version";
      case ProviderType.REFERRAL_TIME:
        return "referral_time";
      case ProviderType.REFERRER_CLICK_TIME:
        return "referrer_click_time";
      case ProviderType.REFERRER_CLICK_TIME_SERVER:
        return "referrer_click_time_server";
      case ProviderType.REFERRER_GOOGLE_PLAY_INSTANT:
        return "referrer_google_play_instant";
      case ProviderType.CREATED_TIME:
        return "created_time";
      case ProviderType.CREATED_TIME_MILLI:
        return "created_time_milli";
      case ProviderType.CREATED_TIME_HOUR:
        return "created_time_hour";
      case ProviderType.UNINSTALL_TIME:
        return "uninstall_time";
      case ProviderType.REINSTALL_TIME:
        return "reinstall_time";
      case ProviderType.LAST_SESSION_TIME:
        return "last_session_time";
      case ProviderType.CPU_TYPE:
        return "cpu_type";
      case ProviderType.HARDWARE_NAME:
        return "hardware_name";
      case ProviderType.DEVICE_MANUFACTURER:
        return "device_manufacturer";
      case ProviderType.DEEPLINK_CLICK:
        return "deeplink_click";
      case ProviderType.DEVICE_ATLAS_ID:
        return "device_atlas_id";
      case ProviderType.AFFISE_DEVICE_ID:
        return "affise_device_id";
      case ProviderType.AFFISE_ALT_DEVICE_ID:
        return "affise_alt_device_id";
      case ProviderType.ANDROID_ID:
        return "android_id";
      case ProviderType.ANDROID_ID_MD5:
        return "android_id_md5";
      case ProviderType.REFTOKEN:
        return "reftoken";
      case ProviderType.REFTOKENS:
        return "reftokens";
      case ProviderType.REFERRER:
        return "referrer";
      case ProviderType.REFERRER_UPDATED:
        return "referrer_updated";
      case ProviderType.USER_AGENT:
        return "user_agent";
      case ProviderType.MCCODE:
        return "mccode";
      case ProviderType.MNCODE:
        return "mncode";
      case ProviderType.REGION:
        return "region";
      case ProviderType.COUNTRY:
        return "country";
      case ProviderType.LANGUAGE:
        return "language";
      case ProviderType.DEVICE_NAME:
        return "device_name";
      case ProviderType.DEVICE_TYPE:
        return "device_type";
      case ProviderType.OS_NAME:
        return "os_name";
      case ProviderType.PLATFORM:
        return "platform";
      case ProviderType.SDK_PLATFORM:
        return "sdk_platform";
      case ProviderType.API_LEVEL_OS:
        return "api_level_os";
      case ProviderType.AFFISE_SDK_VERSION:
        return "affise_sdk_version";
      case ProviderType.OS_VERSION:
        return "os_version";
      case ProviderType.RANDOM_USER_ID:
        return "random_user_id";
      case ProviderType.AFFISE_SDK_POS:
        return "affise_sdk_pos";
      case ProviderType.TIMEZONE_DEV:
        return "timezone_dev";
      case ProviderType.AFFISE_EVENT_NAME:
        return "affise_event_name";
      case ProviderType.AFFISE_EVENT_TOKEN:
        return "affise_event_token";
      case ProviderType.LAST_TIME_SESSION:
        return "last_time_session";
      case ProviderType.TIME_SESSION:
        return "time_session";
      case ProviderType.AFFISE_SESSION_COUNT:
        return "affise_session_count";
      case ProviderType.LIFETIME_SESSION_COUNT:
        return "lifetime_session_count";
      case ProviderType.AFFISE_DEEPLINK:
        return "affise_deeplink";
      case ProviderType.AFFISE_PART_PARAM_NAME:
        return "affise_part_param_name";
      case ProviderType.AFFISE_PART_PARAM_NAME_TOKEN:
        return "affise_part_param_name_token";
      case ProviderType.AFFISE_APP_TOKEN:
        return "affise_app_token";
      case ProviderType.LABEL:
        return "label";
      case ProviderType.AFFISE_SDK_SECRET_ID:
        return "affise_sdk_secret_id";
      case ProviderType.UUID:
        return "uuid";
      case ProviderType.AFFISE_APP_OPENED:
        return "affise_app_opened";
      case ProviderType.PUSHTOKEN:
        return "pushtoken";
      case ProviderType.AFFISE_EVENTS_COUNT:
        return "affise_events_count";
      case ProviderType.AFFISE_SDK_EVENTS_COUNT:
        return "affise_sdk_events_count";
      case ProviderType.AFFISE_METRICS_EVENTS_COUNT:
        return "affise_metrics_events_count";
      case ProviderType.AFFISE_INTERNAL_EVENTS_COUNT:
        return "affise_internal_events_count";
      case ProviderType.IS_ROOTED:
        return "is_rooted";
      case ProviderType.IS_EMULATOR:
        return "is_emulator";

      // advertising
      case ProviderType.GAID_ADID:
        return "gaid_adid";
      case ProviderType.GAID_ADID_MD5:
        return "gaid_adid_md5";
      case ProviderType.OAID:
        return "oaid";
      case ProviderType.OAID_MD5:
        return "oaid_md5";
      case ProviderType.ADID:
        return "adid";
      case ProviderType.ALTSTR_ADID:
        return "altstr_adid";
      case ProviderType.FIREOS_ADID:
        return "fireos_adid";
      case ProviderType.COLOROS_ADID:
        return "coloros_adid";

      // meta
      case ProviderType.META:
        return "meta";

      // network
      case ProviderType.MAC_SHA1:
        return "mac_sha1";
      case ProviderType.MAC_MD5:
        return "mac_md5";
      case ProviderType.CONNECTION_TYPE:
        return "connection_type";
      case ProviderType.PROXY_IP_ADDRESS:
        return "proxy_ip_address";

      // phone
      case ProviderType.NETWORK_TYPE:
        return "network_type";
      case ProviderType.ISP:
        return "isp";
    }
  }

  static ProviderType? fromString(String? value) {
    if (value == null) return null;
    return ProviderType.values.firstElementOrNull((e) => e.provider == value);
  }
}
