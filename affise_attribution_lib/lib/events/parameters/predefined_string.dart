import 'predefined.dart';

enum PredefinedString {
  ADREV_AD_TYPE,
  CITY,
  COUNTRY,
  REGION,
  CLASS,
  CONTENT_ID,
  CONTENT_TYPE,
  CURRENCY,
  CUSTOMER_USER_ID,
  DESCRIPTION,
  DESTINATION_A,
  DESTINATION_B,
  DESTINATION_LIST,
  ORDER_ID,
  PAYMENT_INFO_AVAILABLE,
  PREFERRED_NEIGHBORHOODS,
  PURCHASE_CURRENCY,
  RECEIPT_ID,
  REGISTRATION_METHOD,
  SEARCH_STRING,
  SUBSCRIPTION_ID,
  SUCCESS,
  SUGGESTED_DESTINATIONS,
  SUGGESTED_HOTELS,
  VALIDATED,
  ACHIEVEMENT_ID,
  COUPON_CODE,
  CUSTOMER_SEGMENT,
  DEEP_LINK,
  NEW_VERSION,
  OLD_VERSION,
  PARAM_01,
  PARAM_02,
  PARAM_03,
  PARAM_04,
  PARAM_05,
  PARAM_06,
  PARAM_07,
  PARAM_08,
  PARAM_09,
  PARAM_10,
  REVIEW_TEXT,
  TUTORIAL_ID,
  VIRTUAL_CURRENCY_NAME,
  STATUS,
  BRAND,
  BRICK,
  CATALOGUE_ID,
  CHANNEL_TYPE,
  CUSTOMER_TYPE,
  SEGMENT,
  UTM_CAMPAIGN,
  UTM_MEDIUM,
  UTM_SOURCE,
  VERTICAL,
  VOUCHER_CODE,
  CLICK_ID,
  CAMPAIGN_ID,
  EVENT_NAME,
  PID,
  PRODUCT_ID,
  CONVERSION_ID,
  CONTENT_NAME,
  PRODUCT_NAME,
  SOURCE,
  NETWORK,
  UNIT,
  PLACEMENT,
}

extension PredefinedStringExt on PredefinedString {
  String get value {
    return "${Predefined.PREFIX}$_value";
  }

  String get _value {
    switch (this) {
      case PredefinedString.ADREV_AD_TYPE:
        return "adrev_ad_type";
      case PredefinedString.CITY:
        return "city";
      case PredefinedString.COUNTRY:
        return "country";
      case PredefinedString.REGION:
        return "region";
      case PredefinedString.CLASS:
        return "class";
      case PredefinedString.CONTENT_ID:
        return "content_id";
      case PredefinedString.CONTENT_TYPE:
        return "content_type";
      case PredefinedString.CURRENCY:
        return "currency";
      case PredefinedString.CUSTOMER_USER_ID:
        return "customer_user_id";
      case PredefinedString.DESCRIPTION:
        return "description";
      case PredefinedString.DESTINATION_A:
        return "destination_a";
      case PredefinedString.DESTINATION_B:
        return "destination_b";
      case PredefinedString.DESTINATION_LIST:
        return "destination_list";
      case PredefinedString.ORDER_ID:
        return "order_id";
      case PredefinedString.PAYMENT_INFO_AVAILABLE:
        return "payment_info_available";
      case PredefinedString.PREFERRED_NEIGHBORHOODS:
        return "preferred_neighborhoods";
      case PredefinedString.PURCHASE_CURRENCY:
        return "purchase_currency";
      case PredefinedString.RECEIPT_ID:
        return "receipt_id";
      case PredefinedString.REGISTRATION_METHOD:
        return "registration_method";
      case PredefinedString.SEARCH_STRING:
        return "search_string";
      case PredefinedString.SUBSCRIPTION_ID:
        return "subscription_id";
      case PredefinedString.SUCCESS:
        return "success";
      case PredefinedString.SUGGESTED_DESTINATIONS:
        return "suggested_destinations";
      case PredefinedString.SUGGESTED_HOTELS:
        return "suggested_hotels";
      case PredefinedString.VALIDATED:
        return "validated";
      case PredefinedString.ACHIEVEMENT_ID:
        return "achievement_id";
      case PredefinedString.COUPON_CODE:
        return "coupon_code";
      case PredefinedString.CUSTOMER_SEGMENT:
        return "customer_segment";
      case PredefinedString.DEEP_LINK:
        return "deep_link";
      case PredefinedString.NEW_VERSION:
        return "new_version";
      case PredefinedString.OLD_VERSION:
        return "old_version";
      case PredefinedString.PARAM_01:
        return "param_01";
      case PredefinedString.PARAM_02:
        return "param_02";
      case PredefinedString.PARAM_03:
        return "param_03";
      case PredefinedString.PARAM_04:
        return "param_04";
      case PredefinedString.PARAM_05:
        return "param_05";
      case PredefinedString.PARAM_06:
        return "param_06";
      case PredefinedString.PARAM_07:
        return "param_07";
      case PredefinedString.PARAM_08:
        return "param_08";
      case PredefinedString.PARAM_09:
        return "param_09";
      case PredefinedString.PARAM_10:
        return "param_10";
      case PredefinedString.REVIEW_TEXT:
        return "review_text";
      case PredefinedString.TUTORIAL_ID:
        return "tutorial_id";
      case PredefinedString.VIRTUAL_CURRENCY_NAME:
        return "virtual_currency_name";
      case PredefinedString.STATUS:
        return "status";
      case PredefinedString.BRAND:
        return "brand";
      case PredefinedString.BRICK:
        return "brick";
      case PredefinedString.CATALOGUE_ID:
        return "catalogue_id";
      case PredefinedString.CHANNEL_TYPE:
        return "channel_type";
      case PredefinedString.CUSTOMER_TYPE:
        return "customer_type";
      case PredefinedString.SEGMENT:
        return "segment";
      case PredefinedString.UTM_CAMPAIGN:
        return "utm_campaign";
      case PredefinedString.UTM_MEDIUM:
        return "utm_medium";
      case PredefinedString.UTM_SOURCE:
        return "utm_source";
      case PredefinedString.VERTICAL:
        return "vertical";
      case PredefinedString.VOUCHER_CODE:
        return "voucher_code";
      case PredefinedString.CLICK_ID: 
        return "click_id";
      case PredefinedString.CAMPAIGN_ID: 
        return "campaign_id";
      case PredefinedString.EVENT_NAME: 
        return "event_name";
      case PredefinedString.PID: 
        return "pid";
      case PredefinedString.PRODUCT_ID: 
        return "product_id";
      case PredefinedString.CONVERSION_ID: 
        return "conversion_id";
      case PredefinedString.CONTENT_NAME: 
        return "content_name";
      case PredefinedString.PRODUCT_NAME: 
        return "product_name";
      case PredefinedString.SOURCE:
        return "source";
      case PredefinedString.NETWORK:
        return "network";
      case PredefinedString.UNIT:
        return "unit";
      case PredefinedString.PLACEMENT:
        return "placement";
    }
  }
}
