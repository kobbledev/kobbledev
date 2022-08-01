
import 'package:flutter/material.dart';

class SwitchWidget extends StatefulWidget {
  @override
  SwitchClass createState() => SwitchClass();
}

class SwitchClass extends State {
  bool isSwitched = false;
  var textValue = 'Switch is OFF';

  void toggleSwitch(bool value) {

    if(isSwitched == false)
    {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    }
    else
    {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Transform.scale(
            scale: 1,
            child: Switch(
              onChanged: toggleSwitch,
              value: isSwitched,
              activeColor: const Color(0xFF0BFFA6),
              activeTrackColor: const Color(0xFF1C2421),
              inactiveThumbColor: Colors.white,
              inactiveTrackColor: Colors.black,
            )
        ),
          // Text('$textValue', style: TextStyle(fontSize: 20),)
        ]

    );
  }
}