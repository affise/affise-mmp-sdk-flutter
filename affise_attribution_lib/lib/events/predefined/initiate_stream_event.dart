import '../native_event.dart';
import '../event_name.dart';

/// Event InitiateStream
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class InitiateStreamEvent extends NativeEvent {

  InitiateStreamEvent({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.INITIATE_STREAM.eventName;
}
