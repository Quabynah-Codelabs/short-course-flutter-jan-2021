/// repository class for handling user authentication transactions
abstract class BaseAuthenticationRepository {
  /// create new user accounts
  Future register({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    String? avatar,
  });

  /// sign in to existing user accounts
  Future login({
    required String email,
    required String password,
  });

  /// recover lost user passwords
  Future recoverPassword(String email);

  /// authenticate user using phone number
  Future phoneNumberLogin(String phoneNumber);
}
