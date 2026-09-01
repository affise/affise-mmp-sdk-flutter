import '../native_event.dart';

/// UserCustomEvent.
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class UserCustomEvent extends NativeEvent {
  final String eventName;

  UserCustomEvent({
    required this.eventName,
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => eventName;
}
