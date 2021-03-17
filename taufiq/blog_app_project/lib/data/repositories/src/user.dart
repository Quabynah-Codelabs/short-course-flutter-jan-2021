import 'package:blog_app_project/data/sources/sources.dart';
import 'package:blog_app_project/domain/entities/entities.dart';
import 'package:blog_app_project/domain/repositories/repositories.dart';

/// base user repository implementation
class UserRepository implements BaseUserRepository {
  UserRepository({required this.local, required this.remote});

  final LocalDataSource local;
  final RemoteDataSource remote;

  @override
  Future createUser(BaseUser user) async {
    // TODO: implement createUser
    throw UnimplementedError();
  }

  @override
  Future deleteUser(String key) async {
    // TODO: implement deleteUser
    throw UnimplementedError();
  }

  @override
  Future<BaseUser> getUser(String key) async {
    // TODO: implement getUser
    throw UnimplementedError();
  }

  @override
  Stream<BaseUser> observeUser(String key) async* {
    // TODO: implement observeUser
    throw UnimplementedError();
  }

  @override
  Future updateUser(BaseUser user) async {
    // TODO: implement updateUser
    throw UnimplementedError();
  }
}
