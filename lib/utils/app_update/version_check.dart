// //Prompt users to update app if there is a new version available
// //Uses url_launcher package

// import 'dart:convert';
// import 'dart:io';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';


// const APP_STORE_URL =
//     'https://apps.apple.com/us/app/dropstat/id1564129925';
// const PLAY_STORE_URL =
//     'https://play.google.com/store/apps/details?id=com.app.dropstat';

// versionCheck(context) async {
// //Get Current installed version of app
//   final PackageInfo info = await PackageInfo.fromPlatform();
//   double currentVersion = double.parse(info.version.trim().replaceAll(".", ""));

// //Get Latest version info from firebase config
//   final AppVersion appVersion = await getAppVersion(context);

//   double newVersion = double.parse(appVersion.version.trim()
//         .replaceAll(".", ""));
//   if (newVersion > currentVersion) {
//     _showVersionDialog(context);
//   }else{
//     Fluttertoast.showToast(msg: "App is already updated");
//   }

// }
// class AppVersion{
//   String version;

//   AppVersion({this.version});

//   AppVersion.fromJson(Map<String, dynamic> json) {
//     version = json['appVersion'] ;
//   }

// }

// Future<AppVersion> getAppVersion(BuildContext context) async {

//   dynamic response = await http.get(
//     APIS.appVersion,
//   );
//   print('App new version response: ${response.statusCode}');
//   if (response.statusCode == 200 || response.statusCode == 201) {
//     var _data;
//     print('App new version response: ${response.body}');
//       _data = json.decode(response.body);
//       AppVersion appVersion = AppVersion.fromJson(_data);
//       return appVersion;
//   } else {
//     if (response.statusCode == StatusCode.FABRICATION) {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(
//           builder: (context) => UsersSignIn(),
//         ),
//       );
//     } else {
//       Fluttertoast.showToast(msg: 'Fail to get user details');
//     }
//   }
// }

// //Show Dialog to force user to update
// _showVersionDialog(context) async {
//   await showDialog<String>(
//     context: context,
//     barrierDismissible: false,
//     builder: (BuildContext context) {
//       String title = "New Update Available";
//       String message =
//           "To continue using this app please update to latest version";
//       String btnLabel = "Update Now";
//       return Platform.isIOS
//           ? new CupertinoAlertDialog(
//               title: Text(title),
//               content: Text(message),
//               actions: <Widget>[
//                 TextButton(
//                   child: Text(btnLabel),
//                   onPressed: () => _launchURL(APP_STORE_URL),
//                 ),
//               ],
//             )
//           : WillPopScope(
//             onWillPop: () async => false,
//             child: new AlertDialog(
//                 title: Text(title),
//                 content: Text(message),
//                 actions: <Widget>[
//                   TextButton(
//                     child: Text(btnLabel),
//                     onPressed: () => _launchURL(PLAY_STORE_URL),
//                   ),
//                 ],
//               ),
//           );
//     },
//   );
// }

// _launchURL(String url) async {
//   if (await canLaunch(url)) {
//     await launch(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }
