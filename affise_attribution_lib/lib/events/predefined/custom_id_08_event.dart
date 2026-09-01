import '../native_event.dart';
import '../event_name.dart';

/// Event CustomId08
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class CustomId08Event extends NativeEvent {

  CustomId08Event({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.CUSTOM_ID_08.eventName;
}
