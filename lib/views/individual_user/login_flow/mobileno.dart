// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:kobble_dev/design_tools/colors.dart';
import 'package:kobble_dev/models/OtpResponse.dart';

import '../../../../design_tools/colors.dart';
import '../../../../design_tools/styles.dart';
import '../../../apis/Urls.dart';
import '../../../apis/apiController.dart';
import '../../../models/BaseResponse.dart';
import '../../../models/LoginRequest.dart';
import '../../../utils/Constants.dart';
import '../../../utils/Dialogs.dart';
import '../select_card_flow/edit_card.dart';
import 'otp_screen.dart';

class SignUp extends StatefulWidget {

  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var statusCode;
  var statusMessage;

  @override
  Widget build(BuildContext context) {
    // double constraints.maxWidth = MediaQuery.of(context).size.width;
    // double constraints.maxHeight = MediaQuery.of(context).size.height;

    //Mobile Controllers
    final _m_mobileController = TextEditingController();

    //Web Controllers
    final _wmobileController = TextEditingController();

    String enteredMobileNo = (_wmobileController.text).trim();

    //Mobile Formkey
    final GlobalKey<FormState> _m_signupkey = GlobalKey<FormState>();
    //Web Formkey
    final GlobalKey<FormState> _w_signupkey = GlobalKey<FormState>();
//
//Mobile FocusNodes
    final _m_mobileFocusNode = FocusNode();

    //Web FocusNodes
    final _w_mobileFocusNode = FocusNode();
    final _w_submitFocusNode = FocusNode();



    bool _oncheck = true;
    void onSubmit(GlobalKey<FormState> signUpkey) {
      if (signUpkey.currentState!.validate()) {
        callOtpApi(context, enteredMobileNo);
      }
    }

    return Scaffold(
      backgroundColor: Colors1.bg,
      body: LayoutBuilder(builder: ((context, constraints) {
        return Row(
          children: [
            SizedBox(
              width: constraints.maxWidth * 0.57,
              height: constraints.maxHeight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: constraints.maxWidth * 0.072,
                        bottom: constraints.maxHeight * 0.035,
                        top: constraints.maxHeight * 0.074),
                    child: const Header(),
                  ),
                  Image.asset(
                    "assets/icons/global_icons/loginPic.png",
                    width: constraints.maxWidth * 0.377,
                    height: constraints.maxHeight * 0.695,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: constraints.maxWidth * 0.096),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Enter your mobile number.',
                      style: TextStyle(
                          fontFamily: Fonts.nunito,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: constraints.maxHeight * 0.021,
                    ),
                    const Text(
                      'You will receive a 4 digit code for mobile\nnumber verification.',
                      style: TextStyle(
                          fontFamily: Fonts.nunito,
                          fontWeight: FontWeight.normal,
                          fontSize: 19,
                          color: Colors1.hgrey),
                    ),
                    SizedBox(
                      height: constraints.maxHeight * 0.039,
                    ),
                    Form(
                      key: _w_signupkey,
                      child: Container(
                          alignment: Alignment.centerLeft,
                          child:
                              LayoutBuilder(builder: ((context, constraints1) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: constraints1.maxWidth * 0.91,
                                  child: Card(
                                      color: Colors1.formBg,
                                      child: SizedBox(
                                        //  width: constraints.maxWidth * 0.26,
                                        child: ListTile(
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 19, horizontal: 33),
                                          leading: Image.asset(
                                            "assets/icons/login_assets/flag.png",
                                            width: 43.93,
                                            height: 27.77,
                                          ),
                                          title: const Text(
                                            " India",
                                            style: TextStyle(
                                                fontFamily: Fonts.nunito,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 21,
                                                color: Colors.white),
                                          ),
                                        ),
                                      )),
                                ),
                                SizedBox(
                                    width: constraints1.maxWidth * 0.9,
                                    child: SizedBox(
                                        //  width: constraints.maxWidth * 0.26,
                                        child: TextFormField(
                                          maxLength: 10,
                                      cursorColor: Colors1.hgrey,
                                      style: const TextStyle(
                                          fontFamily: Fonts.nunito,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 21,
                                          color: Colors1.formgrey),
                                      controller: _wmobileController,
                                      decoration: const InputDecoration(
                                        filled: true,
                                        fillColor: Colors1.formBg,

                                        border: OutlineInputBorder(),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors1.green, width: 2),
                                        ),

                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 23, horizontal: 33),
                                        hintText: 'Mobile Number',
                                        hintStyle: TextStyle(
                                            fontFamily: Fonts.nunito,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 21,
                                            color: Colors1.formgrey),
                                      ),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Mobile is Required';
                                        } else if(value.length != 10) {
                                          return 'Please enter 10 digits';
                                        } else if(!isNumeric(value)){
                                          return 'Invalid Mobile Number';
                                        }
                                      },
                                      focusNode: _w_mobileFocusNode,
                                      keyboardType: TextInputType.phone,
                                      textInputAction: TextInputAction.next,
                                      onFieldSubmitted: (_) {
                                        _w_mobileFocusNode.unfocus();
                                        FocusScope.of(context)
                                            .requestFocus(_w_submitFocusNode);
                                      },
                                    ))),
                                SizedBox(
                                  height: constraints.maxHeight * 0.039,
                                ),
                                SizedBox(
                                  width: constraints1.maxWidth * 0.9,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          InkWell(
                                              onTap: () {
                                                setState(() {
                                                  if (_oncheck == false) {
                                                    _oncheck = true;
                                                  } else {
                                                    _oncheck = false;
                                                  }
                                                });
                                              },
                                              child: _oncheck == true
                                                  ? const Icon(
                                                      Icons.check_circle,
                                                      color: Colors1.green,
                                                    )
                                                  : const Icon(
                                                      Icons.circle_outlined,
                                                      color: Colors1.green,
                                                    )),
                                          const Text(
                                            " I agree to terms - privacy policy and\n allow access to my information.",
                                            style: TextStyle(
                                                fontFamily: Fonts.nunito,
                                                fontWeight: FontWeight.normal,
                                                fontSize: 18,
                                                color: Colors1.hgrey),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: 81,
                                        height: 69,
                                        child: ElevatedButton(
                                          focusNode: _w_submitFocusNode,
                                          onPressed: () {
                                            return onSubmit(_w_signupkey);
                                          },
                                          child: Image.asset(
                                            "assets/icons/global_icons/arrow-right.png",
                                            width: 23,
                                            height: 21,
                                          ),
                                          style: ElevatedButton.styleFrom(
                                              primary: Colors1.green,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          40))),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 37,
                                ),
                              ],
                            );
                          }))),
                    ),
                  ],
                ),
              ),
            )
          ],
        );
      })),
    );
  }

  bool isNumeric(String phoneNumber) {
    String regexPattern = r'^(?:[1-9])?[0-9]{10,12}$';
    var regExp = new RegExp(regexPattern);

    if (phoneNumber.length == 0) {
      return false;
    } else if (regExp.hasMatch(phoneNumber)) {
      return true;
    }
    return false;
  }

  void callOtpApi(BuildContext context,
      String enteredMobileNo) async {
    try {
      var loginRequestObject = LoginRequest();
      loginRequestObject.countryCode = Constants.COUNTRY_CODE;
      loginRequestObject.phoneNumber = enteredMobileNo.toString();
      String url = ApiConstants.SEND_OTP ;
      var response = await Dio().post(url, data: loginRequestObject);
      print('--->> '+ url);
      print('--->> '+ response.toString());
      OtpResponse baseResponse = OtpResponse.fromJson(jsonDecode(response.toString()));

      statusCode = baseResponse.status;
      statusMessage = baseResponse.message;

      if (baseResponse.status == 1){
           Dialogs.showAlertDialog(context, statusMessage, baseResponse.isUserAlreadtRegistered); // user already registered
      }else{
        Dialogs.showAlertDialog(context, statusMessage, 3);
      }
    } catch (e) {
      print(e);
    }
  }

}


