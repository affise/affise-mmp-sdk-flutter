import '../event_name.dart';
import '../native_event.dart';

/// Event AddToWishlist
///
/// @property userData any custom string data.
/// @property timeStampMillis the timestamp event in milliseconds.
class AddToWishlistEvent extends NativeEvent {

  AddToWishlistEvent({
    super.userData,
    super.timeStampMillis,
  });

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => EventName.ADD_TO_WISHLIST.eventName;
}
