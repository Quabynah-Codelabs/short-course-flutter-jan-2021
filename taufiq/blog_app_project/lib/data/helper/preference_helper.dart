import 'package:blog_app_project/data/constants.dart';
import 'package:fimber/fimber.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// shared preference implementation
class PreferenceHelper extends StateNotifier<String?> {
  final SharedPreferences _preferences;

  /// constructor
  PreferenceHelper(this._preferences) : super(null) {
    Fimber.d('creating preference helper instance...');
    state = _preferences.getString(kUserKey);
  }

  /// update user key locally
  Future<void> updateUserKey(String key) async {
    await _preferences.setString(kUserKey, key);
    state = key;
  }
}
