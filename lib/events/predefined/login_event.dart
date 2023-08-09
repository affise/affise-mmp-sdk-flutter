import 'package:affise_attribution_lib/events/native_event.dart';

import '../event_name.dart';

/// Event Login
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class LoginEvent extends NativeEvent {

  LoginEvent({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.LOGIN.eventName;
}
