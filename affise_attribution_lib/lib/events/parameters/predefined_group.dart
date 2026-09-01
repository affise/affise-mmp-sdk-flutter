import 'predefined.dart';
import 'predefined_float.dart';
import 'predefined_long.dart';
import 'predefined_string.dart';

class PredefinedGroup {

  static const String NAME = "${Predefined.PREFIX}list_group";

  /// Event predefined parameters
  final Map<String, dynamic> _predefinedParameters = {};

  /// Add predefined [parameter] with [value] of double to event
  PredefinedGroup addPredefinedFloat(PredefinedFloat parameter, double value) {
    _predefinedParameters[parameter.value] = value;
    return this;
  }

  /// Add predefined [parameter] with [value] of int to event
  PredefinedGroup addPredefinedLong(PredefinedLong parameter, int value) {
    _predefinedParameters[parameter.value] = value;
    return this;
  }

  /// Add predefined [parameter] with [value] of String to event
  PredefinedGroup addPredefinedString(PredefinedString parameter, String value) {
    _predefinedParameters[parameter.value] = value;
    return this;
  }

  /// Get map of predefined parameter
  ///
  /// @return map of predefined parameter
  Map<String, dynamic> getPredefinedParameters() {
    return _predefinedParameters;
  }
}