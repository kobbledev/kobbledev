import 'package:flutter/material.dart';

class DeviceDetails{

static double get appbarHeight {return 0.138;}


  double  deviceWidth(BuildContext ctx) {
    return MediaQuery.of(ctx).size.width;
  }

  double  deviceHeight(BuildContext ctx) {
    return MediaQuery.of(ctx).size.width;
  }
}