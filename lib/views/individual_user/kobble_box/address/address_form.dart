import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../../global_widgets/header2.dart';

class AddressForm extends StatefulWidget {
  const AddressForm({Key? key}) : super(key: key);

  @override
  State<AddressForm> createState() => _AddressFormState();
}

class _AddressFormState extends State<AddressForm> {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: Header2.stepHeader(screenheight),
      body: Container(
        width: screenwidth,
        height: screenheight,
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                "assets/icons/global_icons/location_bg.png",
                width: screenwidth * 0.171,
                height: screenheight * 0.451,
              ),
            )
          ],
        ),
      ),
    );
  }
}
