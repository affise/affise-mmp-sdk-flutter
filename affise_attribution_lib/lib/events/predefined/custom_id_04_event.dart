import '../native_event.dart';
import '../event_name.dart';

/// Event CustomId04
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class CustomId04Event extends NativeEvent {

  CustomId04Event({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.CUSTOM_ID_04.eventName;
}
