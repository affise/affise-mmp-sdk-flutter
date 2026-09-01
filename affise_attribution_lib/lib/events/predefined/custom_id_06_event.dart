import '../native_event.dart';
import '../event_name.dart';

/// Event CustomId06
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class CustomId06Event extends NativeEvent {

  CustomId06Event({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.CUSTOM_ID_06.eventName;
}
