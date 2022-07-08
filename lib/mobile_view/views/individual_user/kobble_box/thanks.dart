import 'package:flutter/material.dart';
import 'package:kobble_dev/mobile_view/design_tools/styles.dart';
import 'package:kobble_dev/mobile_view/views/individual_user/login_flow/splash_screen.dart';

class ThanksPage extends StatelessWidget {
  const ThanksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/icons/global_icons/thanksBg.png",
              ),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: EdgeInsets.only(
              left: screenWidth * 0.126, top: screenHeight * 0.178),
          child: const Text(
            "Thanks\nfor Shopping !",
            style: TextStyle(
                fontFamily: FontFamily.nunito,
                fontSize: 25,
                fontWeight: FontWeight.w800,
                color: Colors.black),
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
                        builder: (context) => const SplashScreen()));
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Done",
                    style: TextStyle(
                      fontFamily: FontFamily.nunito,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0Xff1A1A1A),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
