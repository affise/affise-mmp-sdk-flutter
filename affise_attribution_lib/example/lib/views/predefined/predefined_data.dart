import 'package:affise_attribution_lib/affise.dart';

class PredefinedData {
  const PredefinedData({
    required this.predefined,
    required this.data,
  })  : assert(
          predefined is PredefinedFloat ||
              predefined is PredefinedLong ||
              predefined is PredefinedString,
          'predefined must be PredefinedFloat, PredefinedLong, or PredefinedString',
        ),
        assert(
          data is double || data is int || data is String,
          'data must be double, int, or String',
        );

  final Object predefined;
  final Object data;

  String? get predefinedType {
    return switch (predefined) {
      PredefinedFloat _ => 'PredefinedFloat',
      PredefinedLong _ => 'PredefinedLong',
      PredefinedString _ => 'PredefinedString',
      _ => null,
    };
  }

  String? get predefinedValue {
    return switch (predefined) {
      PredefinedFloat item => item.value,
      PredefinedLong item => item.value,
      PredefinedString item => item.value,
      _ => null,
    };
  }

  Map<String, Object?> toJson() {
    return {
      'predefinedType': predefinedType,
      'predefinedValue': predefinedValue,
      'data': data,
    };
  }

  factory PredefinedData.fromJson(Map<String, dynamic> json) {
    final type = json['predefinedType'] as String?;
    final value = json['predefinedValue'] as String?;
    final data = json['data'] as Object?;

    if (type == null || value == null || data == null) {
      throw ArgumentError("PredefinedData null values");
    }

    return PredefinedData(
      predefined: _predefinedFromValue(type, value),
      data: data,
    );
  }

  static Object _predefinedFromValue(String type, String value) {
    return switch (type) {
      'PredefinedFloat' =>
        PredefinedFloat.values.firstWhere((item) => item.value == value),
      'PredefinedLong' =>
        PredefinedLong.values.firstWhere((item) => item.value == value),
      'PredefinedString' =>
        PredefinedString.values.firstWhere((item) => item.value == value),
      _ => throw ArgumentError.value(type, 'type'),
    };
  }
}
