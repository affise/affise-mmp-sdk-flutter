import '../subscription/base_subscription_event.dart';

class UserCustomSubscriptionEvent extends BaseSubscriptionEvent {
  /// Type of event
  @override
  String type;

  /// Subtype of event
  @override
  String subtype;

  UserCustomSubscriptionEvent({
    required this.type,
    required this.subtype,
    required super.data,
    super.userData,
  });
}
