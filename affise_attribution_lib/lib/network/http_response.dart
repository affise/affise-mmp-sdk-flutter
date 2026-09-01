class HttpResponse {
  int code;
  String message;
  String? body;

  HttpResponse(this.code, this.message, this.body);

  @override
  String toString() {
    return "HttpResponse(code=$code, message=$message, body=${body ?? ""})";
  }
}
