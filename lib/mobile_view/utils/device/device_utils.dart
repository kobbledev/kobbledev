// //

// import 'package:device_info_plus/device_info_plus.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:internet_connection_checker/internet_connection_checker.dart';
// import 'dart:io';

// import 'device_details.dart';

// /// Helper class for device related operations.
// ///
// class DeviceUtils {
//   ///
//   /// hides the keyboard if its already open
//   ///
//   static hideKeyboard(BuildContext context) {
//     FocusScope.of(context).unfocus();
//   }


// static void InternetChecker() async {
//   bool result = await InternetConnectionChecker().hasConnection;
  
// }
// bool result = 
// if(result == true) {
//   print('YAY! Free cute dog pics!');
// } else {
//   print('No internet :( Reason:');
//   print(InternetConnectionChecker().lastTryResults);
// }



//   ///
//   /// accepts a double [scale] and returns scaled sized based on the screen
//   /// orientation
//   ///
//   static double getScaledSize(BuildContext context, double scale) =>
//       scale *
//       (MediaQuery.of(context).orientation == Orientation.portrait
//           ? MediaQuery.of(context).size.width
//           : MediaQuery.of(context).size.height);

//   ///
//   /// accepts a double [scale] and returns scaled sized based on the screen
//   /// width
//   ///
//   static double getScaledWidth(BuildContext context, double scale) =>
//       scale * MediaQuery.of(context).size.width;

//   ///
//   /// accepts a double [scale] and returns scaled sized based on the screen
//   /// height
//   ///
//   static double getScaledHeight(BuildContext context, double scale) =>
//       scale * MediaQuery.of(context).size.height;

//   static Future<void> get() async {
//     WidgetsFlutterBinding.ensureInitialized();

//     DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

//     if (Platform.isAndroid) {
//       AndroidDeviceInfo info = await deviceInfo.androidInfo;
//       print(info.toMap());
//     } else if (Platform.isIOS) {
//       IosDeviceInfo info = await deviceInfo.iosInfo;
//       print(info.toMap());
//     } 
//   }

//   static Future<DeviceDetails> getDevice() async {
//     WidgetsFlutterBinding.ensureInitialized();
//     DeviceDetails deviceDetails = DeviceDetails();
//     DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

//     if (kIsWeb) {
//       WebBrowserInfo info = await deviceInfo.webBrowserInfo;
//       deviceDetails.deviceName = info.browserName as String;
//       deviceDetails.identifier = info.browserName as String;
//       deviceDetails.deviceVersion = info.appVersion as String;
//       print('Running on ${deviceDetails.deviceName}');
//       return deviceDetails;
//     } else if (Platform.isAndroid) {
//       AndroidDeviceInfo info = await deviceInfo.androidInfo;
//       deviceDetails.deviceName = info.model as String;
//       deviceDetails.identifier = info.androidId as String;
//       deviceDetails.deviceVersion = info.version.release as String;
//       return deviceDetails;
//     } else if (Platform.isIOS) {
//       IosDeviceInfo info = await deviceInfo.iosInfo;
//       deviceDetails.deviceName = info.utsname.machine as String;
//       deviceDetails.identifier = info.identifierForVendor as String;
//       deviceDetails.deviceVersion = info.systemVersion as String;
//       return deviceDetails;
//     } else {
//       deviceDetails.deviceName = "Failed to get platform Name.";
//       deviceDetails.identifier = "Failed to get platform ID.";
//       deviceDetails.deviceVersion = "Failed to get platform version.";
//       print('Failed to get platform Details.');
//       return deviceDetails;
//     }
//   }

//   static Future<DeviceDetails> getDeviceDetails() async {
//     DeviceDetails deviceDetails = DeviceDetails();
//     DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

//     if (kIsWeb) {
//       WebBrowserInfo webBrowserInfo = await deviceInfo.webBrowserInfo;
//       deviceDetails.deviceName = webBrowserInfo.browserName as String;
//       print('Running on ${"----  " + deviceDetails.deviceName}');
//       return deviceDetails;
//     } else if (Platform.isAndroid) {
//       AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
//       deviceDetails.deviceName = androidInfo.model as String;
//       deviceDetails.identifier = androidInfo.androidId as String;
//       deviceDetails.deviceVersion = androidInfo.version.release as String;
//       print('Running on ${androidInfo.model}');
//       return deviceDetails;
//     } else if (Platform.isIOS) {
//       IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
//       deviceDetails.deviceName = iosInfo.utsname.machine as String;
//       deviceDetails.identifier = iosInfo.identifierForVendor as String;
//       deviceDetails.deviceVersion = iosInfo.systemVersion as String;
//       print('Running on ${iosInfo.model}');
//       return deviceDetails;
//     } else {
//       deviceDetails.deviceName = "Failed to get platform Name.";
//       deviceDetails.identifier = "Failed to get platform ID.";
//       deviceDetails.deviceVersion = "Failed to get platform version.";
//       print('Failed to get platform Details.');
//       return deviceDetails;
//     }
//   }

//   // static Future<DeviceDetails?> getDeviceDetails() async {
//   //   DeviceDetails deviceDetails = DeviceDetails();
//   //   DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
//   //   if (Platform.isAndroid) {
//   //     AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
//   //     deviceDetails.deviceName = androidInfo.model!;
//   //     deviceDetails.identifier = androidInfo.androidId!;
//   //     deviceDetails.deviceVersion = androidInfo.version.release!;
//   //     print('Running on ${androidInfo.model}'); // e.g. "Moto G (4)"
//   //     return deviceDetails;
//   //   } else if (Platform.isIOS) {
//   //     IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
//   //     print('Running on ${iosInfo.utsname.machine}');
//   //     deviceDetails.deviceName = iosInfo.utsname.machine!;
//   //     deviceDetails.identifier = iosInfo.identifierForVendor!;
//   //     deviceDetails.deviceVersion = iosInfo.systemVersion!;
//   //     return deviceDetails;
//   //   } else if (kIsWeb) {
//   //     WebBrowserInfo webBrowserInfo = await deviceInfo.webBrowserInfo;
//   //     print('Running on ${webBrowserInfo.browserName}');
//   //     // deviceDetails.deviceName = webBrowserInfo.utsname.machine!;
//   //     // deviceDetails.identifier = webBrowserInfo.identifierForVendor!;
//   //     // deviceDetails.deviceVersion = webBrowserInfo.systemVersion!;
//   //     return deviceDetails;
//   //   } else {
//   //     // ignore: null_check_always_fails
//   //     return null;
//   //   }
//   // }
// }
