import '../native_event.dart';
import '../event_name.dart';

/// Event ContentItemsView
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class ContentItemsViewEvent extends NativeEvent {

  ContentItemsViewEvent({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.CONTENT_ITEMS_VIEW.eventName;
}
