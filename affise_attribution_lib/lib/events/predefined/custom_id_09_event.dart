import '../native_event.dart';
import '../event_name.dart';

/// Event CustomId09
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class CustomId09Event extends NativeEvent {

  CustomId09Event({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.CUSTOM_ID_09.eventName;
}
