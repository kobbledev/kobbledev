import 'package:flutter/material.dart';

import 'colors.dart';
import 'signUp.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, String? title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("KOBBLE"),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SignUp()),
              );
            },
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[Colors.green, Colors1.green],
                ),
              ), // min sizes for Material buttons
              alignment: Alignment.center,
              child: const Text(
                'Get Card',
                textAlign: TextAlign.center,
              ),
            ),
          )
          // ElevatedButton(
          //   onPressed: () {},
          //   child: Ink(
          //       decoration: const BoxDecoration(
          //         gradient: LinearGradient(
          //           colors: <Color>[Colors.green, Colors1.green],
          //         ),
          //       ),
          //       child: Container(
          //           alignment: Alignment.center,
          //           child: const Padding(
          //             padding:
          //                 EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          //             child: Text(
          //               "Get Card",
          //               textAlign: TextAlign.center,
          //             ),
          //           ))),
          //   style: ButtonStyle(
          //     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          //         RoundedRectangleBorder(
          //             borderRadius: BorderRadius.circular(18))),
          //     backgroundColor: MaterialStateProperty.all(Colors.transparent),
          //   ),
          // )

          ,
          IconButton(onPressed: () {}, icon: const Icon(Icons.person))
        ],
      ),
      backgroundColor: Colors1.bg,
      body: Container(),
    );
  }
}
