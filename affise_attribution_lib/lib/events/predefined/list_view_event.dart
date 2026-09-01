import '../native_event.dart';
import '../event_name.dart';

/// Event ListView
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class ListViewEvent extends NativeEvent {

  ListViewEvent({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.LIST_VIEW.eventName;
}
