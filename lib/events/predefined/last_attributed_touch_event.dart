import '../native_event.dart';
import '../event_name.dart';


/// Event LastAttributedTouch
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class LastAttributedTouchEvent extends NativeEvent {

  LastAttributedTouchEvent({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.LAST_ATTRIBUTED_TOUCH.eventName;
}