class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          alignment: Alignment.center,
          height: 70,
          child: RichText(
              text: TextSpan(
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                  children: [
                const TextSpan(
                  text: 'K',
                  style: TextStyle(
                      fontFamily: Fonts.nunito,
                      fontWeight: FontWeight.bold,
                      fontSize: 38,
                      color: Colors.white),
                ),
                WidgetSpan(
                    child: SizedBox(
                  width: 50,
                  height: 62,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(''),
                          Image.asset(
                            "assets/icons/global_icons/op.png",
                            width: 10,
                            height: 10,
                          ),
                        ],
                      ),
                      Image.asset(
                        "assets/icons/global_icons/o.png",
                        width: 40,
                        height: 46,
                      ),
                    ],
                  ),
                )),
                const TextSpan(
                  text: 'BBLE',
                  style: TextStyle(
                      fontFamily: Fonts.nunito,
                      fontWeight: FontWeight.bold,
                      fontSize: 38,
                      color: Colors.white),
                ),
              ])),
        ),
      ],
    );
  }
}


/*
 : Scaffold(
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(67.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppBar(
                    backgroundColor: Colors.transparent,
                    leading: IconButton(
                      onPressed: (() {
                        Navigator.pop(context);
                      }),
                      icon: Image.asset(
                        "assets/icons/login_assets/back-arrow.png",
                        width: 17,
                        height: 10,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            backgroundColor: Colors1.bg,
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 33),
                  const Text(
                    'Enter your mobile\nnumber.',
                    style: TextStyle(
                        fontFamily: Fonts.nunito,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.white70),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'You will receive a 4 digit code for mobile\nnumber verification.',
                    style: TextStyle(
                        fontFamily: Fonts.nunito,
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                        color: Colors1.hgrey),
                  ),
                  const SizedBox(
                    height: 41,
                  ),
                  Form(
                    key: _m_signupkey,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 120,
                            color: Colors1.formBg,
                            child: Card(
                                color: Colors1.formBg,
                                child: SizedBox(
                                    child: TextFormField(
                                  cursorColor: Colors1.hgrey,
                                  style: const TextStyle(
                                      fontFamily: Fonts.nunito,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17,
                                      color: Colors1.formgrey),
                                  controller: _m_mobileController,
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors1.formBrd, width: 2),
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 30, horizontal: 43),
                                    hintText: 'Mobile Number',
                                    hintStyle: TextStyle(
                                        fontFamily: Fonts.nunito,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17,
                                        color: Colors1.formgrey),
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Mobile is Required';
                                    } else {
                                      return null;
                                    }
                                  },
                                  focusNode: _m_mobileFocusNode,
                                  keyboardType: TextInputType.phone,
                                  textInputAction: TextInputAction.next,
                                  onFieldSubmitted: (_) {
                                    _m_mobileFocusNode.unfocus();
                                    // FocusScope.of(context)
                                    //     .requestFocus(_emailFocusNode);
                                  },
                                ))),
                          ),
                          const SizedBox(
                            height: 33,
                          ),
                          Container(
                            margin: EdgeInsets.zero,
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13),
                                gradient: const LinearGradient(colors: [
                                  Color(0Xff7EFFD0),
                                  Color(0Xff0BFFA6)
                                ])),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const SignUp()));
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(''),
                                  const Text(
                                    "Continue",
                                    style: TextStyle(
                                      fontFamily: Fonts.nunito,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Color(0Xff1A1A1A),
                                    ),
                                  ),
                                  Image.asset(
                                    'assets/icons/login_assets/m_arrow-right.png',
                                    width: 11,
                                    height: 11,
                                  )
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.transparent,
                                  shadowColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(13))),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
  
 */






