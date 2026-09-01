import 'base_subscription_event.dart';
import 'subscription_event_name.dart';
import 'subscription_sub_type.dart';

/// Event InitialSubscription use [data] of event and [userData]
class InitialSubscriptionEvent extends BaseSubscriptionEvent {

  InitialSubscriptionEvent({
    required super.data,
    super.userData,
  });

  /// Type of event
  @override
  String get type => SubscriptionEventName.AFFISE_SUBSCRIPTION_ACTIVATION.eventName;

  /// Subtype of event
  @override
  String get subtype => SubscriptionSubType.AFFISE_SUB_INITIAL_SUBSCRIPTION.typeName;
}

/// Event InitialTrial use [data] of event and [userData]
class InitialTrialEvent extends BaseSubscriptionEvent {

  InitialTrialEvent({
    required super.data,
    super.userData,
  });

  /// Type of event
  @override
  String get type => SubscriptionEventName.AFFISE_SUBSCRIPTION_ACTIVATION.eventName;

  /// Subtype of event
  @override
  String get subtype => SubscriptionSubType.AFFISE_SUB_INITIAL_TRIAL.typeName;
}


/// Event InitialOffer use [data] of event and [userData]
class InitialOfferEvent extends BaseSubscriptionEvent {

  InitialOfferEvent({
    required super.data,
    super.userData,
  });

  /// Type of event
  @override
  String get type => SubscriptionEventName.AFFISE_SUBSCRIPTION_ACTIVATION.eventName;

  /// Subtype of event
  @override
  String get subtype => SubscriptionSubType.AFFISE_SUB_INITIAL_OFFER.typeName;
}