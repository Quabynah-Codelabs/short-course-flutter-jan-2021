import 'package:blog_app_project/data/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// shared preference implementation
class PreferenceHelper {
  late SharedPreferences _preferences;
  late String? userKey;

  /// private constructor
  PreferenceHelper._();

  static final PreferenceHelper _singleton = PreferenceHelper._().._init();

  factory PreferenceHelper() => _singleton;

  /// used to initialize the shared preference library
  Future _init() async {
    /// create instance of [SharedPreferences]
    _preferences = await SharedPreferences.getInstance();

    /// initialize user key
    userKey = _preferences.getString(kUserKey);
  }

  /// update user key locally
  Future<void> updateUserKey(String key) async {
    userKey = key;
    await _preferences.setString(kUserKey, key);
  }
}
