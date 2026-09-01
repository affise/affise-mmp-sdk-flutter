import '../native_event.dart';
import '../event_name.dart';

/// Event CustomId07
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class CustomId07Event extends NativeEvent {

  CustomId07Event({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.CUSTOM_ID_07.eventName;
}
