import '../native_event.dart';
import '../event_name.dart';

/// Event AddToCart
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class AddToCartEvent extends NativeEvent {

  AddToCartEvent({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.ADD_TO_CART.eventName;
}
