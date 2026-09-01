import 'http_method.dart';

class HttpRequest {
  Uri url;
  HttpMethod method;
  Map<String, String> headers;
  String? body;

  HttpRequest(this.url, this.method, this.headers, this.body);

  @override
  String toString() {
    return "HttpRequest(url=$url, method=$method, headers=$headers, body=${body ?? ""})";
  }
}
