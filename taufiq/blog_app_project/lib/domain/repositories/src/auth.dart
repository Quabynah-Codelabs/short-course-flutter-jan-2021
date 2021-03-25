import 'package:blog_app_project/domain/entities/entities.dart';

/// repository class for handling user authentication transactions
abstract class BaseAuthenticationRepository {
  /// create new user accounts
  Future<BaseUser> register({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    String? avatar,
  });

  /// sign in to existing user accounts
  Future<BaseUser> login({
    required String email,
    required String password,
  });

  /// recover lost user passwords
  Future recoverPassword(String email);

  /// authenticate user using phone number
  Future<BaseUser> phoneNumberLogin(String phoneNumber);
}
