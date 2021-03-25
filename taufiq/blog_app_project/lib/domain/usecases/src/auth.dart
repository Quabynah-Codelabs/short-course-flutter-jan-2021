import 'package:blog_app_project/domain/entities/entities.dart';
import 'package:blog_app_project/domain/repositories/repositories.dart';
import 'package:blog_app_project/domain/usecases/src/base_result.dart';
import 'package:fimber/fimber.dart';

import 'base_usecase.dart';

/// params for user account creation
class RegisterUserParams {
  const RegisterUserParams({
    required this.email,
    required this.password,
    required this.firstName,
    required this.lastName,
  });

  final String email;
  final String password;
  final String firstName;
  final String lastName;
}

/// register new user logic
class RegisterUserUseCase extends UseCase<BaseUser, RegisterUserParams> {
  RegisterUserUseCase(this.repo);

  final BaseAuthenticationRepository repo;

  @override
  Future<UseCaseResult<BaseUser>> execute(RegisterUserParams params) async {
    try {
      var user = await repo.register(
          email: params.email,
          password: params.password,
          firstName: params.firstName,
          lastName: params.lastName);
      return UseCaseResult.success(user);
    } catch (e) {
      Fimber.d(e.toString());
      return UseCaseResult.error(e.toString());
    }
  }
}
