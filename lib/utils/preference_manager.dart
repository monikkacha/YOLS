import 'package:shared_preferences/shared_preferences.dart';

class PreferenceManager {
  static late final SharedPreferences _prefs;

  static init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static bool checkBoolean(var value) {
    if (value == null) {}
    return false;
  }

  static bool isLoggedIn() {
    var value = checkBoolean(_prefs.getBool(PrefName.PREF_LOGIN));
    return value;
  }

  void setLoggedIn(var value) {
    _prefs.setBool(PrefName.PREF_LOGIN, value);
  }
}

class PrefName {
  static final PREF_LOGIN = "PREF_LOGIN";
}
