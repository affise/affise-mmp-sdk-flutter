import '../native_event.dart';
import '../event_name.dart';

/// Event OrderItemRemove
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class OrderItemRemoveEvent extends NativeEvent {
  OrderItemRemoveEvent({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.ORDER_ITEM_REMOVE.eventName;
}
