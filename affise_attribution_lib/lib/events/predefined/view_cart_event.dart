import '../native_event.dart';
import '../event_name.dart';

/// Event ViewCart
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class ViewCartEvent extends NativeEvent {

  ViewCartEvent({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.VIEW_CART.eventName;
}
