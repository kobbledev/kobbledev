import 'package:flutter/material.dart';
import 'package:kobble_dev/design_tools/colors.dart';
import 'package:kobble_dev/select_card_flow/edit_card.dart';

import 'design_tools/styles.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
//Controllers
  final _nameController = TextEditingController();
  final _mobileController = TextEditingController();
  final _emailController = TextEditingController();

//key
  final GlobalKey<FormState> _signupkey = GlobalKey<FormState>();

//FocusNodes
  final _nameFocusNode = FocusNode();
  final _mobileFocusNode = FocusNode();
  final _emailFocusNode = FocusNode();
  final _submitFocusNode = FocusNode();

  @override
  void dispose() {
    _nameFocusNode.dispose();
    _mobileFocusNode.dispose();
    _emailFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors1.bg,
      body: Stack(
        children: [
          Row(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: Colors1.signupbg,
                width: 648.3,
                height: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(top: 80, left: 139),
                  child: RichText(
                      text: const TextSpan(
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                          ),
                          children: [
                        TextSpan(
                          text: 'K',
                          style: TextStyle(
                              fontFamily: Fonts.nunito,
                              fontWeight: FontWeight.bold,
                              fontSize: 38,
                              color: Colors.white),
                        ),
                        TextSpan(
                            text: 'O',
                            style: TextStyle(
                              fontFamily: Fonts.nunito,
                              fontWeight: FontWeight.w900,
                              fontSize: 45,
                              color: Colors1.green,
                            )),
                        TextSpan(
                          text: 'BBLE',
                          style: TextStyle(
                              fontFamily: Fonts.nunito,
                              fontWeight: FontWeight.bold,
                              fontSize: 38,
                              color: Colors.white),
                        ),
                      ])),
                ),
              ),
              Expanded(
                child: Padding(
                    padding:
                        const EdgeInsets.only(top: 117, left: 93, right: 93),
                    child: LayoutBuilder(builder: (context, constraints) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: constraints.maxWidth,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Sign into Kobble.',
                                  style: TextStyle(
                                      fontFamily: Fonts.nunito,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 27,
                                      color: Colors.white),
                                ),
                                Container(
                                  margin: EdgeInsets.zero,
                                  height: 54,
                                  width: 156,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(
                                        color: Colors1.hgrad2,
                                        style: BorderStyle.solid,
                                        width: 1.5),
                                  ),
                                  child: ElevatedButton(
                                    onPressed: () => {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const EditCard()))
                                    },
                                    child: const Text(
                                      "Skip",
                                      style: TextStyle(
                                          fontFamily: Fonts.nunito,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 23,
                                          color: Colors1.hgrad2),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.transparent,
                                        shadowColor: Colors.transparent,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30))),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Form(
                            key: _signupkey,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 43),
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Card(
                                        color: Colors1.formBg,
                                        child: SizedBox(
                                            width: 500,
                                            child: TextFormField(
                                              cursorColor: Colors1.hgrey,
                                              style: const TextStyle(
                                                  fontFamily: Fonts.nunito,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 22,
                                                  color: Colors1.formgrey),
                                              controller: _nameController,
                                              decoration: const InputDecoration(
                                                border: OutlineInputBorder(),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors1.formBrd,
                                                      width: 2),
                                                ),
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                        vertical: 30,
                                                        horizontal: 43),
                                                hintText: 'Name',
                                                hintStyle: TextStyle(
                                                    fontFamily: Fonts.nunito,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 22,
                                                    color: Colors1.formgrey),
                                              ),
                                              autofocus: true,
                                              validator: (value) {
                                                if (value!.isEmpty) {
                                                  return 'Name is Required';
                                                } else {
                                                  return null;
                                                }
                                              },
                                              focusNode: _nameFocusNode,
                                              keyboardType: TextInputType.text,
                                              textInputAction:
                                                  TextInputAction.next,
                                              onFieldSubmitted: (_) {
                                                _nameFocusNode.unfocus();
                                                FocusScope.of(context)
                                                    .requestFocus(
                                                        _mobileFocusNode);
                                              },
                                            ))),
                                    const SizedBox(
                                      height: 18,
                                    ),
                                    Card(
                                        color: Colors1.formBg,
                                        child: SizedBox(
                                            width: 500,
                                            child: TextFormField(
                                              cursorColor: Colors1.hgrey,
                                              style: const TextStyle(
                                                  fontFamily: Fonts.nunito,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 22,
                                                  color: Colors1.formgrey),
                                              controller: _mobileController,
                                              decoration: const InputDecoration(
                                                border: OutlineInputBorder(),
                                                focusedBorder:
                                                    OutlineInputBorder(
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
                                                    fontSize: 22,
                                                    color: Colors1.formgrey),
                                              ),
                                              validator: (value) {
                                                if (value!.isEmpty) {
                                                  return 'Mobile is Required';
                                                } else {
                                                  return null;
                                                }
                                              },
                                              focusNode: _mobileFocusNode,
                                              keyboardType: TextInputType.phone,
                                              textInputAction:
                                                  TextInputAction.next,
                                              onFieldSubmitted: (_) {
                                                _mobileFocusNode.unfocus();
                                                FocusScope.of(context)
                                                    .requestFocus(
                                                        _emailFocusNode);
                                              },
                                            ))),
                                    const SizedBox(
                                      height: 18,
                                    ),
                                    Card(
                                        color: Colors1.formBg,
                                        child: SizedBox(
                                            width: 500,
                                            child: TextFormField(
                                              cursorColor: Colors1.hgrey,
                                              style: const TextStyle(
                                                  fontFamily: Fonts.nunito,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 22,
                                                  color: Colors1.formgrey),
                                              controller: _emailController,
                                              decoration: const InputDecoration(
                                                border: OutlineInputBorder(),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors1.formBrd,
                                                      width: 2),
                                                ),
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                        vertical: 30,
                                                        horizontal: 43),
                                                hintText: 'Email ID',
                                                hintStyle: TextStyle(
                                                    fontFamily: Fonts.nunito,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 22,
                                                    color: Colors1.formgrey),
                                              ),
                                              validator: (value) {
                                                if (value!.isEmpty) {
                                                  return 'Email is Required';
                                                } else {
                                                  return null;
                                                }
                                              },
                                              focusNode: _emailFocusNode,
                                              keyboardType:
                                                  TextInputType.emailAddress,
                                              textInputAction:
                                                  TextInputAction.done,
                                              onFieldSubmitted: (_) {
                                                _emailFocusNode.unfocus();
                                                FocusScope.of(context)
                                                    .requestFocus(
                                                        _submitFocusNode);
                                              },
                                            ))),
                                    const SizedBox(
                                      height: 50,
                                    ),
                                    Container(
                                      margin: EdgeInsets.zero,
                                      height: 85,
                                      width: 500,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(13),
                                          gradient: const LinearGradient(
                                              colors: [
                                                Colors1.hgrad1,
                                                Colors1.hgrad2
                                              ])),
                                      child: ElevatedButton(
                                        focusNode: _submitFocusNode,
                                        onPressed: () {},
                                        child: const Text(
                                          "Submit",
                                          style: TextStyle(
                                              fontFamily: Fonts.nunito,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25,
                                              color: Colors.black),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.transparent,
                                            shadowColor: Colors.transparent,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(13))),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 43),
                              child: SizedBox(
                                // color: Colors.amber,
                                width: constraints.maxWidth,
                                child: ListTile(
                                  contentPadding: EdgeInsets.zero,
                                  title: const Padding(
                                    padding: EdgeInsets.only(bottom: 7.0),
                                    child: Text(
                                      'Add all yours.',
                                      style: TextStyle(
                                          fontFamily: Fonts.nunito,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 27,
                                          color: Colors.white),
                                    ),
                                  ),
                                  subtitle: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 20),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 20.0),
                                              child: Container(
                                                height: 73,
                                                width: 388,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(13),
                                                ),
                                                child: ElevatedButton(
                                                  onPressed: () {},
                                                  child: Row(
                                                    children: const [
                                                      Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 43),
                                                        child: Icon(Icons.face),
                                                      ),
                                                      Text(
                                                        'Instagram',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            fontFamily:
                                                                Fonts.nunito,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 25,
                                                            color: Colors1
                                                                .formgrey),
                                                      ),
                                                    ],
                                                  ),
                                                  style: ElevatedButton.styleFrom(
                                                      primary: Colors1.formBg,
                                                      shadowColor:
                                                          Colors.transparent,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          13))),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: 73,
                                              width: 388,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(13),
                                              ),
                                              child: ElevatedButton(
                                                onPressed: () {},
                                                child: Row(
                                                  children: const [
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 43),
                                                      child: Icon(Icons.abc),
                                                    ),
                                                    Text(
                                                      'Facebook',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          fontFamily:
                                                              Fonts.nunito,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 25,
                                                          color:
                                                              Colors1.formgrey),
                                                    ),
                                                  ],
                                                ),
                                                style: ElevatedButton.styleFrom(
                                                    primary: Colors1.formBg,
                                                    shadowColor:
                                                        Colors.transparent,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        13))),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 20.0),
                                            child: Container(
                                              height: 73,
                                              width: 388,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(13),
                                              ),
                                              child: ElevatedButton(
                                                onPressed: () {},
                                                child: Row(
                                                  children: const [
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 43),
                                                      child: Icon(Icons.mail),
                                                    ),
                                                    Text(
                                                      'Gmail',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          fontFamily:
                                                              Fonts.nunito,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 25,
                                                          color:
                                                              Colors1.formgrey),
                                                    ),
                                                  ],
                                                ),
                                                style: ElevatedButton.styleFrom(
                                                    primary: Colors1.formBg,
                                                    shadowColor:
                                                        Colors.transparent,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        13))),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 73,
                                            width: 388,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(13),
                                            ),
                                            child: ElevatedButton(
                                              onPressed: () {},
                                              child: Row(
                                                children: const [
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 43),
                                                    child: Icon(Icons.face),
                                                  ),
                                                  Text(
                                                    'Twitter',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontFamily:
                                                            Fonts.nunito,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 25,
                                                        color:
                                                            Colors1.formgrey),
                                                  ),
                                                ],
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                  primary: Colors1.formBg,
                                                  shadowColor:
                                                      Colors.transparent,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              13))),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      );
                    })),
              ),
            ],
          ),
          Positioned(
            top: 282,
            left: 229,
            child: Image.asset(
              "assets/icons/bgCard.png",
              width: 536,
              height: 597,
            ),
          )
        ],
      ),
    );
  }
}
