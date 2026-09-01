import '../native_event.dart';
import '../event_name.dart';

/// Event StartRegistration
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class StartRegistrationEvent extends NativeEvent {

  StartRegistrationEvent({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.START_REGISTRATION.eventName;
}
