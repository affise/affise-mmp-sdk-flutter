
import '../native_event.dart';
import '../event_name.dart';

/// Event Update
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class UpdateEvent extends NativeEvent {

  UpdateEvent({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.UPDATE.eventName;
}
