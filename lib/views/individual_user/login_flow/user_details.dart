import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:kobble_dev/apis/Urls.dart';
import 'package:kobble_dev/models/LoginRequest.dart';
import 'package:kobble_dev/models/SignupRequest.dart';
import '../../../../design_tools/colors.dart';
import '../../../../design_tools/styles.dart';
import '../../../../global_widgets/header1.dart';
import '../../../models/BaseResponse.dart';
import '../../../utils/Dialogs.dart';
import '../select_card_flow/edit_card.dart';

class UserForm extends StatefulWidget {
  const UserForm({Key? key}) : super(key: key);

  @override
  State<UserForm> createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
//Controllers
  final _nameController = TextEditingController();
  final _firstnameController = TextEditingController();
  final _lastnameController = TextEditingController();
  final _emailController = TextEditingController();
  final _mobileController = TextEditingController();

//key
  final GlobalKey<FormState> _userFormkey = GlobalKey<FormState>();

//FocusNodes
  final _nameFocusNode = FocusNode();
  final _firstnameFocusNode = FocusNode();
  final _lastnameFocusNode = FocusNode();
  final _emailFocusNode = FocusNode();
  final _mobileFocusNode = FocusNode();
  final _submitFocusNode = FocusNode();


  @override
  void dispose() {
    _nameFocusNode.dispose();
    _emailFocusNode.dispose();
    _mobileFocusNode.dispose();
    _submitFocusNode.dispose();
    super.dispose();
  }
  bool error = false;



  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;

    //getUserDetailsApi();
    //signInIndividualUser();
    //getOtpToRegister();
    // register();
    void onSubmit(GlobalKey<FormState> userFormkey) {
      if (userFormkey.currentState!.validate()) {


        setState(() { error = false; });
        register(context, _nameController.text, _lastnameController.text, _emailController.text);

       // error = false;

      }
      else
        {
          error=true;
        }
    }


