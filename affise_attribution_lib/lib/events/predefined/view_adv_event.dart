
import '../native_event.dart';
import '../event_name.dart';

/// Event ViewAdv
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class ViewAdvEvent extends NativeEvent {

  ViewAdvEvent({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.VIEW_ADV.eventName;
}