import '../native_event.dart';
import '../event_name.dart';

/// Event Subscribe
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class SubscribeEvent extends NativeEvent {

  SubscribeEvent({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.SUBSCRIBE.eventName;
}
