
class ApiConstants {


  // String BASE_URL = "https://reqres.in/api/"; // UAT
  static String BASE_URL =  "http://44.224.116.122:82/auth/";


  static String GET_OTP_TO_SIGNUP = BASE_URL + "sendOtpForRegister";
  static String GET_OTP_TO_SIGNIN = BASE_URL + "sendOtpForLogin";

  static String SIGN_UP = BASE_URL + "register";
  static String SIGN_IN = BASE_URL + "login";
  static String GET_USER_DETAILS = BASE_URL + "getUserDetails";

  static String SEND_OTP = BASE_URL + "sendOtp";

}