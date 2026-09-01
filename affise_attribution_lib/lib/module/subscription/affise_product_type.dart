enum AffiseProductType {
  CONSUMABLE,
  NON_CONSUMABLE,
  RENEWABLE_SUBSCRIPTION,
  NON_RENEWABLE_SUBSCRIPTION;

  @override
  String toString() => value;

  static AffiseProductType? from(String? name) {
    if (name == null) return null;
    return AffiseProductType.values.firstWhere((e) => e.value == name);
  }
}

extension AffiseProductTypeValue on AffiseProductType {
  String get value {
    switch (this) {
      case AffiseProductType.CONSUMABLE:
        return "consumable";
      case AffiseProductType.NON_CONSUMABLE:
        return "non_consumable";
      case AffiseProductType.RENEWABLE_SUBSCRIPTION:
        return "renewable_subscription";
      case AffiseProductType.NON_RENEWABLE_SUBSCRIPTION:
        return "non_renewable_subscription";
      }
  }
}
