import '../native_event.dart';
import '../event_name.dart';

/// Event ClickAdv
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class ClickAdvEvent extends NativeEvent {

  ClickAdvEvent({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.CLICK_ADV.eventName;
}
