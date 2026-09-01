import '../native_event.dart';
import '../event_name.dart';

/// Event Search
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class SearchEvent extends NativeEvent {

  SearchEvent({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.SEARCH.eventName;
}
