import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../views/individual_user/select_card_flow/provider/build_card_provider.dart';

class Step1Card extends StatefulWidget {

  Step1Card({Key? key}) : super(key: key);

  @override
  StepCard createState() => StepCard();
}

class StepCard extends State<Step1Card> {
  @override
  Widget build(BuildContext context) {

    return Consumer<BuildCardProvider>(
      builder: (context,buildCardProvider,child) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Container(
             margin: const EdgeInsets.only(left: 40,right:40),
            width: 346.62,
            height: 230.59,
            decoration:const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(17)),
                gradient:  LinearGradient(
                    colors: [Color(0Xff202623), Color(0xFF000000)]),
          boxShadow: [
                BoxShadow(
                  blurRadius: 38,
                  offset: Offset(22,32),
                  color: Color(0x00000029),
                )
              ]
            ),
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 32),
                  width: 164,
                  height: 164,
                  child:Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset("assets/icons/edit_card/qr_code_bg.png"),
                      Image.network(buildCardProvider.getSelectedQrData()!.image,width: 55.28,height: 55.28,),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 32),
                  alignment: Alignment.centerRight,
                  child:  Image.asset("assets/icons/edit_card/kobble_vertical.png"),
                )
              ],
            ),

          ),
        ],

      ),
    );
  }
}