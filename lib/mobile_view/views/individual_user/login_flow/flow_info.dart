import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kobble_dev/mobile_view/views/individual_user/steps/build_card.dart';

import '../../../design_tools/colors.dart';
import '../../../design_tools/styles.dart';
import 'user_detail.dart';

class FlowInfo extends StatelessWidget {
  const FlowInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var preferredSize2 = PreferredSize(
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
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: preferredSize2,
      body: Container(
        //process_bg
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/icons/global_icons/process_bg.png",
              ),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 27, right: 27, top: 87),
          child: Column(
            children: const [
              Center(
                child: Text(
                  "A few simple steps make\n your kobble card.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: FontFamily.nunito,
                      color: Color(0XffF0F0F0),
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 23,
              ),
              Center(
                child: Text(
                  "Customize your card now.",
                  style: TextStyle(
                      fontFamily: FontFamily.nunito,
                      color: Color(0XffF0F0F0),
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
              ),
              // Expanded(
              //   child: Padding(
              //     padding: const EdgeInsets.symmetric(vertical: 7),
              //     child: Image.asset(
              //       "assets/icons/global_icons/info.png",
              //       // width: MediaQuery.of(context).size.height * 0.4,
              //       fit: BoxFit.cover,
              //     ),
              //   ),
              // )
            ],
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
                borderRadius: BorderRadius.circular(13),
                gradient: const LinearGradient(
                    colors: [Color(0Xff7EFFD0), Color(0Xff0BFFA6)])),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const BuildCard()));
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13))),
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
        ),
      ),
    );
  }
}
