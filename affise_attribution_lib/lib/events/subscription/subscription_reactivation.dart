import 'base_subscription_event.dart';
import 'subscription_event_name.dart';
import 'subscription_sub_type.dart';

/// Event ReactivatedSubscription use [data] of event and [userData]
class ReactivatedSubscriptionEvent extends BaseSubscriptionEvent {
  ReactivatedSubscriptionEvent({
    required super.data,
    super.userData,
  });

  /// Type of event
  @override
  String get type => SubscriptionEventName.AFFISE_SUBSCRIPTION_REACTIVATION.eventName;

  /// Subtype of event
  @override
  String get subtype => SubscriptionSubType.AFFISE_SUB_REACTIVATED_SUBSCRIPTION.typeName;
}
