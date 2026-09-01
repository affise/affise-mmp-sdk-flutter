T? tryCast<T>(dynamic object) {
  if (object is T) {
    return object;
  }
  return null;
}
