import 'package:blog_app_project/data/helper/preference_helper.dart';
import 'package:blog_app_project/data/repositories/repositories.dart';
import 'package:blog_app_project/data/sources/sources.dart';
import 'package:blog_app_project/domain/repositories/repositories.dart';
import 'package:fimber/fimber.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// shared preferences
final _prefsProvider =
    FutureProvider((_) async => await SharedPreferences.getInstance());

/// firebase auth provider
final _fbAuthProvider = Provider((_) => FirebaseAuth.instance);

/// preference helper instance
final _prefsHelperProvider =
    StateNotifierProvider.family<PreferenceHelper, SharedPreferences>(
        (_, prefs) => PreferenceHelper(prefs));

/// local data source
final _localDatasourceProvider = Provider((container) => LocalDataSource());

/// remote data source
final _remoteDatasourceProvider = Provider((container) => RemoteDataSource());

/// authentication repository
final _authRepoProvider =
    FutureProvider.family<BaseAuthenticationRepository, BaseUserRepository>(
  (_, userRepo) async => FirebaseAuthRepository(
    auth: _.read(_fbAuthProvider),
    prefs: _.read(_prefsHelperProvider(await _.read(_prefsProvider.future))),
    userRepository: userRepo,
  ),
);

/// user repository
final _userRepoProvider = Provider<BaseUserRepository>(
  (_) => UserRepository(
    local: _.read(_localDatasourceProvider),
    remote: _.read(_remoteDatasourceProvider),
  ),
);

class Injector {
  static final _deps = <dynamic>[];

  static Future<void> inject() async {
    Fimber.d('injecting dependencies...');

    /// dependency reader
    var container = ProviderContainer();

    /// provide dependencies & add to list
    var _prefs = await container.read(_prefsProvider.future);
    _deps.add(container.read(_prefsHelperProvider(_prefs)));
    _deps.add(container.read(_fbAuthProvider));
    _deps.add(container.read(_userRepoProvider));
    _deps.add(
        container.read(_authRepoProvider(container.read(_userRepoProvider))));
    _deps.add(container.read(_localDatasourceProvider));
    _deps.add(container.read(_remoteDatasourceProvider));

    Fimber.d('dependencies injected successfully');
  }

  static R get<R>() {
    for (var value in _deps) {
      if (value is R) return value;
    }
    throw Exception('dependency not found');
  }
}
