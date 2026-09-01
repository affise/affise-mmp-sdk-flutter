import '../native_event.dart';
import '../event_name.dart';

/// Event CustomId01
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class CustomId01Event extends NativeEvent {

  CustomId01Event({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.CUSTOM_ID_01.eventName;
}
