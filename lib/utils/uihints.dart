import 'package:flutter/material.dart';
import 'package:kobble_dev/utils/constants.dart';

import 'helper.dart';

class UIHints {
  static showDialogMessage(
      String? message, BuildContext ctx, int? type, String? val) {
    // set up the button
    Widget okButton = TextButton(
      child: const Text("OK"),
      onPressed: () {
          if (type == Constants.TYPE_LOGIN_WEB) {
            Helper.callLoginApi(ctx, val.toString());
          }
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Title"),
      content: Text(message!),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: ctx,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  // showDialog(
  //   context: ctx,
  //   builder: (_) {
  //     return SimpleDialog(
  //       title: Text(message),
  //       children: [
  //         SimpleDialogOption(
  //             child: TextButton(
  //               child: const Text("OK"),
  //               onPressed: () {},
  //             ),
  //             onPressed: () {
  //               Navigator.pop(ctx);
  //             }),
  //       ],
  //     );
  //   },
  // );

  // Fluttertoast.showToast(
  //     msg: message,
  //     toastLength: Toast.LENGTH_SHORT,
  //     gravity: ToastGravity.CENTER,
  //     timeInSecForIosWeb: 1,
  //     backgroundColor: const Color(0XffF0F0F0),
  //     textColor: Colors.black,
  //     fontSize: 16.0);

}
