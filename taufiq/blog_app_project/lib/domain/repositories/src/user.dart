import 'package:blog_app_project/domain/entities/entities.dart';

/// repository class for handling transactions on the user database
abstract class BaseUserRepository {
  /// create a new user
  Future createUser(BaseUser user);

  /// update existing user
  Future updateUser(BaseUser user);

  /// get a snapshot of user data
  Future<BaseUser> getUser(String key);

  /// observe snapshots of user data
  Stream<BaseUser> observeUser(String key);

  /// delete user data
  Future deleteUser(String key);
}
