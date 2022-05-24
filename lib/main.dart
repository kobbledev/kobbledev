import 'package:flutter/material.dart';
import 'package:kobble_dev/design_tools/colors.dart';
import 'package:kobble_dev/login_flow/home.dart';
import 'package:kobble_dev/login_flow/user_details.dart';

import 'demo.dart';
import 'select_card_flow/edit_card.dart';
import 'login_flow/signup.dart';
import 'select_card_flow/widgets/select_item.dart';

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
      home: const UserForm(),
    );
  }
}
