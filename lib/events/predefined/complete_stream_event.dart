import '../native_event.dart';
import '../event_name.dart';

/// Event CompleteStream
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class CompleteStreamEvent extends NativeEvent {

  CompleteStreamEvent({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.COMPLETE_STREAM.eventName;
}
