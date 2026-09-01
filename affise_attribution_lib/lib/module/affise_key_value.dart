class AffiseKeyValue {
  String key;
  String value;

  AffiseKeyValue({required this.key, required this.value});

  @override
  String toString() {
    return "{key: $key, value: $value}";
  }
}
