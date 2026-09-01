import '../native_event.dart';
import '../event_name.dart';

/// Event CustomizeProduct
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class CustomizeProductEvent extends NativeEvent {

  CustomizeProductEvent({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.CUSTOMIZE_PRODUCT.eventName;
}
