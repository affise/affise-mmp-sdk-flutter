import 'base_subscription_event.dart';
import 'subscription_event_name.dart';
import 'subscription_sub_type.dart';

/// Event FailedTrial use [data] of event and [userData]
class FailedTrialEvent extends BaseSubscriptionEvent {
  FailedTrialEvent({
    required super.data,
    super.userData,
  });

  /// Type of event
  @override
  String get type => SubscriptionEventName.AFFISE_SUBSCRIPTION_CANCELLATION.eventName;

  /// Subtype of event
  @override
  String get subtype => SubscriptionSubType.AFFISE_SUB_FAILED_TRIAL.typeName;
}

/// Event FailedOfferise use [data] of event and [userData]
class FailedOfferiseEvent extends BaseSubscriptionEvent {
  FailedOfferiseEvent({
    required super.data,
    super.userData,
  });

  /// Type of event
  @override
  String get type => SubscriptionEventName.AFFISE_SUBSCRIPTION_CANCELLATION.eventName;

  /// Subtype of event
  @override
  String get subtype => SubscriptionSubType.AFFISE_SUB_FAILED_OFFERISE.typeName;
}

/// Event FailedSubscription use [data] of event and [userData]
class FailedSubscriptionEvent extends BaseSubscriptionEvent {
  FailedSubscriptionEvent({
    required super.data,
    super.userData,
  });

  /// Type of event
  @override
  String get type => SubscriptionEventName.AFFISE_SUBSCRIPTION_CANCELLATION.eventName;

  /// Subtype of event
  @override
  String get subtype => SubscriptionSubType.AFFISE_SUB_FAILED_SUBSCRIPTION.typeName;
}

/// Event FailedTrialFromRetry use [data] of event and [userData]
class FailedTrialFromRetryEvent extends BaseSubscriptionEvent {
  FailedTrialFromRetryEvent({
    required super.data,
    super.userData,
  });

  /// Type of event
  @override
  String get type => SubscriptionEventName.AFFISE_SUBSCRIPTION_CANCELLATION.eventName;

  /// Subtype of event
  @override
  String get subtype => SubscriptionSubType.AFFISE_SUB_FAILED_TRIAL_FROM_RETRY.typeName;
}

/// Event FailedOfferFromRetry use [data] of event and [userData]
class FailedOfferFromRetryEvent extends BaseSubscriptionEvent {
  FailedOfferFromRetryEvent({
    required super.data,
    super.userData,
  });

  /// Type of event
  @override
  String get type => SubscriptionEventName.AFFISE_SUBSCRIPTION_CANCELLATION.eventName;

  /// Subtype of event
  @override
  String get subtype =>  SubscriptionSubType.AFFISE_SUB_FAILED_OFFER_FROM_RETRY.typeName;
}

/// Event FailedSubscriptionFromRetry use [data] of event and [userData]
class FailedSubscriptionFromRetryEvent extends BaseSubscriptionEvent {
  FailedSubscriptionFromRetryEvent({
    required super.data,
    super.userData,
  });

  /// Type of event
  @override
  String get type => SubscriptionEventName.AFFISE_SUBSCRIPTION_CANCELLATION.eventName;

  /// Subtype of event
  @override
  String get subtype => SubscriptionSubType.AFFISE_SUB_FAILED_SUBSCRIPTION_FROM_RETRY.typeName;
}
