import 'package:flutter/material.dart';

import '../design_tools/colors.dart';
import '../design_tools/styles.dart';

class KobbleHeader extends StatelessWidget {
  const KobbleHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
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
                color: Colors.white),
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
                color: Colors.white),
          ),
        ]));
  }
}
