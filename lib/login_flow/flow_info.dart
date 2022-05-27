import 'package:flutter/material.dart';
import 'package:kobble_dev/login_flow/user_details.dart';

import '../design_tools/colors.dart';
import '../design_tools/styles.dart';
import '../global_widgets/header1.dart';

class FlowInfo extends StatelessWidget {
  const FlowInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors1.bg,
      body: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.45,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.only(left: 139, top: 81),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Header(),
                  const SizedBox(
                    height: 123,
                  ),
                  const Text(
                    "A few simple\nsteps make your\nkobble card.",
                    style: TextStyle(
                        fontFamily: Fonts.nunito,
                        color: Color(0XffF0F0F0),
                        fontSize: 60,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 90,
                  ),
                  Container(
                    margin: EdgeInsets.zero,
                    height: 79.3,
                    width: 311,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        gradient: const LinearGradient(
                            colors: [Colors1.lightgreen, Colors1.hgrad2])),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const UserForm()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Happy to go",
                              style: TextStyle(
                                  fontFamily: Fonts.nunito,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: Color(0Xff0F1010))),
                          const SizedBox(
                            width: 27,
                          ),
                          Image.asset(
                            "assets/icons/global_icons/arrow-right.png",
                            width: 23,
                            height: 21,
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40))),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Expanded(child: Text("Card"))
        ],
      ),
    );
  }
}
