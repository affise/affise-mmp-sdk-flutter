/// Type of touch
enum TouchType {
  CLICK,
  WEB_TO_APP_AUTO_REDIRECT,
  IMPRESSION
}


extension TouchTypeValue on TouchType {
  String get value {
    switch (this) {
      case TouchType.CLICK:
        return "CLICK";
      case TouchType.WEB_TO_APP_AUTO_REDIRECT:
        return "WEB_TO_APP_AUTO_REDIRECT";
      case TouchType.IMPRESSION:
        return "IMPRESSION";
      }
  }
}