import 'package:flutter/material.dart';

import '../../../../design_tools/colors.dart';
import '../../../../design_tools/styles.dart';
import '../../../../global_widgets/header1.dart';
import 'user_details.dart';

class FlowInfo extends StatelessWidget {
  const FlowInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.zero,
        height: screenheight,
        width: screenwidth,
        decoration: const BoxDecoration(gradient: Colors1.BG),
        child: Row(
          children: [
            SizedBox(
              width: screenwidth * 0.381,
              height: screenheight,
              child: Padding(
                padding: EdgeInsets.only(
                  left: screenwidth * 0.072,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          bottom: screenheight * 0.035,
                          top: screenheight * 0.074),
                      child: const Header(),
                    ),
                    SizedBox(height: screenheight * 0.083),
                    const Text(
                      "A few simple\nsteps make your\nkobble card.",
                      style: TextStyle(
                          fontFamily: Fonts.nunito,
                          color: Color(0XffF0F0F0),
                          fontSize: 47,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: screenheight * 0.081,
                    ),
                    Container(
                      margin: EdgeInsets.zero,
                      height: 67.3,
                      width: 293,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
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
                                    fontSize: 27,
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
            Expanded(child: Image.asset("assets/icons/global_icons/info.png"))
          ],
        ),
      ),
    );
  }
}
