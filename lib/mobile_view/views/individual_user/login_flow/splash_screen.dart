import 'package:flutter/material.dart';

import '../../../design_tools/colors.dart';
import '../../../design_tools/styles.dart';
import 'signup.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late bool addButton;

  @override
  void initState() {
    // implement initState
    addButton = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var corporateBtn = Padding(
      padding: const EdgeInsets.only(bottom: 1),
      child: Container(
        margin: EdgeInsets.zero,
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            gradient: const LinearGradient(
                colors: [Color(0XffBAFFE6), Color(0Xff0BFFA6)])),
        child: ElevatedButton(
          onPressed: () {
            //return onSubmit(signupkey);
            // Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //         builder: (context) => const FlowInfo()));
            setState(() {
              addButton = true;
            });
          },
          style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              shadowColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icons/global_icons/icon_corp.png',
                width: 27,
                height: 27,
                alignment: Alignment.center,
              ),
              const Text(
                " Register as Corporate user ?",
                style: TextStyle(
                  fontFamily: FontFamily.nunito,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Color(0xff0F1010),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    var individualBtn = Padding(
      padding: const EdgeInsets.only(bottom: 1),
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
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SignUp()));
            setState(() {
              addButton = true;
            });
          },
          style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              shadowColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icons/global_icons/icon_indiv.png',
                width: 27,
                height: 27,
                alignment: Alignment.center,
              ),
              const Text(
                " Register as individual user ?",
                style: TextStyle(
                  fontFamily: FontFamily.nunito,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Color(0xff0F1010),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    var mobileBtn = Padding(
      padding: const EdgeInsets.only(bottom: 1),
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
            //return onSubmit(signupkey);
            // Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //         builder: (context) => const FlowInfo()));
            setState(() {
              addButton = true;
            });
          },
          style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              shadowColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icons/global_icons/icon_mobile.png',
                width: 20,
                height: 13,
                alignment: Alignment.center,
              ),
              const Text(
                " Continue With Mobile Number",
                style: TextStyle(
                  fontFamily: FontFamily.nunito,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Color(0xff1A1A1A),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    return Container(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/icons/global_icons/splash_bg.png",
                  ),
                  fit: BoxFit.cover),
            ),
            child: Stack(
              children: [
                // Image.asset(
                //   "assets/icons/global_icons/splash_bg.png",
                //   width: double.infinity,
                //   height: double.infinity,
                //   fit: BoxFit.fill,
                // ),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height * 0.52,
                      child: const Text(
                        '',
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              'Welcome to\nKobble.',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              height: 21,
                            ),
                            const Text(
                              'Instantly Share Anything',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: FontFamily.nunito,
                                  fontWeight: FontWeight.bold,
                                  color: Colors1.signupbgtxt),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'With a tap of your device or scan code, share \n'
                              'your info with anyone you meet.',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors1.hgrey),
                            ),
                            const SizedBox(
                              height: 23,
                            ),
                            Container(
                              child: addButton
                                  ? Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 23),
                                      child: Column(
                                        children: [
                                          corporateBtn,
                                          const SizedBox(
                                            height: 13,
                                          ),
                                          individualBtn
                                        ],
                                      ),
                                    )
                                  : Column(
                                      children: [
                                        mobileBtn,
                                        const SizedBox(
                                          height: 43,
                                        )
                                      ],
                                    ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
