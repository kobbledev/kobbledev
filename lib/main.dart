import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import 'design_tools/colors.dart';
import 'views/individual_user/login_flow/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
      home: const HomePage(),
    );
  }
}
