
import 'package:flutter/material.dart';

import '../design_tools/styles.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          alignment: Alignment.center,
          height: 70,
          child: RichText(
              text: TextSpan(
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                  children: [
                const TextSpan(
                  text: 'K',
                  style: TextStyle(
                      fontFamily: Fonts.nunito,
                      fontWeight: FontWeight.bold,
                      fontSize: 38,
                      color: Colors.white),
                ),
                WidgetSpan(
                    child: SizedBox(
                  width: 50,
                  height: 62,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(''),
                          Image.asset(
                            "assets/icons/global_icons/op.png",
                            width: 10,
                            height: 10,
                          ),
                        ],
                      ),
                      Image.asset(
                        "assets/icons/global_icons/o.png",
                        width: 40,
                        height: 46,
                      ),
                    ],
                  ),
                )),
                const TextSpan(
                  text: 'BBLE',
                  style: TextStyle(
                      fontFamily: Fonts.nunito,
                      fontWeight: FontWeight.bold,
                      fontSize: 38,
                      color: Colors.white),
                ),
              ])),
        ),
      ],
    );
  }
}
