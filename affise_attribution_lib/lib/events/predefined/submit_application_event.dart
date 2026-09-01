import '../native_event.dart';
import '../event_name.dart';

/// Event SubmitApplication
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class SubmitApplicationEvent extends NativeEvent {

  SubmitApplicationEvent({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.SUBMIT_APPLICATION.eventName;
}
