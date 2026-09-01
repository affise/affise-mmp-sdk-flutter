import '../native_event.dart';
import '../event_name.dart';

/// Event StartTrial
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class StartTrialEvent extends NativeEvent {

  StartTrialEvent({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.START_TRIAL.eventName;
}
