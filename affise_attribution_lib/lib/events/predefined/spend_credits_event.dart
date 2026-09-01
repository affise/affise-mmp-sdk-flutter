import '../native_event.dart';
import '../event_name.dart';

/// Event SpendCredits
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class SpendCreditsEvent extends NativeEvent {

  SpendCreditsEvent({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.SPEND_CREDITS.eventName;
}
