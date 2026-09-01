import '../native_event.dart';
import '../event_name.dart';

/// Event CustomId03
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class CustomId03Event extends NativeEvent {

  CustomId03Event({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.CUSTOM_ID_03.eventName;
}
