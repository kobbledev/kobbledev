import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kobble_dev/mobile_view/views/individual_user/login_flow/splash_screen.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import 'constant/device_type.dart';
import 'design_tools/colors.dart';
import 'views/individual_user/login_flow/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String deviceType = '';

  @override
  void initState() {
    deviceType = getSmartPhoneOrTablet();
    if (kDebugMode) {
      print("device type: "+deviceType);
    }
    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors1.bg,
      ),
      builder: (context, child) => ResponsiveWrapper.builder(
        child,
        maxWidth: 1920,
        minWidth: 800,
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.autoScale(1024, name: DESKTOP),
          const ResponsiveBreakpoint.autoScale(1440, name: "Web2"),
          const ResponsiveBreakpoint.resize(1920, name: "Web3"),
        ],
      ),
      home: deviceType=='desktop'?const HomePage():const SplashScreen(),
    );
  }
}
