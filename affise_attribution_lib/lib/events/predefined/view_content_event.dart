import '../native_event.dart';
import '../event_name.dart';

/// Event ViewContent
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class ViewContentEvent extends NativeEvent {

  ViewContentEvent({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.VIEW_CONTENT.eventName;
}
