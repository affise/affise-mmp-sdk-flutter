import '../native_event.dart';
import '../event_name.dart';

/// Event AddPaymentInfo
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class AddPaymentInfoEvent extends NativeEvent {

  AddPaymentInfoEvent({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.ADD_PAYMENT_INFO.eventName;
}
