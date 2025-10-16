enum TimeUnitType {
  DAY,
  WEEK,
  MONTH,
  YEAR;

  @override
  String toString() => value;

  static TimeUnitType? from(String? name) {
    if (name == null) return null;
    return TimeUnitType.values.firstWhere((e) => e.value == name);
  }
}

extension TimeUnitTypeValue on TimeUnitType {
  String get value {
    switch (this) {
    case TimeUnitType.DAY:
      return "day";
    case TimeUnitType.WEEK:
      return "week";
    case TimeUnitType.MONTH:
      return "month";
    case TimeUnitType.YEAR:
      return "year";
    }
  }
}