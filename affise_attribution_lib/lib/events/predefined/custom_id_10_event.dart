import '../native_event.dart';
import '../event_name.dart';

/// Event CustomId10
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class CustomId10Event extends NativeEvent {

  CustomId10Event({
    super.userData,
    super.timeStampMillis,
  });
  
  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.CUSTOM_ID_10.eventName;
}
