import 'package:flutter/material.dart';
import 'package:kobble_dev/views/individual_user/login_flow/otp_screen.dart';

import '../views/individual_user/select_card_flow/edit_card.dart';

class Dialogs {

  static void showAlertDialog(BuildContext context, String message, int? type) {
    // set up the button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        if (type == 1){
          Navigator.push(context, MaterialPageRoute(
              builder: ((context) {
                return const EditCard();
              })));
        }else if (type == 0){ // not registered
          Navigator.push(context,
              MaterialPageRoute(
                  builder: (context) =>
                      PinCodeVerificationScreen(phoneNumber: message)));
        } else {
          Navigator.of(context).pop();

        }
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Login Info"),
      content: Text(message),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }


}