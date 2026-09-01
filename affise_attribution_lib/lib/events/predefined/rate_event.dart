import '../native_event.dart';
import '../event_name.dart';

/// Event Rate use
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class RateEvent extends NativeEvent {

  RateEvent({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.RATE.eventName;
}
