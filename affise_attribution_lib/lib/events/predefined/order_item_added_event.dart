import '../native_event.dart';
import '../event_name.dart';

/// Event OrderItemAdded
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class OrderItemAddedEvent extends NativeEvent {
  OrderItemAddedEvent({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.ORDER_ITEM_ADDED.eventName;
}
