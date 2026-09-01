import '../../utils/to_snake_case.dart';
import '../event_name.dart';
import 'affise_property.dart';

extension EventNameExt on EventName {
  String toAffiseEventProperty(AffiseProperty property) {
    return eventName.toAffiseEventProperty(property: property.type);
  }
}

extension AffiseEventPropertyExt on String? {

  static const String _PROPERTY_PREFIX = "affise_event";

  String toAffiseEventProperty({String? property}) {
    String name = this?.toSnakeCase() ?? "NAME";
    if (property != null) {
      return "${_PROPERTY_PREFIX}_${name}_$property";
    }
    return "${_PROPERTY_PREFIX}_$name";
  }
}