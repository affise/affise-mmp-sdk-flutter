enum ReferrerKey {
  AD_ID,
  CAMPAIGN_ID,
  CLICK_ID,
  AFFISE_AD,
  AFFISE_AD_ID,
  AFFISE_AD_TYPE,
  AFFISE_ADSET,
  AFFISE_ADSET_ID,
  AFFISE_AFFC_ID,
  AFFISE_CHANNEL,
  AFFISE_CLICK_LOOK_BACK,
  AFFISE_COST_CURRENCY,
  AFFISE_COST_MODEL,
  AFFISE_COST_VALUE,
  AFFISE_DEEPLINK,
  AFFISE_KEYWORDS,
  AFFISE_MEDIA_TYPE,
  AFFISE_MODEL,
  AFFISE_OS,
  AFFISE_PARTNER,
  AFFISE_REF,
  AFFISE_SITE_ID,
  AFFISE_SUB_SITE_ID,
  AFFC,
  PID,
  SUB_1,
  SUB_2,
  SUB_3,
  SUB_4,
  SUB_5,
  AFFISE_SUB_1,
  AFFISE_SUB_2,
  AFFISE_SUB_3,
  AFFISE_SUB_4,
  AFFISE_SUB_5,
}

extension ReferrerKeyValue on ReferrerKey {
  String get value {
    switch (this) {
      case ReferrerKey.AD_ID:
        return "ad_id";
      case ReferrerKey.CAMPAIGN_ID:
        return "campaign_id";
      case ReferrerKey.CLICK_ID:
        return "clickid";
      case ReferrerKey.AFFISE_AD:
        return "affise_ad";
      case ReferrerKey.AFFISE_AD_ID:
        return "affise_ad_id";
      case ReferrerKey.AFFISE_AD_TYPE:
        return "affise_ad_type";
      case ReferrerKey.AFFISE_ADSET:
        return "affise_adset";
      case ReferrerKey.AFFISE_ADSET_ID:
        return "affise_adset_id";
      case ReferrerKey.AFFISE_AFFC_ID:
        return "affise_affc_id";
      case ReferrerKey.AFFISE_CHANNEL:
        return "affise_channel";
      case ReferrerKey.AFFISE_CLICK_LOOK_BACK:
        return "affise_click_lookback";
      case ReferrerKey.AFFISE_COST_CURRENCY:
        return "affise_cost_currency";
      case ReferrerKey.AFFISE_COST_MODEL:
        return "affise_cost_model";
      case ReferrerKey.AFFISE_COST_VALUE:
        return "affise_cost_value";
      case ReferrerKey.AFFISE_DEEPLINK:
        return "affise_deeplink";
      case ReferrerKey.AFFISE_KEYWORDS:
        return "affise_keywords";
      case ReferrerKey.AFFISE_MEDIA_TYPE:
        return "affise_media_type";
      case ReferrerKey.AFFISE_MODEL:
        return "affise_model";
      case ReferrerKey.AFFISE_OS:
        return "affise_os";
      case ReferrerKey.AFFISE_PARTNER:
        return "affise_partner";
      case ReferrerKey.AFFISE_REF:
        return "affise_ref";
      case ReferrerKey.AFFISE_SITE_ID:
        return "affise_siteid";
      case ReferrerKey.AFFISE_SUB_SITE_ID:
        return "affise_sub_siteid";
      case ReferrerKey.AFFC:
        return "affc";
      case ReferrerKey.PID:
        return "pid";
      case ReferrerKey.SUB_1:
        return "sub1";
      case ReferrerKey.SUB_2:
        return "sub2";
      case ReferrerKey.SUB_3:
        return "sub3";
      case ReferrerKey.SUB_4:
        return "sub4";
      case ReferrerKey.SUB_5:
        return "sub5";
      case ReferrerKey.AFFISE_SUB_1:
        return "affise_sub1";
      case ReferrerKey.AFFISE_SUB_2:
        return "affise_sub2";
      case ReferrerKey.AFFISE_SUB_3:
        return "affise_sub3";
      case ReferrerKey.AFFISE_SUB_4:
        return "affise_sub4";
      case ReferrerKey.AFFISE_SUB_5:
        return "affise_sub5";
      }
  }
}
