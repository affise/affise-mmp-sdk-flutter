import '../native_event.dart';
import '../event_name.dart';

/// Event FindLocation
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class FindLocationEvent extends NativeEvent {

  FindLocationEvent({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.FIND_LOCATION.eventName;
}
