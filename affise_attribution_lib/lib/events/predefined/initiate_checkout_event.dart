import '../native_event.dart';
import '../event_name.dart';

/// Event InitiateCheckout
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class InitiateCheckoutEvent extends NativeEvent {

  InitiateCheckoutEvent({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.INITIATE_CHECKOUT.eventName;
}
