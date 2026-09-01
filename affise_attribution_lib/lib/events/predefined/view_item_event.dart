import '../native_event.dart';
import '../event_name.dart';

/// Event ViewItem
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class ViewItemEvent  extends NativeEvent {

  ViewItemEvent({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.VIEW_ITEM.eventName;
}