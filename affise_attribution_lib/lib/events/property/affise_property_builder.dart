import 'affise_event_utils.dart';
import '../../utils/to_snake_case.dart';
import 'affise_property.dart';

class AffisePropertyBuilder {

  final Map<String, dynamic> _data = {};
  String? _name;

  AffisePropertyBuilder init(String name) {
    _name = name.toSnakeCase();
    return this;
  }

  AffisePropertyBuilder initWithData(String name, {Object? value}) {
    init(name);
    if (name.isNotEmpty) {
      _data[_eventName()] = _parseValue(value);
    }
    return this;
  }

  AffisePropertyBuilder add(AffiseProperty key, Object? value) {
    return addByString(key.type, value);
  }

  AffisePropertyBuilder addByString(String key, Object? value) {
    if (key.isNotEmpty) {
      addRaw(_eventProperty(key), value);
    }
    return this;
  }

  AffisePropertyBuilder addRaw(String key, Object? value) {
    if (key.isNotEmpty) {
      _data[key.toLowerCase()] = _parseValue(value);
    }
    return this;
  }

  Map<String, dynamic> build() {
    return _data;
  }

  String _eventName() {
    return _name.toAffiseEventProperty();
  }

  String _eventProperty(String key) {
    return _name.toAffiseEventProperty(property: key);
  }

  Object? _parseValue(Object? value) {
    return value;
  }
}