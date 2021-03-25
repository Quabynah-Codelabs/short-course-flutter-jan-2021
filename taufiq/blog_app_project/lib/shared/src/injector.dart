import 'package:blog_app_project/data/helper/preference_helper.dart';
import 'package:blog_app_project/data/repositories/repositories.dart';
import 'package:blog_app_project/data/sources/sources.dart';
import 'package:blog_app_project/domain/repositories/repositories.dart';
import 'package:blog_app_project/domain/sources/sources.dart';
import 'package:fimber/fimber.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// shared preferences
final _prefsProvider =
    FutureProvider((_) async => await SharedPreferences.getInstance());

/// firebase auth provider
final _fbAuthProvider = Provider<FirebaseAuth>((_) => FirebaseAuth.instance);

/// preference helper instance
final _prefsHelperProvider =
    StateNotifierProvider.family<PreferenceHelper, SharedPreferences>(
        (_, prefs) => PreferenceHelper(prefs));

/// region local data sources
final _userLocalDatasourceProvider =
    Provider<BaseUserLocalDataSource>((container) => UserLocalDataSource());
final _blogLocalDatasourceProvider =
    Provider<BaseBlogLocalDataSource>((container) => BlogLocalDataSource());

/// endregion

/// region remote data sources
final _userRemoteDatasourceProvider =
    Provider<BaseUserRemoteDataSource>((container) => UserRemoteDataSource());
final _blogRemoteDatasourceProvider =
    Provider<BaseBlogRemoteDataSource>((container) => BlogRemoteDataSource());

/// endregion

/// NB: provide repositories to BLoCs using the [Injector] class below
/// region repositories
final _authRepoProvider =
    FutureProvider.family<BaseAuthenticationRepository, BaseUserRepository>(
  (_, userRepo) async => FirebaseAuthRepository(
    auth: _.read(_fbAuthProvider),
    prefs: _.read(_prefsHelperProvider(await _.read(_prefsProvider.future))),
    userRepository: userRepo,
  ),
);

final _userRepoProvider = Provider<BaseUserRepository>(
  (_) => UserRepository(
    local: _.read(_userLocalDatasourceProvider),
    remote: _.read(_userRemoteDatasourceProvider),
  ),
);

final _blogRepoProvider = Provider<BaseBlogRepository>(
  (_) => BlogRepository(
    local: _.read(_blogLocalDatasourceProvider),
    remote: _.read(_blogRemoteDatasourceProvider),
  ),
);

/// endregion

class Injector {
  static final _deps = <dynamic>[];

  static Future<void> inject() async {
    Fimber.d('injecting dependencies...');

    /// dependency reader
    var container = ProviderContainer();

    /// user repository
    _deps.add(container.read(_userRepoProvider));

    /// blog repository
    _deps.add(container.read(_blogRepoProvider));

    /// auth repository
    _deps.add(
        container.read(_authRepoProvider(container.read(_userRepoProvider))));

    Fimber.d('dependencies injected successfully');
  }

  static R get<R>() {
    for (var value in _deps) {
      if (value is R) return value;
    }
    throw Exception('dependency not found');
  }
}
