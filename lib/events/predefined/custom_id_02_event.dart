import 'package:affise_attribution_lib/events/native_event.dart';

import '../event_name.dart';

/// Event CustomId02
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class CustomId02Event extends NativeEvent {

  CustomId02Event({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.CUSTOM_ID_02.eventName;
}
