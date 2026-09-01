import '../native_event.dart';
import '../event_name.dart';

/// Event CompleteTutorial
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class CompleteTutorialEvent extends NativeEvent {

  CompleteTutorialEvent({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.COMPLETE_TUTORIAL.eventName;
}
