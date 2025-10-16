enum AutoCatchingType {
  BUTTON,
  TEXT,

  IMAGE_BUTTON,
  IMAGE,

  GROUP,
}

extension AutoCatchingTypeValue on AutoCatchingType {
  String get value {
    switch (this) {
      case AutoCatchingType.BUTTON:
        return "BUTTON";
      case AutoCatchingType.TEXT:
        return "TEXT";
      case AutoCatchingType.IMAGE_BUTTON:
        return "IMAGE_BUTTON";
      case AutoCatchingType.IMAGE:
        return "IMAGE";
      case AutoCatchingType.GROUP:
        return "GROUP";
      }
  }
}

extension AutoCatchingTypeList on List<AutoCatchingType> {
  List<String> get toStringList {
    return map((e) => e.value).toList();
  }
}
