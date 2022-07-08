import 'package:flutter/material.dart';
import 'package:kobble_dev/mobile_view/design_tools/colors.dart';
import 'package:kobble_dev/mobile_view/models/common.dart';

import '../../../design_tools/styles.dart';
import 'shopping_cart.dart';

class KobbleBox extends StatelessWidget {
  const KobbleBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<BoxItems> boxList = [
      BoxItems("icons/kobble_box/card_1.png", "Steel cards", 0),
      BoxItems("icons/kobble_box/card_2.png", "Badges", 1),
      BoxItems("icons/kobble_box/card_3.png", "Stickers", 2),
    ];
    var appBar = PreferredSize(
      preferredSize: const Size.fromHeight(67.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppBar(
            elevation: 0,
            backgroundColor: const Color(0xff111212),
            leading: Padding(
              padding: const EdgeInsets.only(left: 7.0),
              child: IconButton(
                onPressed: (() {
                  Navigator.pop(context);
                }),
                icon: Image.asset(
                  "assets/icons/login_assets/back-arrow.png",
                  width: 18,
                  height: 16.5,
                ),
              ),
            ),
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: appBar,
      backgroundColor: const Color(0xff111212),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 27),
          child: Container(
            alignment: Alignment.center,
            //color: Colors.amber,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Kobble - Card Box",
                  style: TextStyle(
                      fontFamily: FontFamily.nunito,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors1.green),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "All Digital Business Card Products",
                  style: TextStyle(
                      fontFamily: FontFamily.nunito,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 33,
                ),
                Column(
                    children: boxList.map((e) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 13),
                    child: SizedBox(
                      width: double.infinity,
                      height: 250,
                      child: Card(
                        color: const Color(0xff202623),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              e.image,
                              width: e.index == 0
                                  ? 288
                                  : e.index == 1
                                      ? 172
                                      : e.index == 2
                                          ? 157
                                          : 0,
                              height: e.index == 0
                                  ? 180
                                  : e.index == 1
                                      ? 178
                                      : e.index == 2
                                          ? 158
                                          : 0,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              height: 9,
                            ),
                            Text(
                              e.title,
                              style: const TextStyle(
                                  fontFamily: FontFamily.nunito,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList()),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 29, vertical: 25),
          child: Container(
            margin: EdgeInsets.zero,
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                gradient: const LinearGradient(
                    colors: [Color(0Xff7EFFD0), Color(0Xff0BFFA6)])),
            child: ElevatedButton(
              onPressed: () {
                //return onSubmit(signupkey);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Cart()));
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(''),
                  Text(
                    "Next",
                    style: TextStyle(
                      fontFamily: FontFamily.nunito,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0Xff1A1A1A),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 22,
                    color: Colors.black,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    
    );
  }
}
