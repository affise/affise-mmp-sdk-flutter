import 'base_subscription_event.dart';
import 'subscription_event_name.dart';
import 'subscription_sub_type.dart';

/// Event TrialInRetry use [data] of event and [userData]
class TrialInRetryEvent extends BaseSubscriptionEvent {
  TrialInRetryEvent({
    required super.data,
    super.userData,
  });

  /// Type of event
  @override
  String get type => SubscriptionEventName.AFFISE_SUBSCRIPTION_ENTERED_BILLING_RETRY.eventName;

  /// Subtype of event
  @override
  String get subtype => SubscriptionSubType.AFFISE_SUB_TRIAL_IN_RETRY.typeName;
}

/// Event OfferInRetry use [data] of event and [userData]
class OfferInRetryEvent extends BaseSubscriptionEvent {
  OfferInRetryEvent({
    required super.data,
    super.userData,
  });

  /// Type of event
  @override
  String get type => SubscriptionEventName.AFFISE_SUBSCRIPTION_ENTERED_BILLING_RETRY.eventName;

  /// Subtype of event
  @override
  String get subtype => SubscriptionSubType.AFFISE_SUB_OFFER_IN_RETRY.typeName;
}

/// Event SubscriptionInRetry use [data] of event and [userData]
class SubscriptionInRetryEvent extends BaseSubscriptionEvent {
  SubscriptionInRetryEvent({
    required super.data,
    super.userData,
  });

  /// Type of event
  @override
  String get type => SubscriptionEventName.AFFISE_SUBSCRIPTION_ENTERED_BILLING_RETRY.eventName;

  /// Subtype of event
  @override
  String get subtype => SubscriptionSubType.AFFISE_SUB_SUBSCRIPTION_IN_RETRY.typeName;
}