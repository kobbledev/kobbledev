import 'package:flutter/material.dart';

import '../../../design_tools/colors.dart';
import '../../../design_tools/styles.dart';
import '../../../utils/device/device_details.dart';
import '../steps/build_card.dart';

class FillUserDetails extends StatefulWidget {
  const FillUserDetails({Key? key}) : super(key: key);

  @override
  State<FillUserDetails> createState() => _FillUserDetailsState();
}

class _FillUserDetailsState extends State<FillUserDetails> {
  @override
  Widget build(BuildContext context) {
    //Controllers
    final nameController = TextEditingController();
    final emailController = TextEditingController();
    final mobileController = TextEditingController();

//key
    final GlobalKey<FormState> userFormkey = GlobalKey<FormState>();

//FocusNodes
    final nameFocusNode = FocusNode();
    final emailFocusNode = FocusNode();
    final mobileFocusNode = FocusNode();
    final submitFocusNode = FocusNode();

    @override
    void dispose() {
      nameFocusNode.dispose();
      emailFocusNode.dispose();
      mobileFocusNode.dispose();
      submitFocusNode.dispose();
      super.dispose();
    }

    void onSubmit(GlobalKey<FormState> userFormkey) {
      if (userFormkey.currentState!.validate()) {
        //global Variable
        print("User form validated successfully.");
        filledDetails = true;
        Navigator.pop(context);
      } else {
        filledDetails = false;
      }
    }

    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
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
          padding: const EdgeInsets.only(left: 27, right: 27, top: 27),
          child: Column(
            children: [
              SizedBox(
                height: 54,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(""),
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: Colors1.borderGrey,
                                style: BorderStyle.solid,
                                width: 2.3),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Icon(
                              Icons.close,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                        )),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 21),
                    const Text(
                      'Please enter your Name & Email ID.',
                      style: TextStyle(
                          fontFamily: FontFamily.nunito,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const SizedBox(height: 10.1),
                    const Text(
                      'These fields are displaying on the kobble card.',
                      style: TextStyle(
                          fontFamily: FontFamily.nunito,
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                          color: Colors1.txtGrey),
                    ),
                    const SizedBox(height: 28.1),
                    Form(
                      key: userFormkey,
                      child: Card(
                        elevation: 0,
                        margin: EdgeInsets.zero,
                        color: const Color(0Xff121313),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 9),
                          child: Column(
                            children: [
                              TextFormField(
                                autofocus: true,
                                cursorColor: Colors.white,
                                cursorHeight: 23,
                                style: const TextStyle(
                                    fontFamily: FontFamily.nunito,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 17,
                                    color: Colors.white),
                                decoration: InputDecoration(
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 33),
                                    child: Image.asset(
                                      "assets/icons/login_assets/mail.png",
                                      width: 19,
                                      height: 15,
                                    ),
                                  ),
                                  suffixIcon: Container(
                                    alignment: Alignment.center,
                                    width: 40,
                                    child: const Text(
                                      "*",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: FontFamily.nunito,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 23,
                                          color: Colors1.txtGrey),
                                    ),
                                  ),
                                  border: InputBorder.none,
                                  hintText: 'Name',
                                  hintStyle: const TextStyle(
                                      fontFamily: FontFamily.nunito,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17,
                                      color: Colors1.txtGrey),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Name is Required';
                                  } else {
                                    return null;
                                  }
                                },
                                controller: nameController,
                                focusNode: nameFocusNode,
                                keyboardType: TextInputType.text,
                                textInputAction: TextInputAction.next,
                                onFieldSubmitted: (_) {
                                  nameFocusNode.unfocus();
                                  FocusScope.of(context)
                                      .requestFocus(emailFocusNode);
                                },
                              ),
                              const Divider(
                                color: Colors1.txtGrey,
                              ),
                              TextFormField(
                                cursorHeight: 23,
                                cursorColor: Colors.white,
                                style: const TextStyle(
                                    fontFamily: FontFamily.nunito,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 17,
                                    color: Colors.white),
                                decoration: InputDecoration(
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 33),
                                    child: Image.asset(
                                      "assets/icons/login_assets/mail.png",
                                      width: 19,
                                      height: 15,
                                    ),
                                  ),
                                  suffixIcon: Container(
                                    alignment: Alignment.center,
                                    width: 40,
                                    child: const Text(
                                      "*",
                                      style: TextStyle(
                                          fontFamily: FontFamily.nunito,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 23,
                                          color: Colors1.txtGrey),
                                    ),
                                  ),
                                  border: InputBorder.none,
                                  hintText: 'Email',
                                  hintStyle: const TextStyle(
                                      fontFamily: FontFamily.nunito,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17,
                                      color: Colors1.txtGrey),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Email is Required';
                                  } else {
                                    return null;
                                  }
                                },
                                controller: emailController,
                                focusNode: emailFocusNode,
                                keyboardType: TextInputType.emailAddress,
                                textInputAction: TextInputAction.next,
                                onFieldSubmitted: (_) {
                                  nameFocusNode.unfocus();
                                  FocusScope.of(context)
                                      .requestFocus(mobileFocusNode);
                                },
                              ),
                              const Divider(
                                color: Colors1.txtGrey,
                              ),
                              TextFormField(
                                cursorColor: Colors.white,
                                style: const TextStyle(
                                    fontFamily: FontFamily.nunito,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 17,
                                    color: Colors.white),
                                decoration: InputDecoration(
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 33),
                                    child: Image.asset(
                                      "assets/icons/login_assets/mail.png",
                                      width: 19,
                                      height: 15,
                                    ),
                                  ),
                                  suffixIcon: Container(
                                    alignment: Alignment.center,
                                    width: 40,
                                    child: const Text(
                                      "*",
                                      style: TextStyle(
                                          fontFamily: FontFamily.nunito,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 23,
                                          color: Colors1.txtGrey),
                                    ),
                                  ),
                                  border: InputBorder.none,
                                  hintText: 'Phone Number',
                                  hintStyle: const TextStyle(
                                      fontFamily: FontFamily.nunito,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17,
                                      color: Colors1.txtGrey),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Phone Number is Required';
                                  } else {
                                    return null;
                                  }
                                },
                                controller: mobileController,
                                focusNode: mobileFocusNode,
                                keyboardType: TextInputType.phone,
                                textInputAction: TextInputAction.done,
                                onFieldSubmitted: (_) {
                                  nameFocusNode.unfocus();
                                  FocusScope.of(context)
                                      .requestFocus(submitFocusNode);
                                },
                              )
                            ],
                          ),
                        ),
                      ),
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
                          gradient: const LinearGradient(
                              colors: [Color(0Xff7EFFD0), Color(0Xff0BFFA6)])),
                      child: ElevatedButton(
                        onPressed: () {
                          return onSubmit(userFormkey);
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => const ()));
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
                                fontSize: 20,
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
            ],
          ),
        ),
      ),
    );
  }
}
