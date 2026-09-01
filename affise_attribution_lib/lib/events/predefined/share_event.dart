import '../native_event.dart';
import '../event_name.dart';

/// Event Share
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class ShareEvent extends NativeEvent {

  ShareEvent({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.SHARE.eventName;
}
