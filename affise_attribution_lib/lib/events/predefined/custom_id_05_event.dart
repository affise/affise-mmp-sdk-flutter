import '../native_event.dart';
import '../event_name.dart';

/// Event CustomId05
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class CustomId05Event extends NativeEvent {

  CustomId05Event({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.CUSTOM_ID_05.eventName;
}
