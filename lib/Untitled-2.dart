// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'design_tools/colors.dart';
import 'design_tools/styles.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors1.bg,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 133, vertical: 73),
        child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.pinkAccent,
            child: Column(
              children: [
                ListTile(
                  title: RichText(
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
                        // WidgetSpan(
                        //   child: Container(
                        //     child: Stack(
                        //       children: [
                        //         Image.asset("assets/global_icons/o.png"),
                        //         Positioned(
                        //             right: 0,
                        //             top: 0,
                        //             child:
                        //                 Image.asset("assets/global_icons/op.png"))
                        //       ],
                        //     ),
                        //   ),
                        // ),
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
                Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      width: 763,
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.blue,
                      ),
                    )
                  ],
                )
              ],
            )),
      ),
    );
  }
}

class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    int _steps = 0;
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 150, bottom: 100),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(50),
                  bottomRight: Radius.circular(50)),
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors1.editBg,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50))),
                width: 140,
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (_steps == 0) {
                            _steps = _steps + 1;
                          } else {
                            _steps = _steps - 1;
                          }
                        });
                      },
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30)),
                        child: InkWell(
                          child: Card(
                            color: Colors1.iconBg,
                            margin: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            child: const Center(
                              child: Text(
                                "!",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(width: 200),
          IndexedStack(
            index: _steps,
            children: [
              Container(
                child: Container(
                  width: 601,
                  height: 601,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  child: Card(
                    color: Colors1.cardBg,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Image.asset(
                      "assets/icons/kvcard.png",
                    ),
                  ),
                ),
              ),
              Container(
                child: Container(
                  width: 601,
                  height: 601,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  child: Card(
                    color: Colors1.cardBg,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Image.asset(
                      "assets/icons/khcard.png",
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
