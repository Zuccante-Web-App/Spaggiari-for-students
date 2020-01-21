import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefManager {

  static const String USERNAME_PREF = "username-pref";
  static const String PASSWORD_PREF = "password-pref";
  static const String FIRSTNAME_PREF = "firstname-pref";
  static const String LASTNAME_PREF = "lastname-pref"; 

   static Future<String> getStringPref(String name) async {
       final SharedPreferences pref = await SharedPreferences.getInstance();
       return pref.getString(name);
  }


  static void addPref(String name, dynamic value) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    if(value is String) pref.setString(name, value);
    else if (value is int) pref.setInt(name, value);
  }


}