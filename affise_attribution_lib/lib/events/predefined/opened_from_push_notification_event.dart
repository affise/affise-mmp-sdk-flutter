import '../native_event.dart';
import '../event_name.dart';

/// Event OpenedFromPushNotification
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class OpenedFromPushNotificationEvent extends NativeEvent {

  OpenedFromPushNotificationEvent({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.OPENED_FROM_PUSH_NOTIFICATION.eventName;
}
