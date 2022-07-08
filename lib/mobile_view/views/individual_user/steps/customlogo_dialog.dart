import 'package:flutter/material.dart';

import '../../../design_tools/colors.dart';
import '../../../design_tools/styles.dart';
import '../../../utils/device/device_details.dart';
import 'build_card.dart';
import 'select_type.dart';

class CustomLogoDialog extends StatelessWidget {
  const CustomLogoDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    var appbar = PreferredSize(
      preferredSize: const Size.fromHeight(67.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
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
      resizeToAvoidBottomInset: false,
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: appbar,
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/icons/global_icons/customLogo.png",
              ),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: screenHeight * 0.087),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 27),
            child: Text(
              "Want to customize your card\nwith logo ?",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: FontFamily.nunito,
                  fontSize: 20,
                  color: Color(0xffF0F0F0),
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 29, vertical: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 71,
                height: 31,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SelectType()));
                  },
                  style: OutlinedButton.styleFrom(
                      primary: Colors1.green,
                      side:
                          const BorderSide(color: Colors1.borderGrey, width: 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(27))),
                  child: const Text(
                    "Skip",
                    style: TextStyle(
                        fontFamily: FontFamily.nunito,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.zero,
                height: 50,
                width: 221,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    gradient: const LinearGradient(
                        colors: [Color(0Xff7EFFD0), Color(0Xff0BFFA6)])),
                child: ElevatedButton(
                  onPressed: () {
                    //return onSubmit(signupkey);
                    customLogoIsSelected = true;
                    //BuildCard.isTruecall();
                    print("In Custom $customLogoIsSelected");
                    Navigator.pop(context,true);
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(''),
                      const Text(
                        "Happy to go",
                        style: TextStyle(
                          fontFamily: FontFamily.nunito,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color(0Xff1A1A1A),
                        ),
                      ),
                      Image.asset(
                        'assets/icons/login_assets/m_arrow-right.png',
                        width: 17,
                        height: 17,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*

BottomAppBar(
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
    

 */