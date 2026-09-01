enum AffiseProperty {
  TIMESTAMP,
  TYPE,
  DATA,
}

extension AffisePropertyExt on AffiseProperty {
  String get type {
    switch (this) {
      case AffiseProperty.TIMESTAMP:
        return "timestamp";
      case AffiseProperty.TYPE:
        return "type";
      case AffiseProperty.DATA:
        return "data";
      }
  }
}
