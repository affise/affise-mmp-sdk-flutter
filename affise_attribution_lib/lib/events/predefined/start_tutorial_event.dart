import '../native_event.dart';
import '../event_name.dart';

/// Event StartTutorial
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class StartTutorialEvent extends NativeEvent {

  StartTutorialEvent({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.START_TUTORIAL.eventName;
}
