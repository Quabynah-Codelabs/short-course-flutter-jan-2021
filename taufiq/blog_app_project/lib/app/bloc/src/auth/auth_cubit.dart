import 'package:bloc/bloc.dart';
import 'package:blog_app_project/domain/repositories/repositories.dart';
import 'package:blog_app_project/domain/usecases/src/auth.dart';
import 'package:blog_app_project/domain/usecases/src/base_result.dart';
import 'package:equatable/equatable.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final BaseAuthenticationRepository repo;

  AuthCubit(this.repo) : super(AuthInitial());

  void register(RegisterUserParams params) async {
    var result = await RegisterUserUseCase(repo).execute(params);
    if (result is UseCaseResultSuccess) {
      // todo
    }
  }
}
