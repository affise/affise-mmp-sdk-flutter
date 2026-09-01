extension AffiseIterableExtension<T> on Iterable<T> {

  T? firstElementOrNull(bool Function(T element) test) {
    for (var element in this) {
      if (test(element)) return element;
    }
    return null;
  }
}