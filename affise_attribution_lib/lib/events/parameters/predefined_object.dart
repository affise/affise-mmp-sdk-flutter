import 'predefined.dart';

enum PredefinedObject {
  CONTENT,
}

extension PredefinedObjectExt on PredefinedObject {
  String get value {
    return "${Predefined.PREFIX}$_value";
  }

  String get _value {
    switch (this) {
      case PredefinedObject.CONTENT:
        return "content";
    }
  }
}