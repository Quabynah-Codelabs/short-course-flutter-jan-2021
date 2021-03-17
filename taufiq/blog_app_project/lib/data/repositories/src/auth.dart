import 'package:blog_app_project/data/helper/preference_helper.dart';
import 'package:blog_app_project/data/models/models.dart';
import 'package:blog_app_project/domain/repositories/repositories.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthRepository implements BaseAuthenticationRepository {
  FirebaseAuthRepository({
    required this.auth,
    required this.prefs,
    required this.userRepository,
  });

  final FirebaseAuth auth;
  final PreferenceHelper prefs;
  final BaseUserRepository userRepository;

  @override
  Future login({required String email, required String password}) async {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future phoneNumberLogin(String phoneNumber) async {
    // TODO: implement phoneNumberLogin
    throw UnimplementedError();
  }

  @override
  Future recoverPassword(String email) async {
    // TODO: implement recoverPassword
    throw UnimplementedError();
  }

  @override
  Future register({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    String? avatar,
  }) async {
    /// create user with email and password
    var credential = await auth.createUserWithEmailAndPassword(
        email: email, password: password);

    var firebaseUser = credential.user;

    if (firebaseUser == null)
      return Future.value();
    else {
      /// save locally
      await prefs.updateUserKey(firebaseUser.uid);

      /// create user instance
      var user = Reader(
        key: firebaseUser.uid,
        firstName: firstName,
        lastName: lastName,
        email: email,
        avatar: avatar,
      );

      /// store user in database
      await userRepository.createUser(user);
      return Future.value();
    }
  }
}
