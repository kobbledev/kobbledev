import 'package:flutter/material.dart';

import '../../../design_tools/colors.dart';
import '../../../design_tools/styles.dart';
import '../../../global_widgets/header2.dart';
import 'shopping_cart.dart';

class KobbleBox extends StatefulWidget {
  const KobbleBox({Key? key}) : super(key: key);

  @override
  State<KobbleBox> createState() => _KobbleBoxState();
}

class _KobbleBoxState extends State<KobbleBox> {
  //bool _isActive = false;
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: Header2.stepHeader(screenheight),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 33, bottom: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Kobble - Box",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: Fonts.nunito,
                      fontSize: 50,
                      fontWeight: FontWeight.w800,
                      color: Colors1.green),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "All Digital Business Card Products",
                style: TextStyle(
                    fontFamily: Fonts.nunito,
                    fontWeight: FontWeight.w800,
                    fontSize: 40,
                    color: Colors1.iconl),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 43, left: 193, right: 193),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                boxCard("assets/icons/global_icons/boxcard1.png", "Steel card",
                    293, 191, screenheight, screenwidth),
                boxCard("assets/icons/global_icons/boxcard2.png", "Logo Badges",
                    241, 243, screenheight, screenwidth),
                boxCard("assets/icons/global_icons/boxcard3.png", "Stickers",
                    230, 231, screenheight, screenwidth),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
            bottom: screenheight * 0.06, right: screenwidth * 0.069),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              "assets/icons/global_icons/smile.png",
              width: 39,
              height: 39,
            ),
            const SizedBox(width: 31),
            const Text(
              "Happy to go",
              style: TextStyle(
                  fontFamily: Fonts.nunito,
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: Color(0XffD4D4D4)),
            ),
            const SizedBox(width: 117),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 31, vertical: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 21),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Color(0Xff0F1010),
                      ),
                    ),
                    Text(
                      "Back",
                      style: TextStyle(
                          fontFamily: Fonts.nunito,
                          fontWeight: FontWeight.w800,
                          fontSize: 25,
                          color: Color(0Xff0F1010)),
                    ),
                  ],
                ),
              ),
              style: TextButton.styleFrom(
                  primary: Colors1.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
            ),
            const SizedBox(width: 21),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return const ShoppingCart();
                })));
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 31, vertical: 18),
                child: Row(
                  children: const [
                    Text(
                      "Next",
                      style: TextStyle(
                          fontFamily: Fonts.nunito,
                          fontWeight: FontWeight.w800,
                          fontSize: 25,
                          color: Color(0Xff0F1010)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 21),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0Xff0F1010),
                      ),
                    )
                  ],
                ),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors1.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
            )
          ],
        ),
      ),
    );
  }

  Column boxCard(
    String image,
    String title,
    double w,
    double h,
    double scr_h,
    double scr_w,
  ) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors1.boxbg,
            border: Border.all(
              color: const Color(0XffD7D6D6),
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          width: scr_w * 0.208,
          height: scr_h * 0.370,
          child: Image.asset(
            image,
            width: w,
            height: h,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 27),
          child: Text(
            title,
            style: const TextStyle(
                fontFamily: Fonts.nunito,
                fontWeight: FontWeight.w800,
                fontSize: 35,
                color: Colors1.iconl),
          ),
        )
      ],
    );
  }
}
