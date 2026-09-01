import '../native_event.dart';
import '../event_name.dart';

/// Event UnlockAchievement
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class UnlockAchievementEvent extends NativeEvent {

  UnlockAchievementEvent({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.UNLOCK_ACHIEVEMENT.eventName;
}