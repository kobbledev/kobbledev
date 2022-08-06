import 'package:flutter/material.dart';
import 'package:kobble_dev/views/individual_user/login_flow/home.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import 'design_tools/colors.dart';
import 'views/individual_user/kobble_box/address/address_form.dart';
import 'views/individual_user/select_card_flow/provider/build_card_provider.dart';

void main() {
  runApp(
    MultiProvider(
      // ignore: prefer_const_literals_to_create_immutables
      providers: [
        // ChangeNotifierProvider(create: (_) => CartProvider()),
        // ChangeNotifierProvider(create: (_) => AddressProvider()),
        // ChangeNotifierProvider(create: (_) => OrdersProvider()),
        ChangeNotifierProvider(create: (context) => BuildCardProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kobble',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors1.bg,
      ),
      builder: (context, child) => ResponsiveWrapper.builder(
        child,
        maxWidth: 2000,
        minWidth: 800,
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.autoScale(1024, name: DESKTOP),
          const ResponsiveBreakpoint.autoScale(1440, name: "Web2"),
          const ResponsiveBreakpoint.resize(1980, name: "Web3"),
        ],
      ),
      home: const HomePage(),
    );
  }
}
