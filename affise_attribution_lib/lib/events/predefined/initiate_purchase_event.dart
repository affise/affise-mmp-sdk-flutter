import '../native_event.dart';
import '../event_name.dart';

/// Event InitiatePurchase
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class InitiatePurchaseEvent extends NativeEvent {

  InitiatePurchaseEvent({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.INITIATE_PURCHASE.eventName;
}
