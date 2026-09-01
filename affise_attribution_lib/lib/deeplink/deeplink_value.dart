class DeeplinkValue {

  String deeplink;
  String? scheme;
  String? host;
  String? path;
  Map<String, List<String>> parameters;

  DeeplinkValue({
    required this.deeplink,
    this.scheme,
    this.host,
    this.path,
    required this.parameters,
  });

  @override
  String toString() {
    return deeplink;
  }
}