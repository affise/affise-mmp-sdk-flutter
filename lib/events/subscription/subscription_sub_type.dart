enum SubscriptionSubType {
  AFFISE_SUB_INITIAL_SUBSCRIPTION,
  AFFISE_SUB_INITIAL_TRIAL,
  AFFISE_SUB_INITIAL_OFFER,
  AFFISE_SUB_FAILED_TRIAL,
  AFFISE_SUB_FAILED_OFFERISE,
  AFFISE_SUB_FAILED_SUBSCRIPTION,
  AFFISE_SUB_FAILED_TRIAL_FROM_RETRY,
  AFFISE_SUB_FAILED_OFFER_FROM_RETRY,
  AFFISE_SUB_FAILED_SUBSCRIPTION_FROM_RETRY,
  AFFISE_SUB_TRIAL_IN_RETRY,
  AFFISE_SUB_OFFER_IN_RETRY,
  AFFISE_SUB_SUBSCRIPTION_IN_RETRY,
  AFFISE_SUB_CONVERTED_TRIAL,
  AFFISE_SUB_CONVERTED_OFFER,
  AFFISE_SUB_REACTIVATED_SUBSCRIPTION,
  AFFISE_SUB_RENEWED_SUBSCRIPTION,
  AFFISE_SUB_CONVERTED_TRIAL_FROM_RETRY,
  AFFISE_SUB_CONVERTED_OFFER_FROM_RETRY,
  AFFISE_SUB_RENEWED_SUBSCRIPTION_FROM_RETRY,
  AFFISE_SUB_UNSUBSCRIPTION,
}

extension SubscriptionSubTypeExt on SubscriptionSubType {
  String get typeName {
    switch (this) {
      case SubscriptionSubType.AFFISE_SUB_INITIAL_SUBSCRIPTION:
        return "affise_sub_initial_subscription";
      case SubscriptionSubType.AFFISE_SUB_INITIAL_TRIAL:
        return "affise_sub_initial_trial";
      case SubscriptionSubType.AFFISE_SUB_INITIAL_OFFER:
        return "affise_sub_initial_offer";
      case SubscriptionSubType.AFFISE_SUB_FAILED_TRIAL:
        return "affise_sub_failed_trial";
      case SubscriptionSubType.AFFISE_SUB_FAILED_OFFERISE:
        return "affise_sub_failed_offer";
      case SubscriptionSubType.AFFISE_SUB_FAILED_SUBSCRIPTION:
        return "affise_sub_failed_subscription";
      case SubscriptionSubType.AFFISE_SUB_FAILED_TRIAL_FROM_RETRY:
        return "affise_sub_failed_trial_from_retry";
      case SubscriptionSubType.AFFISE_SUB_FAILED_OFFER_FROM_RETRY:
        return "affise_sub_failed_offer_from_retry";
      case SubscriptionSubType.AFFISE_SUB_FAILED_SUBSCRIPTION_FROM_RETRY:
        return "affise_sub_failed_subscription_from_retry";
      case SubscriptionSubType.AFFISE_SUB_TRIAL_IN_RETRY:
        return "affise_sub_trial_in_retry";
      case SubscriptionSubType.AFFISE_SUB_OFFER_IN_RETRY:
        return "affise_sub_offer_in_retry";
      case SubscriptionSubType.AFFISE_SUB_SUBSCRIPTION_IN_RETRY:
        return "affise_sub_subscription_in_retry";
      case SubscriptionSubType.AFFISE_SUB_CONVERTED_TRIAL:
        return "affise_sub_converted_trial";
      case SubscriptionSubType.AFFISE_SUB_CONVERTED_OFFER:
        return "affise_sub_converted_offer";
      case SubscriptionSubType.AFFISE_SUB_REACTIVATED_SUBSCRIPTION:
        return "affise_sub_reactivated_subscription";
      case SubscriptionSubType.AFFISE_SUB_RENEWED_SUBSCRIPTION:
        return "affise_sub_renewed_subscription";
      case SubscriptionSubType.AFFISE_SUB_CONVERTED_TRIAL_FROM_RETRY:
        return "affise_sub_converted_trial_from_retry";
      case SubscriptionSubType.AFFISE_SUB_CONVERTED_OFFER_FROM_RETRY:
        return "affise_sub_converted_offer_from_retry";
      case SubscriptionSubType.AFFISE_SUB_RENEWED_SUBSCRIPTION_FROM_RETRY:
        return "affise_sub_renewed_subscription_from_retry";
      case SubscriptionSubType.AFFISE_SUB_UNSUBSCRIPTION:
        return "affise_sub_unsubscription";
      }
  }
}
