import 'predefined.dart';

/// Type of predefined parameters contains Float value
///
/// @property value the key of parameter
enum PredefinedFloat {
  PREFERRED_PRICE_RANGE,
  PRICE,
  REVENUE,
  LAT,
  LONG,
}

extension PredefinedFloatExt on PredefinedFloat {
  String get value {
    return "${Predefined.PREFIX}$_value";
  }

  String get _value {
    switch (this) {
      case PredefinedFloat.PREFERRED_PRICE_RANGE:
        return "preferred_price_range";
      case PredefinedFloat.PRICE:
        return "price";
      case PredefinedFloat.REVENUE:
        return "revenue";
      case PredefinedFloat.LAT:
        return "lat";
      case PredefinedFloat.LONG:
        return "long";
    }
  }
}
