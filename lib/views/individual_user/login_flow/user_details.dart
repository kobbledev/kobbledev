import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../design_tools/colors.dart';
import '../../../../design_tools/styles.dart';
import '../../../../global_widgets/header1.dart';
import '../../../models/login_request.dart';
import '../../../models/login_response.dart';
import '../../../models/register.dart';
import '../../../models/register_reponse.dart';
import '../../../utils/api_controller.dart';
import '../../../utils/api_list.dart';
import '../../../utils/constants.dart';
import '../../../utils/device/device_utils.dart';
import '../../../utils/local_storage.dart';
import '../select_card_flow/build_card.dart';
import 'flow_info.dart';

class FillUserDetails extends StatefulWidget {
  const FillUserDetails({Key? key}) : super(key: key);

  @override
  State<FillUserDetails> createState() => _FillUserDetailsState();
}

class _FillUserDetailsState extends State<FillUserDetails> {
// //Controllers
//   final _nameController = TextEditingController();
//   final _emailController = TextEditingController();
//   final _mobileController = TextEditingController();

// //key
//   final GlobalKey<FormState> _userFormkey = GlobalKey<FormState>();

// //FocusNodes
//   final _nameFocusNode = FocusNode();
//   final _emailFocusNode = FocusNode();
//   final _mobileFocusNode = FocusNode();
//   final _submitFocusNode = FocusNode();

//   @override
//   void dispose() {
//     _nameFocusNode.dispose();
//     _emailFocusNode.dispose();
//     _mobileFocusNode.dispose();
//     _submitFocusNode.dispose();
//     super.dispose();
//   }
//Controllers
  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final emailController = TextEditingController();
  final mobileController = TextEditingController();

  //key
  final GlobalKey<FormState> userFormkey = GlobalKey<FormState>();

  //FocusNodes
  final firstnameFocusNode = FocusNode();
  final lastnameFocusNode = FocusNode();
  final emailFocusNode = FocusNode();
  final mobileFocusNode = FocusNode();
  final submitFocusNode = FocusNode();

  void onSubmit(GlobalKey<FormState> userFormkey) async {
    if (userFormkey.currentState!.validate()) {
      //global Variable
      if (kDebugMode) {
        print("User form validated successfully.");
      }
      filledDetails = true;

      String name = firstnameController.text;
      String last = lastnameController.text;
      String phone = await LocalStorage.getStringData(LocalStorage.userPhone);
      String countryCode =
          await LocalStorage.getStringData(LocalStorage.userCountryCode);
      String email = emailController.text;
      LocalStorage.setUserDetails(name, last, email);

      Map<String, String> headers = {
        Constants.contentType: Constants.applicationJson,
      };
      var request = RegisterRequest();
      request.phoneNumber = phone;
      request.countryCode = countryCode;
      request.firstName = name;
      request.lastName = last;
      request.email = email;
      ApiController.postAPI(Apis.register, headers, jsonEncode(request))
          .then((value) {
        if (value.statusCode == 200 || value.statusCode == 201) {
          if (kDebugMode) {
            print('register Response: ${value.body}');
          }
          RegisterResponse response =
              RegisterResponse.fromJson(jsonDecode(value.body));
          // replace here with proper otp check
          //  if (response.status == 1){
          //   callLoginApi(context); // calling login api here after registration
          //  }else{
          //    callLoginApi(context); // here remove this after backend changes
          //  }
          //   Fluttertoast.showToast(
          //       msg: '${response.message}',
          //       toastLength: Toast.LENGTH_SHORT,
          //       gravity: ToastGravity.CENTER,
          //       timeInSecForIosWeb: 1,
          //       backgroundColor: const Color(0XffF0F0F0),
          //       textColor: Colors.black,
          //       fontSize: 16.0
          //   );

          callLoginApi(context, phone, countryCode);
        }
      });
    } else {
      filledDetails = false;
    }
  }

  bool isEmailValid() {
    bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(emailController.text);
    return emailValid;
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
        child: Row(
          children: [
            SizedBox(
              width: screenwidth * 0.598,
              height: screenheight,
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
                    "assets/icons/global_icons/detailsPic.png",
                    width: screenwidth * 0.377,
                    height: screenheight * 0.695,
                  ),
                ],
              ),
            ),

