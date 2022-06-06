// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';

// import '../../../../global_widgets/header2.dart';

// class Step1 extends StatefulWidget {
//   const Step1({Key? key}) : super(key: key);

//   @override
//   State<Step1> createState() => _Step1State();
// }

// class _Step1State extends State<Step1> {

//   @override
//   Widget build(BuildContext context) {
//     double screenwidth = MediaQuery.of(context).size.width;
//     double screenheight = MediaQuery.of(context).size.height;
//     return Scaffold(
//       appBar: Header2.stepHeader(screenheight),
//       body: Row(children: [
//          SizedBox(
//                   width: 140,
//                   height: (MediaQuery.of(context).size.height - 155),
//                   child: Center(
//                     child: ListView.builder(
//                         shrinkWrap: true,
//                         itemCount: _steps.length,
//                         itemBuilder: ((context, i) {
//                           return InkWell(
//                             onTap: () {
//                               // print(constraints.maxWidth);
//                               setState(() {
//                                 _steps[i].isSelected = true;

//                                 if (i >= 0 && i < 5) {
//                                   _selectedIndex = i;
//                                 }
//                               });
//                             },
//                             child: Padding(
//                               padding: i == 4
//                                   ? const EdgeInsets.only(bottom: 1)
//                                   : const EdgeInsets.only(bottom: 47.0),
//                               child: Column(
//                                 children: [
//                                   Card(
//                                       shape: RoundedRectangleBorder(
//                                           borderRadius:
//                                               BorderRadius.circular(30)),
//                                       color: _steps[i].isSelected
//                                           ? Colors1.green
//                                           : Colors1.iconBg,
//                                       child: Container(
//                                         alignment: Alignment.center,
//                                         width: 60,
//                                         height: 60,
//                                         child: _steps[i].isSelected
//                                             ? const Icon(
//                                                 Icons.check,
//                                                 size: 30,
//                                                 color: Colors.white,
//                                               )
//                                             : const Text(
//                                                 '!',
//                                                 style: TextStyle(
//                                                     fontSize: 30,
//                                                     fontWeight: FontWeight.bold,
//                                                     color: Colors.black),
//                                                 textAlign: TextAlign.center,
//                                               ),
//                                       )),
//                                   Text(
//                                     _steps[i].label,
//                                     style: const TextStyle(
//                                         fontFamily: Fonts.nunito,
//                                         fontWeight: FontWeight.w600,
//                                         fontSize: 17,
//                                         color: Colors1.iconl),
//                                   )
//                                 ],
//                               ),
//                             ),
//                           );
//                         })),
//                   ),
//                 ),
             

//       ]),
//     );
//   }
// }