import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/user_details.dart';
import '../utils/local_storage.dart';
import '../views/individual_user/select_card_flow/provider/build_card_provider.dart';


class Step3Card extends StatefulWidget {

  Step3Card({Key? key}) : super(key: key);

  @override
  StepCard createState() => StepCard();
}

class StepCard extends State<Step3Card> {
  var firstName;
  var lastName;
  var email;
  var phone;
  bool _isLoading = true;
  String? imagePath;

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

    LocalStorage.getUserDetails().then((userDetails) => {
      setData(userDetails)
    });
    return (_isLoading) ? const Center(child: CircularProgressIndicator()) :Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        Container(
          // margin: const EdgeInsets.only(top: 30.5,left: 36,right:34),
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
          child: Consumer<BuildCardProvider>(
              builder: (context,buildCardProvider,child) => Stack(
              children: [
                //image
                (buildCardProvider.getSelectedStyle()!.image == "Left" || buildCardProvider.getSelectedStyle()!.image == "Left Upside") ? Container(
                  alignment: Alignment.topRight,
                  child:Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset("assets/icons/edit_card/qr_code_bg.png",width: 164,height: 164,),
                      Image.network(buildCardProvider.getSelectedQrData()!.image,width: 55.28,height: 55.28,),
                    ],
                  ),
                ): (buildCardProvider.getSelectedStyle()!.image == "Right") ?
                Container(
                  alignment: Alignment.topLeft,
                  child:Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset("assets/icons/edit_card/qr_code_bg.png",width: 164,height: 164,),
                      Image.network(buildCardProvider.getSelectedQrData()!.image,width: 55.28,height: 55.28,),
                    ],
                  ),
                ):
                Container(),
              //text
              (buildCardProvider.getSelectedStyle()!.image == "Left" || buildCardProvider.getSelectedStyle()!.image == "Left Upside") ? Column(
                  children: [
                  Container(
                        alignment: Alignment.bottomLeft,
                        margin: const EdgeInsets.only(top: 145,left: 27),
                        child: Text(firstName+" "+lastName,style:
                        TextStyle(color: const Color(0xFF0BFFA6),fontSize: 22, fontFamily: buildCardProvider.getSelectedFont()!.image , ),)
                    ) ,
                    Container(
                        alignment: Alignment.bottomLeft,
                        margin: const EdgeInsets.only(top:1,left: 27),
                        child: Text(phone,style:  TextStyle(color: Colors.white,fontSize: 11,fontFamily: buildCardProvider.getSelectedFont()!.image))),
                    Container(
                        alignment: Alignment.bottomLeft,
                        margin: const EdgeInsets.only(left: 27),
                        child: Text(email,style: TextStyle(color: Colors.white,fontSize: 11,fontFamily: buildCardProvider.getSelectedFont()!.image)))
                  ],
                ): (buildCardProvider.getSelectedStyle()!.image == "Right")?Column(
          children: [
            Container(
                alignment: Alignment.bottomRight,
                margin: const EdgeInsets.only(top: 145,right: 27),
                child: Text(firstName+" "+lastName,style:
                TextStyle(color: const Color(0xFF0BFFA6),fontSize: 22, fontFamily: buildCardProvider.getSelectedFont()!.image , ),)
            ) ,
            Container(
                alignment: Alignment.bottomRight,
                margin: const EdgeInsets.only(top:1,right: 27),
                child: Text(phone,style:  TextStyle(color: Colors.white,fontSize: 11,fontFamily: buildCardProvider.getSelectedFont()!.image))),
            Container(
                alignment: Alignment.bottomRight,
                margin: const EdgeInsets.only(right: 27),
                child: Text(email,style: TextStyle(color: Colors.white,fontSize: 11,fontFamily: buildCardProvider.getSelectedFont()!.image)))
          ],
        ):Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      alignment: Alignment.center,
                      child: Text(firstName+" "+lastName,style:
                      TextStyle(color: const Color(0xFF0BFFA6),fontSize: 22, fontFamily: buildCardProvider.getSelectedFont()!.image , ),)
                  ) ,
                  Container(
                      alignment: Alignment.center,
                       margin: const EdgeInsets.only(top:1),
                      child: Text(phone,style:  TextStyle(color: Colors.white,fontSize: 11,fontFamily: buildCardProvider.getSelectedFont()!.image))),
                  Container(
                      alignment: Alignment.center,
                      // margin: const EdgeInsets.only(right: 27),
                      child: Text(email,style: TextStyle(color: Colors.white,fontSize: 11,fontFamily: buildCardProvider.getSelectedFont()!.image)))
                ],
              ),
              ],
            ),
          ),

        ),
      ],

    );
  }
}