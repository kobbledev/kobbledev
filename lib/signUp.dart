import 'package:flutter/material.dart';
import 'package:kobble_dev/colors.dart';

import 'styles.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: w >= PageBreaks.Desktop
            ? Container(
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      color: const Color.fromARGB(255, 154, 183, 233),
                      width: w / 2,
                      child: const Text("kobble"),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("Sign into Kobble."),
                                OutlinedButton(
                                  onPressed: () {},
                                  child: const Text("Skip"),
                                  style: ButtonStyle(
                                      //side: MaterialStateProperty.all(BorderRadius.circular(10)),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors1.green)),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            : Container(),
      ),
    );
  }
}
