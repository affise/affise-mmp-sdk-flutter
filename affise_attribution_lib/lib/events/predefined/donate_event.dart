import '../native_event.dart';
import '../event_name.dart';

/// Event Donate
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class DonateEvent extends NativeEvent {

  DonateEvent({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.DONATE.eventName;
}
