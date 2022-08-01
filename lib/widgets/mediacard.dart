
import 'package:flutter/material.dart';
import 'package:kobble_dev/widgets/switch.dart';

class MediaCardWidget extends StatefulWidget {
  final String mediaIcon;
  final String mediaName;
  MediaCardWidget({Key? key, required this.mediaIcon,required this.mediaName}) : super(key: key);

  @override
  MediaCard createState() => MediaCard();
}

class MediaCard extends State<MediaCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Container(
            // margin: const EdgeInsets.only(top: 30.5,left: 36,right:34),
            width: 170,
            height: 150,
            decoration:const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF434C49),
                  Color(0xFF2B3130)
                ],
                ),
              ),
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.topLeft,
                              margin: const EdgeInsets.only(top:26.63,left: 24),
                              child: Image.asset(widget.mediaIcon,width: 24.63,height: 24.63,),
                            ),
                          ),
                          Expanded(
                            child: Container(
                            alignment: Alignment.topRight,
                            margin: const EdgeInsets.only(top:29,right: 22),
                            child: const Icon(Icons.more_vert,color: Colors.grey,),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: const EdgeInsets.only(top:12.74,left: 28),
                        child: Text(widget.mediaName,style: const TextStyle(color: Colors.white,fontSize: 16),)
                      ),
                      Row(
                        children: [
                          Expanded(child: Container(
                              margin: const EdgeInsets.only(left: 25,top:8),
                              child: const Text("Content",style: TextStyle(fontSize: 12),))),
                          Expanded(child: Container(
                              alignment: Alignment.topLeft,
                              margin: const EdgeInsets.only(top: 10),
                              child: SwitchWidget())),
                        ],
                      )
                    ],
                  ),
              ],
            ),

          ),
        ],

    );
  }
}