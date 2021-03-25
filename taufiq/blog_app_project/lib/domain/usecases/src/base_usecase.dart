import 'base_result.dart';

/// The abstract UseCase to be implemented by all usecases.
/// [T] -> the type to be returned by the [UseCase] to the Presenter.
/// [P] -> the object passed to the usecase containing
/// all the needed parameters for the [UseCase]
///
/// Read more -> https://pub.dev/documentation/flutter_clean_architecture/latest/flutter_clean_architecture/UseCase-class.html
abstract class UseCase<Result, Params> {
  const UseCase();

  Future<UseCaseResult<Result>> execute(Params params);
}

/// A special type of [UseCase] that does not return any value.
/// It only preforms a task and reports either success or failure.
/// A good candidate of this usecase if for logout and login functionalities
abstract class ObservableUseCase<T, P> extends UseCase<Stream<T>, P> {
  const ObservableUseCase();
}

/// A special type of [UseCase] that does not return any value and accepts no params.
abstract class VoidableUseCase extends UseCase<void, void> {
  const VoidableUseCase();
}

/// A special type of [UseCase] that does not return any value.
/// It only preforms a task and reports either success or failure.
/// A good candidate of this usecase if for logout and login functionalities
abstract class CompletableUseCase<P> extends UseCase<void, P> {
  const CompletableUseCase();
}

/// A special type of [UseCase] that does not take any parameters.
/// It only preforms a task and completes with expected outcome.
/// A good candidate of this usecase if for logout and login functionalities
abstract class NoParamsUseCase<T> extends UseCase<T, void> {
  const NoParamsUseCase();
}
