import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/user_details.dart';
import '../utils/local_storage.dart';
import '../views/individual_user/select_card_flow/provider/build_card_provider.dart';

class FinalStep extends StatefulWidget {

  FinalStep({Key? key}) : super(key: key);

  @override
  StepCard createState() => StepCard();
}

class StepCard extends State<FinalStep> {
  var firstName;
  var lastName;
  var email;
  var phone;
  bool _isLoading = true;

  void setData(UserDetails userDetails){
    firstName = userDetails.firstName;
    lastName = userDetails.lastName;
    email = userDetails.email;
    phone = userDetails.phoneNumber;
    setState((){
       _isLoading = false;
    });
  }

  
  @override
  Widget build(BuildContext context) {

    LocalStorage.getUserDetails().then((value) => {
      setData(value)

    });
    return (_isLoading) ? const Center(child: CircularProgressIndicator()) :Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        Container(
          margin: const EdgeInsets.only(top: 30.5,left: 36,right:34),

          alignment: Alignment.center,
          width: 376.62,
          height: 270.59,
          child: Stack(children: [
            Image.asset(
              "assets/icons/global_icons/final_card_without_text.png",
            ),
            Container(

              child: Consumer<BuildCardProvider>(
                  builder: (context,buildCardProvider,child) => Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                            alignment: Alignment.topLeft,
                            margin: const EdgeInsets.only(top: 193,left: 77),
                            child: Text(firstName+" "+lastName,style:
                            TextStyle(color: const Color(0xFF0BFFA6),fontSize: 22, fontFamily: buildCardProvider.getSelectedFont()!.image , ),)
                        ) ,
                        Container(
                            alignment: Alignment.topLeft,
                            margin: const EdgeInsets.only(top: 5,left: 77),
                            child: Text(phone,style:  TextStyle(color: Colors.white,fontSize: 11,fontFamily: buildCardProvider.getSelectedFont()!.image))),
                        Container(
                            alignment: Alignment.topLeft,
                            margin: const EdgeInsets.only(left: 77),
                            child: Text(email,style: TextStyle(color: Colors.white,fontSize: 11,fontFamily: buildCardProvider.getSelectedFont()!.image)))
                      ],
                    ),
                  ],
                ),
              ),

            ),
          ],),
          // child: Consumer<BuildCardProvider>(
          //     builder: (context,buildCardProvider,child) => Stack(
          //     children: [
          //       Column(
          //         children: [
          //           Container(
          //               alignment: Alignment.topLeft,
          //               margin: const EdgeInsets.only(top: 83,left: 27),
          //               child: Text(firstName+" "+lastName,style:
          //               TextStyle(color: const Color(0xFF0BFFA6),fontSize: 22, fontFamily: buildCardProvider.getSelectedFont()!.image , ),)
          //           ) ,
          //           Container(
          //             alignment: Alignment.topLeft,
          //               margin: const EdgeInsets.only(top: 5,left: 27),
          //               child: Text(phone,style:  TextStyle(color: Colors.white,fontSize: 11,fontFamily: buildCardProvider.getSelectedFont()!.image))),
          //           Container(
          //               alignment: Alignment.topLeft,
          //               margin: const EdgeInsets.only(left: 27),
          //               child: Text(email,style: TextStyle(color: Colors.white,fontSize: 11,fontFamily: buildCardProvider.getSelectedFont()!.image)))
          //         ],
          //       ),
          //     ],
          //   ),
          // ),

        ),
      ],

    );
  }
}