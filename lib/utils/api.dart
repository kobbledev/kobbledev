
// import '../models/user.dart';

// class APIS {
//   static String contentTypeAppJson = "Content-Type" + ':' + "application/json";


//   //BASE URL
//   static String baseURL_UAT = "http://api.kobble_dev.com/kobble/api/";
//   /*Todo Need to check base url before giving build.*/

//   static String baseURL = baseURL_UAT;

//   static String signIn = baseURL + "users/signin";
//   static String signInV1 = baseURL + "users/v1/signin";
//   static String signUp = baseURL + "users/signup";
//   static String signOut = baseURL + "users/signOut";


//   static String verifyOTP = baseURL + "users/otpVerify";
//   static String verifyOTPV1 = baseURL + "users/v1/otpVerify";
//   static String updateProfile = baseURL + "users/updateUser";
//   // static String messageflag = baseURL + "users/messageFlag";
//   // static String toggle = baseURL + "users/messageFlag";

//   static String forgotPassword = baseURL + "users/forgetPassword";
//   static String updatePassword = baseURL + "users/updatePassword";

//   //static String appVersion = baseURL + "version";
//   static String appVersion = baseURL + "v1/version";
//   static String isUser = baseURL + "users/isUser/";
//   static String loginDetails = baseURL + "users/loginDetail";

// }

// class SharedPrefs {


//   static String FIRSTNAME = "FIRSTNAME";
//   static String LASTNAME = "LASTNAME";
//   static String USERNAME = "USERNAME";
//   static String ID = "ID";
//   static String TOKEN = "TOKEN";
//   static String isGotNewNotification  = 'isGotNewNotification';
//    static String ISONBOARDING = 'try one';
//   static String ISFIRST = 'try one';
//   static String TEMPFLOW ='try one';
//   static String TEMP = 'try one';
//   static bool showNotificationDot = false;
//   static String isMessageSent = 'isMessageSent';
//   static String userRole = 'userRole';




//   static void saveSharedPreferences(User _user) async {
//     SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//     // await sharedPreferences.setString(FIRSTNAME, _user.user.firstName);
//     // await sharedPreferences.setString(LASTNAME, _user.user.lastName);
//     // await sharedPreferences.setString(TOKEN, _user.token);
//     // await sharedPreferences.setString(USERNAME, _user.user.username);
//     // await sharedPreferences.setInt(ID, _user.user.id);
//   }

//   // static Future<DemoUser> readSharedPreferences() async {

//   //   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//   //   var firstname = sharedPreferences.getString(FIRSTNAME);
//   //   var lastname = sharedPreferences.getString(LASTNAME);
//   //   var token = sharedPreferences.getString(TOKEN);
//   //   var username = sharedPreferences.getString(USERNAME);
//   //   var userId = sharedPreferences.getInt(ID);

//   //   DemoUser demoUser =  DemoUser(firstname!, lastname!, token!, username!, userId!);
//   //   return demoUser;
//   // }



//   static Future saveNewNotification(bool isGotNotification) async{
//     SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//     sharedPreferences.setBool(isGotNewNotification, isGotNotification);
//   }

//   static Future<bool> readNewNotification() async{
//     SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//     bool? res = sharedPreferences.getBool(isGotNewNotification);
//     if(res!=null){
//       return res;
//     }
//     return false;
//   }
//   static void saveisonboarding(bool onboarding) async{
//     SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//     await sharedPreferences.setBool("ISONBOARDING", onboarding);
//   }

//   static Future<bool> readisonboarding() async {
//     SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//     bool? res = sharedPreferences.getBool("ISONBOARDING");
//     if(res!=null){
//       if(res == true){
//         return true;
//       }else{
//         return false;
//       }
//     }
//     return false;
//   }
//   static void saveisfirst(bool isfirst) async{
//     SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//     await sharedPreferences.setBool("ISFIRST", isfirst);
//   }

//   static Future<bool> readisfirst() async {
//     SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//     bool? res = sharedPreferences.getBool("ISFIRST");
//     if(res!=null){
//       if(res == true){
//         return true;
//       }else{
//         return false;
//       }
//     }
//     return false;
//   }
//   static void savetemp(int tempflow) async{
//     SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//     await sharedPreferences.setInt("TEMPFLOW", tempflow);
//   }

//   static Future<int> readtemp() async {
//     SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//     int? res = sharedPreferences.getInt("TEMPFLOW");
//     print(res);
//     if(res!=null){
//       if(res ==0)
//         {
//           return 0;
//         }
//       if(res ==1){
//         return 1;
//       }else if(res==2)
//         {
//         return 2;
//       }
//     }
//     return 0;
//   }
//   static void saveisthroughtemppwd(bool temp) async{
//     SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//     await sharedPreferences.setBool("TEMP", temp);
//   }

//   static Future<bool> readisthroughtemppwd() async {
//     SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//     bool? res = sharedPreferences.getBool("TEMP");
//     if(res!=null){
//       if(res == true){
//         return true;
//       }else{
//         return false;
//       }
//     }
//     return true;
//   }



//   static Future<void> clearSharedPreferences() async {
//     SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//     sharedPreferences.remove(FIRSTNAME);
//     sharedPreferences.remove(LASTNAME);
//     sharedPreferences.remove(TOKEN);
//     sharedPreferences.remove(USERNAME);
//     await sharedPreferences.clear();
//   }
// }
