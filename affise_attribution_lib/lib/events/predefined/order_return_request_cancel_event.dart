import '../native_event.dart';
import '../event_name.dart';

/// Event OrderReturnRequestCancel
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class OrderReturnRequestCancelEvent extends NativeEvent {

  OrderReturnRequestCancelEvent({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.ORDER_RETURN_REQUEST_CANCEL.eventName;
}