    return Scaffold(
      backgroundColor: Colors1.bg,
      body: Row(
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
                        fontFamily: Fonts.nunito,
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
                        fontFamily: Fonts.nunito,
                        fontWeight: FontWeight.normal,
                        fontSize: 19,
                        color: Colors1.hgrey),
                  ),
                  error?const Text("Please fill all fields",style: TextStyle(
                      fontFamily: Fonts.nunito,
                      fontWeight: FontWeight.normal,
                      fontSize: 19,
                      color: Colors.redAccent),): const Text(""),
                  SizedBox(
                    height: screenheight * 0.053,
                  ),
                  Form(
                    key: _userFormkey,
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
                                fontFamily: Fonts.nunito,
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                color: Colors1.formgrey),
                            controller: _nameController,
                            decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 43),
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
                                borderSide:
                                    BorderSide(color: Colors1.green, width: 2),
                              ),
                              filled: true,
                              fillColor: Colors1.formBg,
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 27, horizontal: 23),
                              hintText: 'First Name',
                              hintStyle: const TextStyle(
                                  fontFamily: Fonts.nunito,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: Colors1.formgrey),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'First Name is Required';
                              } else {
                                return null;
                              }
                            },
                            focusNode: _nameFocusNode,
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.next,
                            onFieldSubmitted: (_) {
                              _nameFocusNode.unfocus();
                              FocusScope.of(context)
                                  .requestFocus(_emailFocusNode);
                            },
                          )),
                          SizedBox(
                              //width: 500,
                              child: TextFormField(
                            cursorColor: Colors1.hgrey,
                            style: const TextStyle(
                                fontFamily: Fonts.nunito,
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                color: Colors1.formgrey),
                            controller: _lastnameController,
                            decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 43),
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
                                borderSide:
                                    BorderSide(color: Colors1.green, width: 2),
                              ),
                              filled: true,
                              fillColor: Colors1.formBg,
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 27, horizontal: 23),
                              hintText: 'Last Name',
                              hintStyle: const TextStyle(
                                  fontFamily: Fonts.nunito,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: Colors1.formgrey),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Last Name is Required';
                              } else {
                                return null;
                              }
                            },
                            focusNode: _lastnameFocusNode,
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.next,
                            onFieldSubmitted: (_) {
                              _emailFocusNode.unfocus();
                              FocusScope.of(context)
                                  .requestFocus(_mobileFocusNode);
                            },
                          )),
                          SizedBox(
                              //width: 500,
                              child: TextFormField(
                            cursorColor: Colors1.hgrey,
                            style: const TextStyle(
                                fontFamily: Fonts.nunito,
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                color: Colors1.formgrey),
                            controller: _emailController,
                            decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 43),
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
                                borderSide:
                                    BorderSide(color: Colors1.green, width: 2),
                              ),
                              filled: true,
                              fillColor: Colors1.formBg,
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 27, horizontal: 23),
                              hintText: 'Email Id',
                              hintStyle: const TextStyle(
                                  fontFamily: Fonts.nunito,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: Colors1.formgrey),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Email Id is Required';
                              } else {
                                return null;
                              }
                            },
                            focusNode: _emailFocusNode,
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            onFieldSubmitted: (_) {
                              _emailFocusNode.unfocus();
                              FocusScope.of(context)
                                  .requestFocus(_submitFocusNode);
                            },
                          )),
                          SizedBox(
                            height: screenheight * 0.043,
                          ),
                          SizedBox(
                            //width: 500,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                    onPressed: () {

                                    },
                                    child: const Text(
                                      "Skip >>",
                                      style: TextStyle(
                                          fontFamily: Fonts.nunito,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 21,
                                          color: Colors1.green),
                                    )),
                                SizedBox(
                                  width: 81,
                                  height: 69,
                                  child: ElevatedButton(
                                    focusNode: _submitFocusNode,
                                    onPressed: () {
                                      return onSubmit(_userFormkey);
                                      Navigator.push(context, MaterialPageRoute(
                                          builder: ((context) {
                                        return const EditCard();
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
    );
  }

  void getUserDetailsApi() async{
      // try {
      //   var response = await Dio().post(ApiConstants().BASE_URL+ApiConstants().GET_USER_DETAILS, data: '{}');
      //   _mobileController.text = response.statusCode.toString();
      //   print("--->> " + response.toString());
      // } catch (e) {
      //   print(e);
      // }
  }

  void signInIndividualUser(BuildContext context, String enteredMobileNo) async{

    try{
      var loginRequestObject = LoginRequest();
      loginRequestObject.countryCode = "+91";
      loginRequestObject.phoneNumber = "9515135136";
      loginRequestObject.otpNumber = "1234";

      var response = await Dio().post(ApiConstants.SIGN_IN, data: loginRequestObject);
      print("---> response"+ response.toString());
      _mobileController.text = response.statusCode.toString();

    }catch(e){
      print(e);
    }
  }


  // OTP to REGISTER API CALL
  void getOtpToRegister() async{

    try{
      var loginRequestObject = LoginRequest();
      loginRequestObject.countryCode = "+91";
      loginRequestObject.phoneNumber = "9515135136";

      var response = await Dio().post(ApiConstants.GET_OTP_TO_SIGNUP, data: loginRequestObject);

      BaseResponse otpResponse = BaseResponse.fromJson(jsonDecode(response.toString()));
      _mobileController.text = otpResponse.message.toString();
      print("---> response "+ otpResponse.message.toString());

    }catch(e){
      print(e);
    }
  }


  // OTP TO LOGIN API CALL
  void getOtpToLogin() async{

    try{
      var loginRequestObject = LoginRequest();
      loginRequestObject.countryCode = "+91";
      loginRequestObject.phoneNumber = "9515135136";

      var response = await Dio().post(ApiConstants.GET_OTP_TO_SIGNIN, data: loginRequestObject);

      BaseResponse otpResponse = BaseResponse.fromJson(jsonDecode(response.toString()));
      _mobileController.text = otpResponse.message.toString();
      print("---> response "+ otpResponse.message.toString());

    }catch(e){
      print(e);
    }
  }


  // sign up API CALL
  void register(BuildContext context, String firstName, String lastName, String emailId) async{

    try{
      var signupRequestObject = signupRequest();
      signupRequestObject.countryCode = "+91";
      signupRequestObject.phoneNumber = "9392704000";
      signupRequestObject.firstName = firstName;
      signupRequestObject.lastName = lastName;
      signupRequestObject.email = emailId;
      signupRequestObject.otpNumber = "12345";

      var response = await Dio().post(ApiConstants.SIGN_UP, data: signupRequestObject);

      BaseResponse baseResponse = BaseResponse.fromJson(jsonDecode(response.toString()));
      if (baseResponse.status == 1){
        Navigator.push(context, MaterialPageRoute(
            builder: ((context) {
              return const EditCard();
            })));
      }else{
        Dialogs.showAlertDialog(context, baseResponse.message.toString(), 3);
      }
    }catch(e){
      print(e);
    }
  }

}
