import '../native_event.dart';
import '../property/affise_property_builder.dart';
import 'subscription_parameters.dart';

abstract class BaseSubscriptionEvent extends NativeEvent {
  /// Type of subscription
  String get type;

  /// Subtype of subscription
  String get subtype;

  Map<String, dynamic> data;

  BaseSubscriptionEvent({
    required this.data,
    super.userData,
  });

  @override
  AffisePropertyBuilder serializeBuilder() {
    AffisePropertyBuilder result = super.serializeBuilder().addRaw(
        SubscriptionParameters.AFFISE_SUBSCRIPTION_EVENT_TYPE_KEY,
        subtype);
    data.forEach((key, value) {
      result.addRaw(key, value);
    });
    return result;
  }

  /// Name of event
  ///
  /// @return name
  @override
  String getName() => type;
}
