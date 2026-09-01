import '../native_event.dart';
import '../event_name.dart';

/// Event Reserve
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class ReserveEvent extends NativeEvent {

  ReserveEvent({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.RESERVE.eventName;
}
