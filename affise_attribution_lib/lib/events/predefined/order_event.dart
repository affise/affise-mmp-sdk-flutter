import '../native_event.dart';
import '../event_name.dart';

/// Event Order
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class OrderEvent extends NativeEvent {

  OrderEvent({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.ORDER.eventName;
}
