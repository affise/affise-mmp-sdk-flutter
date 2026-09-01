import 'predefined.dart';

/// Type of predefined parameters contains List of Strings
///
/// @property value the key of parameter
enum PredefinedListString {
  CONTENT_IDS
}

extension PredefinedListStringExt on PredefinedListString {
  String get value {
    return "${Predefined.PREFIX}$_value";
  }

  String get _value {
    switch (this) {
      case PredefinedListString.CONTENT_IDS:
        return "content_ids";
    }
  }
}