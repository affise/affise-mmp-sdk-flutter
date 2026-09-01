class AffiseResult<S> {
  const AffiseResult();

  S get asSuccess => (this as _AffiseSuccess<S>).value;
  String get asFailure => (this as _AffiseFailure<S>).error;

  bool get isSuccess => this is _AffiseSuccess<S>;
  bool get isFailure => !isSuccess;

  static AffiseResult<T> success<T>(T value) => _AffiseSuccess<T>(value);
  static AffiseResult<T> failure<T>(String error) => _AffiseFailure<T>(error);
}

class _AffiseSuccess<S> extends AffiseResult<S> {
  const _AffiseSuccess(this.value);

  final S value;
}

class _AffiseFailure<S> extends AffiseResult<S> {
  const _AffiseFailure(this.error);

  final String error;
}
