extension SnakeCase on String {
  String toSnakeCase() {
    final exp = RegExp('(?<=.)([A-Z]|\\d+)');
    return replaceAllMapped(exp, (m) => '_${m.group(0)}').toLowerCase();
  }
}