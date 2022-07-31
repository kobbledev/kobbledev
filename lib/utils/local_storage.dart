import 'package:shared_preferences/shared_preferences.dart';

import '../models/user_details.dart';

class LocalStorage{
  static const token = "TOKEN";
  static const firstName = "firstName";
  static const lastName = "lastName";
  static const userPhone = "userPhone";
  static const userCountryCode = "userCountryCode";
  static const userEmail = "userEmail";
  static const imagePath = 'ImagePath';
  static const otp = 'otp';
  static const qrPath = 'qrPath';
  static Future<SharedPreferences> setToken(String _token) async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(token, _token);
    return sharedPreferences;
  }

  static Future<String> getToken() async{
    String sharedPrefToken;
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPrefToken = sharedPreferences.getString(token)!;
    return sharedPrefToken;
  }

  static Future<void> clearToken() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.remove(token);
    await sharedPreferences.clear();
  }

  static Future<SharedPreferences> setUserDetails(String fName,String lName,String email) async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(firstName, fName);
    sharedPreferences.setString(lastName, lName);
    sharedPreferences.setString(userEmail, email);
    return sharedPreferences;
  }

  static Future<UserDetails> getUserDetails() async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    UserDetails userDetails =
    UserDetails(firstName: sharedPreferences.getString(firstName)!,
        lastName: sharedPreferences.getString(lastName)!,
        email: sharedPreferences.getString(userEmail)!,
         phoneNumber: sharedPreferences.getString(userPhone)!,
        countryCode: sharedPreferences.getString(userCountryCode)!);
    return userDetails;
  }

  static Future<void> clearUserDetails() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.remove(firstName);
    sharedPreferences.remove(lastName);
    sharedPreferences.remove(userEmail);
    sharedPreferences.remove(userPhone);
    sharedPreferences.remove(userCountryCode);
    sharedPreferences.remove(otp);
    await sharedPreferences.clear();
  }
  static Future<void> setStringData(String key, String value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(key, value);
  }

  static Future<String> getStringData(String key) async {
    String data;
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    data = sharedPreferences.getString(key)!;
    return data;
  }
  static Future<SharedPreferences> setPhoneNumber(String phone,String countryCode) async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(userPhone, phone);
    sharedPreferences.setString(userCountryCode, countryCode);
    return sharedPreferences;
  }

  static Future<void> clearLogoPath() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.remove(imagePath);
    await sharedPreferences.clear();
  }
}