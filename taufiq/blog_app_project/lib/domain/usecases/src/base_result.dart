import 'package:equatable/equatable.dart';

/// result for usecase
abstract class UseCaseResult<T> extends Equatable {
  const UseCaseResult();

  /// success
  factory UseCaseResult.success([T? data]) =>
      UseCaseResultSuccess<T>.create(data);

  /// error/failure
  factory UseCaseResult.error([String? cause]) =>
      UseCaseResultError<T>.create(cause);
}

// result wrapper
class UseCaseResultSuccess<T> extends UseCaseResult<T> {
  const UseCaseResultSuccess._(this.value) : super();

  factory UseCaseResultSuccess.create(T? data) => UseCaseResultSuccess._(data);
  final T? value;

  @override
  List<Object?> get props => [value];
}

// error wrapper
class UseCaseResultError<E> extends UseCaseResult<E> {
  const UseCaseResultError._(this.cause) : super();

  factory UseCaseResultError.create(dynamic? cause) =>
      UseCaseResultError._(cause);
  final E? cause;

  @override
  List<Object?> get props => [cause];
}