            // SizedBox(
            //   width: MediaQuery.of(context).size.width * 0.57,
            //   height: MediaQuery.of(context).size.height,
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //       const Padding(
            //         padding: EdgeInsets.only(left: 137.0, bottom: 81, top: 81),
            //         child: Header(),
            //       ),
            //       Image.asset(
            //         "assets/icons/login_assets/pic3.png",
            //         width: 601,
            //         height: 653,
            //       ),
            //     ],
            //   ),
            // ),

            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: screenwidth * 0.094),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Please enter your Name &\nEmail ID.',
                      style: TextStyle(
                          fontFamily: FontFamily.nunito,
                          fontSize: 33,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: screenheight * 0.019,
                    ),
                    const Text(
                      'These fields are displaying on the kobble card.',
                      style: TextStyle(
                          fontFamily: FontFamily.nunito,
                          fontWeight: FontWeight.normal,
                          fontSize: 19,
                          color: Colors1.hgrey),
                    ),
                    SizedBox(
                      height: screenheight * 0.053,
                    ),
                    Form(
                      key: userFormkey,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                                //  width: screenwidth * 0.30,
                                child: TextFormField(
                              cursorColor: Colors1.hgrey,
                              style: const TextStyle(
                                  fontFamily: FontFamily.nunito,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: Colors1.formgrey),
                              decoration: InputDecoration(
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 43),
                                  child: Image.asset(
                                    "assets/icons/login_assets/mail.png",
                                    width: 28.1,
                                    height: 23,
                                  ),
                                ),
                                suffixIcon: const Padding(
                                  padding: EdgeInsets.only(top: 7.0),
                                  child: Text(
                                    "*",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 28),
                                  ),
                                ),
                                border: const OutlineInputBorder(),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors1.green, width: 2),
                                ),
                                filled: true,
                                fillColor: Colors1.formBg,
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 27, horizontal: 23),
                                hintText: 'First Name',
                                hintStyle: const TextStyle(
                                    fontFamily: FontFamily.nunito,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                    color: Colors1.formgrey),
                              ),
                              controller: firstnameController,
                              focusNode: firstnameFocusNode,
                              keyboardType: TextInputType.text,
                              textInputAction: TextInputAction.next,
                              onFieldSubmitted: (_) {
                                lastnameFocusNode.unfocus();
                                FocusScope.of(context)
                                    .requestFocus(lastnameFocusNode);
                              },
                            )),
                            SizedBox(
                                //width: 500,
                                child: TextFormField(
                              cursorColor: Colors1.hgrey,
                              style: const TextStyle(
                                  fontFamily: FontFamily.nunito,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: Colors1.formgrey),
                              decoration: InputDecoration(
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 43),
                                  child: Image.asset(
                                    "assets/icons/login_assets/mail.png",
                                    width: 28.1,
                                    height: 23,
                                  ),
                                ),
                                suffixIcon: const Padding(
                                  padding: EdgeInsets.only(top: 7.0),
                                  child: Text(
                                    "*",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 28),
                                  ),
                                ),
                                border: const OutlineInputBorder(),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors1.green, width: 2),
                                ),
                                filled: true,
                                fillColor: Colors1.formBg,
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 27, horizontal: 23),
                                hintText: 'Last Name',
                                hintStyle: const TextStyle(
                                    fontFamily: FontFamily.nunito,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                    color: Colors1.formgrey),
                              ),
                              controller: lastnameController,
                              focusNode: lastnameFocusNode,
                              keyboardType: TextInputType.text,
                              textInputAction: TextInputAction.next,
                              onFieldSubmitted: (_) {
                                firstnameFocusNode.unfocus();
                                FocusScope.of(context)
                                    .requestFocus(emailFocusNode);
                              },
                            )),
                            SizedBox(
                                //width: 500,
                                child: TextFormField(
                              cursorColor: Colors1.hgrey,
                              style: const TextStyle(
                                  fontFamily: FontFamily.nunito,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: Colors1.formgrey),
                              decoration: InputDecoration(
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 43),
                                  child: Image.asset(
                                    "assets/icons/login_assets/mail.png",
                                    width: 28.1,
                                    height: 23,
                                  ),
                                ),
                                suffixIcon: const Padding(
                                  padding: EdgeInsets.only(top: 7.0),
                                  child: Text(
                                    "*",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 28),
                                  ),
                                ),
                                border: const OutlineInputBorder(),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors1.green, width: 2),
                                ),
                                filled: true,
                                fillColor: Colors1.formBg,
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 27, horizontal: 23),
                                hintText: 'Email Id',
                                hintStyle: const TextStyle(
                                    fontFamily: FontFamily.nunito,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                    color: Colors1.formgrey),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Email is Required';
                                } else if (!isEmailValid()) {
                                  return 'Please enter valid email Address.';
                                }
                                return null;
                              },
                              controller: emailController,
                              focusNode: emailFocusNode,
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.done,
                              onFieldSubmitted: (_) {
                                emailFocusNode.unfocus();
                                FocusScope.of(context)
                                    .requestFocus(submitFocusNode);
                              },
                            )),
                            SizedBox(
                              height: screenheight * 0.043,
                            ),
                            SizedBox(
                              //width: 500,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        "Skip >>",
                                        style: TextStyle(
                                            fontFamily: FontFamily.nunito,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 21,
                                            color: Colors1.green),
                                      )),
                                  SizedBox(
                                    width: 81,
                                    height: 69,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: ((context) {
                                          return const BuildCard();
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
                                              borderRadius:
                                                  BorderRadius.circular(40))),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

void callLoginApi(
    BuildContext context, String phoneNumber, String countryCode) {
  print('login Response started');

  Map<String, String> headers = {
    Constants.contentType: Constants.applicationJson,
  };

  var request = LoginRequest();
  // request.phoneNumber = getPhoneNoFromSF();
  request.phoneNumber = phoneNumber;
  request.countryCode = countryCode;
  ApiController.postAPI(Apis.login, headers, jsonEncode(request)).then((value) {
    print('login Response: ${value.body}');

    if (value.statusCode == 200 || value.statusCode == 201) {
      if (kDebugMode) {
        print('login Response: ${value.body}');
      }
      LoginResponse response = LoginResponse.fromJson(jsonDecode(value.body));
      //  if (response.status == 1){
      // saveTokentoSF(response.token.toString());
      if (response.token != null) {
        LocalStorage.setToken(response.token!);
      }
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const FlowInfo()));
      // }
    }
  });
}

void saveTokentoSF(String token) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString(Constants.token, token);
}
