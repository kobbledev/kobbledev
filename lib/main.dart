import 'package:flutter/material.dart';

import 'design_tools/colors.dart';
import 'views/individual_user/login_flow/signup.dart';

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
      home: const SignUp(),
    );
  }
}
