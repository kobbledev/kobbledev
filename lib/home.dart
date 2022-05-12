// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:kobble_dev/styles.dart';

import 'colors.dart';
import 'signUp.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, String? title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors1.bg,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              width: double.infinity,
              height: 233,
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.only(left: 130, right: 130),
                child: LayoutBuilder(builder:
                    (BuildContext context, BoxConstraints constraints) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: constraints.maxWidth / 3.1,
                        child: ListTile(
                          horizontalTitleGap: 50,
                          leading: Image.asset(
                            'assets/icons/instant.png',
                            width: 36,
                            height: 36,
                          ),
                          title: const Text(
                            'Instant',
                            style: TextStyle(
                                fontFamily: Fonts.nunito,
                                fontWeight: FontWeight.bold,
                                fontSize: 35,
                                color: Colors1.green),
                          ),
                          subtitle: const Text(
                            'Share anything with a tap or scan.',
                            style: TextStyle(
                              fontFamily: Fonts.nunito,
                              fontWeight: FontWeight.normal,
                              fontSize: 22,
                              color: Colors1.hgrey,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: constraints.maxWidth / 3.1,
                        child: ListTile(
                          horizontalTitleGap: 50,
                          leading: Image.asset(
                            'assets/icons/easy.png',
                            width: 36,
                            height: 36,
                          ),
                          title: const Text(
                            'Easy',
                            style: TextStyle(
                                fontFamily: Fonts.nunito,
                                fontWeight: FontWeight.bold,
                                fontSize: 35,
                                color: Colors1.green),
                          ),
                          subtitle: const Text(
                            'Others don\'t need an app.',
                            style: TextStyle(
                              fontFamily: Fonts.nunito,
                              fontWeight: FontWeight.normal,
                              fontSize: 22,
                              color: Colors1.hgrey,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: constraints.maxWidth / 3.1,
                        child: ListTile(
                          horizontalTitleGap: 50,
                          leading: Image.asset(
                            'assets/icons/server.png',
                            width: 36,
                            height: 36,
                          ),
                          title: const Text(
                            'Compatible',
                            style: TextStyle(
                                fontFamily: Fonts.nunito,
                                fontWeight: FontWeight.bold,
                                fontSize: 35,
                                color: Colors1.green),
                          ),
                          subtitle: const Text(
                            'Works on Apple and Android.',
                            style: TextStyle(
                              fontFamily: Fonts.nunito,
                              fontWeight: FontWeight.normal,
                              fontSize: 22,
                              color: Colors1.hgrey,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                }),
              ),
            ),
          ),
          Positioned(
            top: 50,
            right: 50,
            child: Image.asset(
              "assets/icons/bgCard.png",
              width: 643,
              height: 723,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 130, right: 130),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 40,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  fontFamily: Fonts.nunito,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 38,
                                  color: Colors.white),
                            ),
                            TextSpan(
                                text: 'O',
                                style: TextStyle(
                                  fontFamily: Fonts.nunito,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 45,
                                  color: Colors1.green,
                                )),
                            TextSpan(
                              text: 'BBLE',
                              style: TextStyle(
                                  fontFamily: Fonts.nunito,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 38,
                                  color: Colors.white),
                            ),
                          ])),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.zero,
                            height: 56,
                            width: 183,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13),
                                gradient: const LinearGradient(
                                    colors: [Colors1.hgrad1, Colors1.hgrad2])),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Text("Get Card"),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.transparent,
                                  shadowColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(13))),
                            ),
                          ),
                          const SizedBox(
                            width: 53,
                          ),
                          Container(
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
                                  icon: const Icon(
                                    Icons.person_outlined,
                                    color: Colors.white,
                                  )),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 63.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        'Welcome to Kobble.',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w400,
                            fontFamily: Fonts.nunito,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 0,
                        top: 27,
                      ),
                      child: Image.asset(
                        'assets/icons/bgText.png',
                        height: 207,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 23.0),
                      child: Text(
                        'With a tap of your device or scan code, share \n '
                        'your info with anyone you meet.',
                        style: TextStyle(
                            fontFamily: Fonts.nunito,
                            fontSize: 24,
                            color: Colors1.hgrey),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 52),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.zero,
                          height: 56,
                          width: 196,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            border: Border.all(
                                color: Colors1.hgrad2,
                                style: BorderStyle.solid,
                                width: 1.9),
                          ),
                          child: ElevatedButton(
                            onPressed: () => {},
                            child: const Text(
                              "More Info >",
                              style: TextStyle(
                                  fontFamily: Fonts.nunito,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 20,
                                  color: Colors1.hgrey),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                shadowColor: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(13))),
                          ),
                        )
                      ]),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
