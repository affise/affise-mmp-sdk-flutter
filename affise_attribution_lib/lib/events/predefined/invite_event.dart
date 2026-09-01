import '../native_event.dart';
import '../event_name.dart';

/// Event Invite
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class InviteEvent extends NativeEvent {

  InviteEvent({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.INVITE.eventName;
}
