import '../event_name.dart';
import '../native_event.dart';

/// Event Purchase use
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class PurchaseEvent extends NativeEvent {

  PurchaseEvent({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.PURCHASE.eventName;
}
