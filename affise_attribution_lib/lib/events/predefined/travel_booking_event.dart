import '../native_event.dart';
import '../event_name.dart';

/// Event TravelBooking
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class TravelBookingEvent extends NativeEvent {
 
  TravelBookingEvent({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.TRAVEL_BOOKING.eventName;
}
