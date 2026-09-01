import '../native_event.dart';
import '../event_name.dart';

/// Event Contact
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class ContactEvent extends NativeEvent {

  ContactEvent({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.CONTACT.eventName;
}
