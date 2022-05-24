import 'package:flutter/material.dart';

import '../design_tools/colors.dart';
import '../design_tools/styles.dart';

class UserForm extends StatefulWidget {
  const UserForm({Key? key}) : super(key: key);

  @override
  State<UserForm> createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
//Controllers
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _mobileController = TextEditingController();

//key
  final GlobalKey<FormState> _userFormkey = GlobalKey<FormState>();

//FocusNodes
  final _nameFocusNode = FocusNode();
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  padding: EdgeInsets.only(left: 137.0, bottom: 81, top: 81),
                  child: Header(),
                ),
                Image.asset(
                  "assets/icons/login_assets/pic3.png",
                  width: 601,
                  height: 653,
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 33),
                const Text(
                  'Please enter your Name &\nEmail ID.',
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
                  'These fields are displaying on the kobble card.',
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
                  key: _userFormkey,
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
                                      fontSize: 24,
                                      color: Colors1.formgrey),
                                  controller: _nameController,
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
                                    border: const OutlineInputBorder(),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors1.formBrd, width: 2),
                                    ),
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 30, horizontal: 23),
                                    hintText: 'Name',
                                    hintStyle: const TextStyle(
                                        fontFamily: Fonts.nunito,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 24,
                                        color: Colors1.formgrey),
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Name is Required';
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
                                ))),
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
                                  controller: _emailController,
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
                                    border: const OutlineInputBorder(),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors1.formBrd, width: 2),
                                    ),
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 30, horizontal: 23),
                                    hintText: 'Email ID',
                                    hintStyle: const TextStyle(
                                        fontFamily: Fonts.nunito,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 24,
                                        color: Colors1.formgrey),
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Email ID is Required';
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
                                        .requestFocus(_mobileFocusNode);
                                  },
                                ))),
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
                                  controller: _mobileController,
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
                                    border: const OutlineInputBorder(),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors1.formBrd, width: 2),
                                    ),
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 30, horizontal: 23),
                                    hintText: 'Phone Number',
                                    hintStyle: const TextStyle(
                                        fontFamily: Fonts.nunito,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 24,
                                        color: Colors1.formgrey),
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Phone Number is Required';
                                    } else {
                                      return null;
                                    }
                                  },
                                  focusNode: _mobileFocusNode,
                                  keyboardType: TextInputType.phone,
                                  textInputAction: TextInputAction.next,
                                  onFieldSubmitted: (_) {
                                    _mobileFocusNode.unfocus();
                                    FocusScope.of(context)
                                        .requestFocus(_submitFocusNode);
                                  },
                                ))),
                        const SizedBox(
                          height: 33,
                        ),
                        SizedBox(
                          width: 500,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "Skip >>",
                                    style: TextStyle(
                                        fontFamily: Fonts.nunito,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 24,
                                        color: Colors1.green),
                                  )),
                              SizedBox(
                                width: 91,
                                height: 79,
                                child: ElevatedButton(
                                  focusNode: _submitFocusNode,
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: ((context) {
                                      return const UserForm();
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
          )
        ],
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
