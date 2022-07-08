// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

import '../../../design_tools/colors.dart';
import '../../../design_tools/styles.dart';
import 'otp_screen.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    //Mobile Controllers
    final phoneNoController = TextEditingController();

    String enteredMobileNo = (phoneNoController.text).trim();

    //Mobile Formkey
    final GlobalKey<FormState> signupkey = GlobalKey<FormState>();

    //Mobile FocusNodes
    final phoneNoFocusNode = FocusNode();

    //final submitFocusNode = FocusNode();

    bool oncheck = true;

    void onSubmit(GlobalKey<FormState> signUpkey) {
      if (signUpkey.currentState!.validate()) {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    PinCodeVerificationScreen(phoneNumber: enteredMobileNo)));
      }
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
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
      ),
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
          padding: const EdgeInsets.only(left: 27, right: 27, top: 67),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 23),
              const Text(
                'Enter your mobile\nnumber.',
                style: TextStyle(
                    fontFamily: FontFamily.nunito,
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
                    fontFamily: FontFamily.nunito,
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                    color: Colors1.hgrey),
              ),
              const SizedBox(
                height: 41,
              ),
              Form(
                key: signupkey,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextFormField(
                        maxLength: 10,
                        cursorColor: Colors1.hgrey,
                        style: const TextStyle(
                            fontFamily: FontFamily.nunito,
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                            color: Colors1.formgrey),
                        controller: phoneNoController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors1.green, width: 1.3),
                          ),
                          filled: true,
                          fillColor: const Color(0xff0F1010),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 23, horizontal: 23),
                          hintText: 'Mobile Number',
                          hintStyle: const TextStyle(
                              fontFamily: FontFamily.nunito,
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
                        focusNode: phoneNoFocusNode,
                        keyboardType: TextInputType.phone,
                        textInputAction: TextInputAction.done,
                        onFieldSubmitted: (_) {
                          phoneNoFocusNode.unfocus();
                          // FocusScope.of(context)
                          //     .requestFocus(_emailFocusNode);
                        },
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
                            return onSubmit(signupkey);
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
                                "Continue",
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
              const SizedBox(
                height: 31,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    if (oncheck == true) {
                      oncheck = false;
                    } else {
                      oncheck = false;
                    }
                  });
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: oncheck == true
                          ? const Icon(
                              Icons.check_circle,
                              color: Colors1.green,
                              size: 18,
                            )
                          : const Icon(
                              Icons.circle_outlined,
                              color: Colors1.green,
                              size: 18,
                            ),
                    ),
                    const Flexible(
                      child: Text(
                        " I agree to terms - privacy policy and allow access to my information.",
                        style: TextStyle(
                            fontFamily: FontFamily.nunito,
                            fontWeight: FontWeight.normal,
                            fontSize: 15,
                            color: Colors1.hgrey),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
