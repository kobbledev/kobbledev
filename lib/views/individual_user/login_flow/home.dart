// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:kobble_dev/design_tools/styles.dart';
import '../../../../design_tools/colors.dart';
import '../../../design_tools/device_details.dart';
import 'signup.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, String? title}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;

    return
        //Desktop View
        Scaffold(
      backgroundColor: Colors1.bg,
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(screenheight * DeviceDetails.appbarHeight),
        child: Center(
          child: AppBar(
            toolbarHeight: (screenheight * DeviceDetails.appbarHeight) - 5,
            elevation: 7,
            backgroundColor: Colors1.bg,
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

                Padding(
                  padding: EdgeInsets.only(right: screenwidth * 0.06),
                  child: Container(
                    margin: EdgeInsets.zero,
                    height: 56,
                    width: 183,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        gradient: const LinearGradient(
                            colors: [Colors1.hgrad1, Colors1.hgrad2])),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUp()));
                      },
                      child: const Text("Get Card"),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13))),
                    ),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(left: 103, right: 103.0),
                //   child: Container(
                //     decoration: BoxDecoration(
                //       shape: BoxShape.circle,
                //       border: Border.all(
                //           color: Colors1.hgrad2,
                //           style: BorderStyle.solid,
                //           width: 2.3),
                //     ),
                //     child: Padding(
                //       padding: const EdgeInsets.all(6.0),
                //       child: IconButton(
                //           onPressed: () {},
                //           icon: const Icon(
                //             Icons.person_outlined,
                //             color: Colors.white,
                //           )),
                //     ),
                //   ),

                //   //  Container(
                //   //   decoration: BoxDecoration(
                //   //     shape: BoxShape.circle,
                //   //     border: Border.all(
                //   //         color: Colors1.hgrad2,
                //   //         style: BorderStyle.solid,
                //   //         width: 2.3),
                //   //   ),
                //   //   child: Padding(
                //   //     padding: const EdgeInsets.all(6.0),
                //   //     child: IconButton(
                //   //         onPressed: () {},
                //   //         icon: Image.asset(
                //   //           'assets/icons/global_icons/profile.png',
                //   //           width: 23,
                //   //           height: 25,
                //   //         )),
                //   //   ),
                //   // ),
                // ),
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              width: double.infinity,
              height: screenheight * 0.21,
              color: Colors.black,
              child: Padding(
                padding: EdgeInsets.only(
                    left: screenwidth * 0.06, right: screenwidth * 0.06),
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
                      SizedBox(
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
                      SizedBox(
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
            right: 57,
            child: Image.asset(
              "assets/icons/bgCard.png",
              width: screenwidth * 0.33,
              height: screenheight * 0.66,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: screenwidth * 0.06, right: screenwidth * 0.06),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Padding(
                //   padding: const EdgeInsets.only(
                //     top: 40,
                //   ),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       RichText(
                //           text: const TextSpan(
                //               style: TextStyle(
                //                 fontSize: 22,
                //                 fontWeight: FontWeight.w500,
                //               ),
                //               children: [
                //             TextSpan(
                //               text: 'K',
                //               style: TextStyle(
                //                   fontFamily: Fonts.nunito,
                //                   fontWeight: FontWeight.bold,
                //                   fontSize: 38,
                //                   color: Colors.white),
                //             ),
                //             TextSpan(
                //                 text: 'O',
                //                 style: TextStyle(
                //                   fontFamily: Fonts.nunito,
                //                   fontWeight: FontWeight.w900,
                //                   fontSize: 45,
                //                   color: Colors1.green,
                //                 )),
                //             TextSpan(
                //               text: 'BBLE',
                //               style: TextStyle(
                //                   fontFamily: Fonts.nunito,
                //                   fontWeight: FontWeight.bold,
                //                   fontSize: 38,
                //                   color: Colors.white),
                //             ),
                //           ])),
                //       Row(
                //         children: [
                //           Container(
                //             margin: EdgeInsets.zero,
                //             height: 56,
                //             width: 183,
                //             decoration: BoxDecoration(
                //                 borderRadius: BorderRadius.circular(13),
                //                 gradient: const LinearGradient(
                //                     colors: [Colors1.hgrad1, Colors1.hgrad2])),
                //             child: ElevatedButton(
                //               onPressed: () {
                //                 Navigator.push(
                //                     context,
                //                     MaterialPageRoute(
                //                         builder: (context) => const SignUp()));
                //               },
                //               child: const Text("Get Card"),
                //               style: ElevatedButton.styleFrom(
                //                   primary: Colors.transparent,
                //                   shadowColor: Colors.transparent,
                //                   shape: RoundedRectangleBorder(
                //                       borderRadius: BorderRadius.circular(13))),
                //             ),
                //           ),
                //           const SizedBox(
                //             width: 53,
                //           ),
                //           Container(
                //             decoration: BoxDecoration(
                //               shape: BoxShape.circle,
                //               border: Border.all(
                //                   color: Colors1.hgrad2,
                //                   style: BorderStyle.solid,
                //                   width: 2.3),
                //             ),
                //             child: Padding(
                //               padding: const EdgeInsets.all(6.0),
                //               child: IconButton(
                //                   onPressed: () {},
                //                   icon: const Icon(
                //                     Icons.person_outlined,
                //                     color: Colors.white,
                //                   )),
                //             ),
                //           ),
                //         ],
                //       )
                //     ],
                //   ),
                // ),
                Padding(
                  padding: EdgeInsets.only(top: screenheight * 0.058),
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
                      padding: EdgeInsets.only(
                        left: 0,
                        top: screenheight * 0.039, // 27,
                      ),
                      child: Image.asset(
                        'assets/icons/bgText.png',
                        height: screenheight * 0.194, // 207,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: screenheight * 0.042),
                      child: const Text(
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
                  padding: EdgeInsets.only(top: screenheight * 0.044),
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
/*
 :
        //Mobile View
        Scaffold(
            backgroundColor: Colors1.bg,
            body: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 521,
                  child: const Text(
                    'under contruction',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Welcome to\nKobble.',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                          fontFamily: Fonts.nunito,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 41,
                    ),
                    Text(
                      'Instantly Share Anything',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontFamily: Fonts.nunito,
                          color: Colors1.signupbgtxt),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'With a tap of your device or scan code, share \n'
                      'your info with anyone you meet.',
                      style: TextStyle(
                          fontFamily: Fonts.nunito,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors1.hgrey),
                    ),
                  ],
                )
              ],
            ),
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.only(bottom: 45, left: 28, right: 28),
              child: Container(
                margin: EdgeInsets.zero,
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    gradient: const LinearGradient(
                        colors: [Color(0Xff7EFFD0), Color(0Xff0BFFA6)])),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUp()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icons/login_assets/mobile.png',
                        width: 20,
                        height: 13,
                        alignment: Alignment.center,
                      ),
                      const Text(
                        "Continue With Mobile Number",
                        style: TextStyle(
                          fontFamily: Fonts.nunito,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color(0Xff1A1A1A),
                        ),
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13))),
                ),
              ),
            ),
          )
 */