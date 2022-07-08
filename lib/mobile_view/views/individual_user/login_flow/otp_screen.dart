import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../design_tools/colors.dart';
import '../../../design_tools/styles.dart';
import 'flow_info.dart';

class PinCodeVerificationScreen extends StatefulWidget {
  final String? phoneNumber;

  const PinCodeVerificationScreen({
    Key? key,
    this.phoneNumber,
  }) : super(key: key);

  @override
  PinCodeVerificationScreenState createState() =>
      PinCodeVerificationScreenState();
}

class PinCodeVerificationScreenState extends State<PinCodeVerificationScreen> {
  TextEditingController textEditingController = TextEditingController();
  // ..text = "123456";

  // ignore: close_sinks
  StreamController<ErrorAnimationType>? errorController;

  bool hasError = false;
  //String currentText = "";
  //final formKey = GlobalKey<FormState>();
  final otpkey = GlobalKey<FormState>();
  String enteredOtp = "";

  @override
  void initState() {
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  void dispose() {
    errorController!.close();

    super.dispose();
  }

  // snackBar Widget
  snackBar(String? message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message!),
        duration: const Duration(seconds: 2),
      ),
    );
  }

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
      resizeToAvoidBottomInset: false,
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: preferredSize2,
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/icons/global_icons/Bg.png",
              ),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 27, right: 27, top: 87),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'OTP\nVerification.',
                style: TextStyle(
                    fontFamily: FontFamily.nunito,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 10.1,
              ),
              Text(
                'Enter the OTP sent to +91 ${widget.phoneNumber}',
                style: const TextStyle(
                    fontFamily: FontFamily.nunito,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color(0Xff9D9F9E)),
              ),
              const SizedBox(
                height: 63,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: Form(
                  key: otpkey,
                  child: PinCodeTextField(
                    appContext: context,
                    length: 4,
                    onChanged: (value) {
                      enteredOtp = value;
                    },
                    autoFocus: true,
                    textStyle: const TextStyle(
                        fontFamily: FontFamily.nunito,
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w300),
                    pastedTextStyle: const TextStyle(
                        fontFamily: FontFamily.nunito,
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w300),
                    pinTheme: PinTheme(
                      activeColor: Colors1.green,
                      selectedColor: Colors1.green,
                      borderWidth: 2,
                      inactiveColor: Colors1.borderGrey,
                      fieldHeight: 60,
                      fieldWidth: 60,
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    animationType: AnimationType.scale,
                    showCursor: true,
                    cursorHeight: 33,
                    cursorColor: Colors1.hgrey,
                    animationDuration: const Duration(milliseconds: 300),
                    errorAnimationController: errorController,
                    controller: textEditingController,
                    keyboardType: TextInputType.number,
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Container(
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FlowInfo()));
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
                        "Verify",
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
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Didn't receive the OTP ?",
                    style: TextStyle(
                        fontFamily: FontFamily.nunito,
                        color: Colors1.borderGrey,
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                  ),
                  Text("Resend",
                      style: TextStyle(
                        fontFamily: FontFamily.nunito,
                        color: Colors.green,
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*

 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Form(
                        child: PinCodeTextField(
                          autoFocus: true,
                          textStyle: const TextStyle(
                              fontFamily: FontFamily.nunito,
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w300),
                          appContext: context,
                          pastedTextStyle: const TextStyle(
                              fontFamily: FontFamily.nunito,
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w300),
                          length: 4,
                          animationType: AnimationType.fade,
                          autoDismissKeyboard: true,
                          validator: (v) {
                            if (v!.length < 5) {
                              return "I'm from validator";
                            } else {
                              return null;
                            }
                          },
                          pinTheme: PinTheme(
                            activeColor: Colors1.green,
                            selectedColor: Colors1.green,
                            borderWidth: 2,
                            shape: PinCodeFieldShape.box,
                            borderRadius: BorderRadius.circular(13),
                            fieldHeight: 60.1,
                            fieldWidth: 60.1,
                            inactiveColor: Colors.grey,
                            //activeFillColor: Colors.white,
                          ),

                          showCursor: true,
                          cursorHeight: 27,
                          cursorColor: Colors1.hgrey,
                          animationDuration: const Duration(milliseconds: 300),

                          errorAnimationController: errorController,
                          controller: textEditingController,
                          keyboardType: TextInputType.number,
                          // boxShadows: const [
                          //   BoxShadow(
                          //     offset: Offset(0, 1),
                          //     color: Colors.black12,
                          //     blurRadius: 10,
                          //   )
                          // ],
                          onCompleted: (v) {
                            debugPrint("Completed");
                          },
                          // onTap: () {
                          //   print("Pressed");
                          // },
                          onChanged: (value) {
                            debugPrint(value);
                            setState(() {
                              currentText = value;
                            });
                          },
                          beforeTextPaste: (text) {
                            debugPrint("Allowing to paste $text");
                            //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                            //but you can show anything you want here, like your pop up saying wrong paste format or etc
                            return true;
                          },
                        ),
                      ),
                    ),
                  ],
                ),










                Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(67.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppBar(
                elevation: 0,
                backgroundColor: Colors1.bg,
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
        ),
        backgroundColor: Colors1.bg,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 29),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'OTP\nVerification.',
                  style: TextStyle(
                      fontFamily: FontFamily.nunito,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 10.1,
                ),
                Text(
                  'Enter the OTP sent to +91 ${widget.phoneNumber}',
                  style: const TextStyle(
                      fontFamily: FontFamily.nunito,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Color(0Xff9D9F9E)),
                ),
                const SizedBox(
                  height: 63,
                ),
                const SizedBox(
                  height: 35,
                ),
                Container(
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
                      //         builder: (context) => const SignUp()));
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
                          "Verify",
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
                const SizedBox(
                  height: 30,
                ),
                const Text("0:30"),
                SizedBox(
                  child: Row(children: [
                   
                  ]),
                )
              ]),
        ));
  }
}
               
 */
