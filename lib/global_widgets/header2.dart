import 'package:flutter/material.dart';

import '../design_tools/colors.dart';
import '../design_tools/device_details.dart';
import '../design_tools/styles.dart';

class Header2 {
  static PreferredSize stepHeader(double screenheight) {
    return PreferredSize(
      preferredSize: Size.fromHeight(screenheight * DeviceDetails.appbarHeight),
      child: Center(
        child: AppBar(
          toolbarHeight: (screenheight * DeviceDetails.appbarHeight) - 5,
          elevation: 7,
          backgroundColor: Colors.white,
          leading: const Text(''),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RichText(
                  text: const TextSpan(
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                      children: [
                    TextSpan(
                      text: 'K',
                      style: TextStyle(
                          fontFamily: FontFamily.nunito,
                          fontWeight: FontWeight.bold,
                          fontSize: 38,
                          color: Color(0Xff0F1010)),
                    ),
                    TextSpan(
                        text: 'O',
                        style: TextStyle(
                          fontFamily: FontFamily.nunito,
                          fontWeight: FontWeight.w900,
                          fontSize: 45,
                          color: Colors1.green,
                        )),
                    TextSpan(
                      text: 'BBLE',
                      style: TextStyle(
                          fontFamily: FontFamily.nunito,
                          fontWeight: FontWeight.bold,
                          fontSize: 38,
                          color: Color(0Xff0F1010)),
                    ),
                  ])),
              Padding(
                padding: const EdgeInsets.only(right: 103.0),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: Colors1.hgrad2,
                        style: BorderStyle.solid,
                        width: 2.3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/icons/global_icons/profile.png',
                          width: 23,
                          height: 25,
                        )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
