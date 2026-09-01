import 'predefined.dart';

/// Type of predefined parameters contains List of JSONObjects
///
/// @property value the key of parameter
enum PredefinedListObject {
  CONTENT_LIST,
}

extension PredefinedListObjectExt on PredefinedListObject {
  String get value {
    return "${Predefined.PREFIX}$_value";
  }

  String get _value {
    switch (this) {
      case PredefinedListObject.CONTENT_LIST:
        return "content_list";
    }
  }
}
