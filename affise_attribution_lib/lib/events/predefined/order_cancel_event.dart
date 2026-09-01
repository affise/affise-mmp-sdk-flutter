import '../native_event.dart';
import '../event_name.dart';

/// Event OrderCancel
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class OrderCancelEvent extends NativeEvent {

  OrderCancelEvent({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.ORDER_CANCEL.eventName;
}
