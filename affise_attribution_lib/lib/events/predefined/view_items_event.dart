import '../native_event.dart';
import '../event_name.dart';

/// Event ViewItems
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class ViewItemsEvent extends NativeEvent {

  ViewItemsEvent({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.VIEW_ITEMS.eventName;
}
