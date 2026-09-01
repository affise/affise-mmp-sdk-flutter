enum HttpMethod {
  GET,
  POST,
}

extension HttpMethodExt on HttpMethod {
  String get method {
    switch (this) {
      case HttpMethod.GET:
        return "GET";
      case HttpMethod.POST:
        return "POST";
    }
  }
}

HttpMethod? httpMethodFrom(String? name) {
  if (name == null) return null;
  return HttpMethod.values.firstWhere((e) => e.method == name);
}