import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper{
 static String key_preferences = "";

 // static String setInstance(String? key){
 //   if (key == null) {
 //     key_preferences = key;
 //   }
 // }

  // Write DATA
  static Future<bool> saveUserData(key_preferences, value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return await sharedPreferences.setString(key_preferences, value);
  }

// Read Data
  static Future getUserData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(key_preferences);
  }
}