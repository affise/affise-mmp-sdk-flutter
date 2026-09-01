enum SubscriptionEventName {
  AFFISE_SUBSCRIPTION_ACTIVATION,
  AFFISE_SUBSCRIPTION_CANCELLATION,
  AFFISE_SUBSCRIPTION_ENTERED_BILLING_RETRY,
  AFFISE_SUBSCRIPTION_FIRST_CONVERSION,
  AFFISE_SUBSCRIPTION_REACTIVATION,
  AFFISE_SUBSCRIPTION_RENEWAL,
  AFFISE_SUBSCRIPTION_RENEWAL_FROM_BILLING_RETRY,
  AFFISE_UNSUBSCRIPTION,
}

extension SubscriptionEventNameExt on SubscriptionEventName {
  String get eventName {
    switch (this) {
    case SubscriptionEventName.AFFISE_SUBSCRIPTION_ACTIVATION: return "affise_subscription_activation";
    case SubscriptionEventName.AFFISE_SUBSCRIPTION_CANCELLATION: return "affise_subscription_cancellation";
    case SubscriptionEventName.AFFISE_SUBSCRIPTION_ENTERED_BILLING_RETRY: return "affise_subscription_entered_billing_retry";
    case SubscriptionEventName.AFFISE_SUBSCRIPTION_FIRST_CONVERSION: return "affise_subscription_first_conversion";
    case SubscriptionEventName.AFFISE_SUBSCRIPTION_REACTIVATION: return "affise_subscription_reactivation";
    case SubscriptionEventName.AFFISE_SUBSCRIPTION_RENEWAL: return "affise_subscription_renewal";
    case SubscriptionEventName.AFFISE_SUBSCRIPTION_RENEWAL_FROM_BILLING_RETRY: return "affise_subscription_renewal_from_billing_retry";
    case SubscriptionEventName.AFFISE_UNSUBSCRIPTION: return "affise_unsubscription";
    }
  }
}