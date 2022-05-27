import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kobble_dev/design_tools/colors.dart';
import 'package:kobble_dev/login_flow/user_details.dart';

import '../design_tools/styles.dart';
import 'flow_info.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  //Mobile Controllers
  final _m_mobileController = TextEditingController();

  //Web Controllers
  final _w_mobileController = TextEditingController();

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

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return screenwidth >= PageBreaks.Desktop
        ? Scaffold(
            backgroundColor: Colors1.bg,
            body: Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.57,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(
                        padding:
                            EdgeInsets.only(left: 137.0, bottom: 81, top: 81),
                        child: Header(),
                      ),
                      Image.asset(
                        "assets/icons/login_assets/pic1.png",
                        width: 601,
                        height: 653,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 33),
                          const Text(
                            'Enter your mobile\nnumber.',
                            style: TextStyle(
                                fontFamily: Fonts.nunito,
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          const Text(
                            'You will receive a 4 digit code for mobile\nnumber verification.',
                            style: TextStyle(
                                fontFamily: Fonts.nunito,
                                fontWeight: FontWeight.normal,
                                fontSize: 21,
                                color: Colors1.hgrey),
                          ),
                          const SizedBox(
                            height: 47,
                          ),
                          Form(
                            key: _w_signupkey,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Card(
                                      color: Colors1.formBg,
                                      child: SizedBox(
                                        width: 500,
                                        child: ListTile(
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 20, horizontal: 43),
                                          leading: Image.asset(
                                            "assets/icons/login_assets/flag.png",
                                            width: 53.93,
                                            height: 34.77,
                                          ),
                                          title: const Text(
                                            " India",
                                            style: TextStyle(
                                                fontFamily: Fonts.nunito,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 24,
                                                color: Colors.white),
                                          ),
                                        ),
                                      )),
                                  Card(
                                      color: Colors1.formBg,
                                      child: SizedBox(
                                          width: 500,
                                          child: TextFormField(
                                            cursorColor: Colors1.hgrey,
                                            style: const TextStyle(
                                                fontFamily: Fonts.nunito,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 24,
                                                color: Colors1.formgrey),
                                            controller: _w_mobileController,
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors1.formBrd,
                                                    width: 2),
                                              ),
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                      vertical: 30,
                                                      horizontal: 43),
                                              hintText: 'Mobile Number',
                                              hintStyle: TextStyle(
                                                  fontFamily: Fonts.nunito,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 24,
                                                  color: Colors1.formgrey),
                                            ),
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return 'Mobile is Required';
                                              } else {
                                                return null;
                                              }
                                            },
                                            focusNode: _w_mobileFocusNode,
                                            keyboardType: TextInputType.phone,
                                            textInputAction:
                                                TextInputAction.next,
                                            onFieldSubmitted: (_) {
                                              _w_mobileFocusNode.unfocus();
                                              FocusScope.of(context)
                                                  .requestFocus(
                                                      _w_submitFocusNode);
                                            },
                                          ))),
                                  const SizedBox(
                                    height: 33,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 400),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 91,
                                          height: 79,
                                          child: ElevatedButton(
                                            focusNode: _w_submitFocusNode,
                                            onPressed: () {
                                              Navigator.push(context,
                                                  MaterialPageRoute(
                                                      builder: ((context) {
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
                                        " I agree to terms - privacy policy and allow access\n to my information.",
                                        style: TextStyle(
                                            fontFamily: Fonts.nunito,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 21,
                                            color: Colors1.hgrey),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Text(""),
                    ],
                  ),
                )
              ],
            ))
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
