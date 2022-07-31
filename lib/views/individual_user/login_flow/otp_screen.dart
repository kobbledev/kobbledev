import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kobble_dev/design_tools/colors.dart';

import 'package:pin_code_fields/pin_code_fields.dart';
import '../../../../design_tools/colors.dart';
import '../../../../design_tools/styles.dart';
import '../../../../global_widgets/header1.dart';
import 'flow_info.dart';

class PinCodeVerificationScreen extends StatefulWidget {
  final String? phoneNumber;

  const PinCodeVerificationScreen({
    Key? key,
    this.phoneNumber,
  }) : super(key: key);

  @override
  _PinCodeVerificationScreenState createState() =>
      _PinCodeVerificationScreenState();
}

class _PinCodeVerificationScreenState extends State<PinCodeVerificationScreen> {
  TextEditingController textEditingController = TextEditingController();
  // ..text = "123456";

  // ignore: close_sinks
  StreamController<ErrorAnimationType>? errorController;

  bool hasError = false;
  String currentText = "";
  final formKey = GlobalKey<FormState>();

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
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      margin: EdgeInsets.zero,
      height: screenheight,
      width: screenwidth,
      decoration: const BoxDecoration(gradient: Colors1.BG),
      child: Row(children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.57,
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: screenwidth * 0.072,
                    bottom: screenheight * 0.035,
                    top: screenheight * 0.074),
                child: const Header(),
              ),
              Image.asset(
                "assets/icons/login_assets/pic3.png",
                width: screenwidth * 0.377,
                height: screenheight * 0.695,
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(right: screenwidth * 0.12),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'OTP\nVerification.',
                    style: TextStyle(
                        fontFamily: Fonts.nunito,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: screenheight * 0.016,
                  ),
                  Text(
                    'Enter the OTP sent to +91 ${widget.phoneNumber}',
                    style: const TextStyle(
                        fontFamily: Fonts.nunito,
                        fontWeight: FontWeight.normal,
                        fontSize: 19,
                        color: Color(0Xff9D9F9E)),
                  ),
                  SizedBox(
                    height: screenheight * 0.08,
                  ),
                  SizedBox(
                    // width: 500,
                    child: PinCodeTextField(
                      autoFocus: true,
                      textStyle: const TextStyle(
                          fontFamily: Fonts.nunito,
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w300),
                      appContext: context,
                      pastedTextStyle: const TextStyle(
                          fontFamily: Fonts.nunito,
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w300),
                      length: 4,
                      animationType: AnimationType.fade,
                      validator: (v) {
                        if (v!.length < 3) {
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
                        fieldHeight: screenheight * 0.089,
                        fieldWidth: screenwidth * 0.049,
                        inactiveColor: Colors.grey,
                        //activeFillColor: Colors.white,
                      ),
                      showCursor: true,
                      cursorHeight: 40,
                      cursorColor: Colors1.hgrey,
                      animationDuration: const Duration(milliseconds: 300),

                      errorAnimationController: errorController,
                      controller: textEditingController,
                      keyboardType: TextInputType.number,
                      boxShadows: const [
                        BoxShadow(
                          offset: Offset(0, 1),
                          color: Colors.black12,
                          blurRadius: 10,
                        )
                      ],
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
                  SizedBox(
                    height: screenheight * 0.052,
                  ),
                  SizedBox(
                    //width: 500,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: const [
                              Text(
                                "Didn't receive the OTP ? ",
                                style: TextStyle(
                                    fontFamily: Fonts.nunito,
                                    color: Colors1.borderGrey,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(" Resend",
                                  style: TextStyle(
                                    fontFamily: Fonts.nunito,
                                    color: Colors.green,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w600,
                                  ))
                            ],
                          ),
                          // RichText(
                          //     textAlign: TextAlign.center,
                          //     text: TextSpan(children: [
                          //       const TextSpan(
                          //         text: "Didn't receive the OTP ?",
                          //         style: TextStyle(
                          //             fontFamily: Fonts.nunito,
                          //             color: Colors1.borderGrey,
                          //             fontSize: 23,
                          //             fontWeight: FontWeight.w600),
                          //       ),
                          //       WidgetSpan(
                          //           child: InkWell(
                          //               onTap: () {},
                          //               child: const Text("Resend",
                          //                   style: TextStyle(
                          //                     fontFamily: Fonts.nunito,
                          //                     color: Colors.green,
                          //                     fontSize: 23,
                          //                     fontWeight: FontWeight.w600,
                          //                   ))))
                          //     ])),

                          SizedBox(
                            width: 81,
                            height: 69,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: ((context) {
                                  return const FlowInfo();
                                })));
                              },
                              child: Image.asset(
                                "assets/icons/global_icons/arrow-right.png",
                                width: 23,
                                height: 21,
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors1.green,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40))),
                            ),
                          ),
                        ]),
                  )
                ]),
          ),
        )
      ]),
    ));
  }
}
