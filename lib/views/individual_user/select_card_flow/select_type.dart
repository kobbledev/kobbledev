// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class SelectType extends StatefulWidget {
//    final isSelectedLogo;
//   const SelectType(this.isSelectedLogo);

//   @override
//   State<SelectType> createState() => _SelectTypeState();
// }

// class _SelectTypeState extends State<SelectType> {

//   void _showCustomDialog(BuildContext context) {
//       showGeneralDialog(
//           context: context,
//           barrierDismissible: true,
//           barrierLabel:
//               MaterialLocalizations.of(context).modalBarrierDismissLabel,
//           barrierColor: const Color.fromARGB(202, 59, 56, 56),
//           transitionDuration: const Duration(milliseconds: 200),
//           pageBuilder: (BuildContext buildContext, Animation animation,
//               Animation secondaryAnimation) {
//             return Material(
//               color: Colors.transparent,
//               child: Padding(
//                 padding: EdgeInsets.only(
//                     left: MediaQuery.of(context).size.width / 2),
//                 child: Container(
//                   width: MediaQuery.of(context).size.width / 2,
//                   height: MediaQuery.of(context).size.height,
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 71, vertical: 27),
//                   color: const Color(0Xff121313),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           RichText(
//                             textAlign: TextAlign.left,
//                             text: const TextSpan(
//                                 style: TextStyle(
//                                   fontFamily: FontFamily.nunito,
//                                   fontSize: 27,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors1.borderGrey,
//                                 ),
//                                 children: [
//                                   TextSpan(
//                                     text:
//                                         'Yes..!!\nI Want this\n', // Premium Metal Card
//                                   ),
//                                   WidgetSpan(
//                                     child: Card(
//                                       color: Colors.amber,
//                                       child: Padding(
//                                         padding: EdgeInsets.symmetric(
//                                             horizontal: 11, vertical: 3),
//                                         child: Text("Premium Metal Card",
//                                             style: TextStyle(
//                                               fontFamily: FontFamily.nunito,
//                                               fontSize: 27,
//                                               fontWeight: FontWeight.bold,
//                                               color: Colors1.iconl,
//                                             )),
//                                       ),
//                                     ),
//                                   ),
//                                 ]),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(left: 7.0, top: 3),
//                             child: Container(
//                               decoration: BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 border: Border.all(
//                                     color: Colors1.borderGrey,
//                                     style: BorderStyle.solid,
//                                     width: 2.3),
//                               ),
//                               child: Padding(
//                                 padding: const EdgeInsets.all(5.0),
//                                 child: IconButton(
//                                     onPressed: () {
//                                       Navigator.pop(context);
//                                     },
//                                     icon: const Icon(
//                                       Icons.close,
//                                       color: Colors.white,
//                                     )),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Center(
//                           child: Image.asset(
//                             "assets/icons/global_icons/selectCard.png",
//                             width: 390,
//                             height: 400,
//                           ),
//                         ),
//                       ),
//                        widget.isSelectedLogo
//                     ? const Text("")
//                     : SizedBox(
//                   height: 110,
//                   child: Consumer<BuildCardProvider>(
//                       builder: (context, buildCardProvider, child) =>
//                           ListView.builder(
//                             itemCount: buildCardProvider
//                                 .customSelectModel.length,
//                             itemBuilder: ((context, i) {
//                               return Padding(
//                                 padding:
//                                 const EdgeInsets.only(bottom: 13),
//                                 child: InkWell(
//                                   onTap: () {
//                                     setState(() {
//                                       //scard[i].isSelected = true;
//                                       for (int j = 0;
//                                       j <
//                                           buildCardProvider
//                                               .customSelectModel
//                                               .length;
//                                       j++) {
//                                         //print("$j object");
//                                         if (i == j) {
//                                           // print("$j == $i");
//                                           buildCardProvider
//                                               .customSelectModel[j]
//                                               .isSelected = true;
//                                         } else {
//                                           buildCardProvider
//                                               .customSelectModel[j]
//                                               .isSelected = false;
//                                         }
//                                       }
//                                     });
//                                   },
//                                   child: Container(
//                                     height: 47,
//                                     decoration: BoxDecoration(
//                                         border: Border.all(
//                                           width: buildCardProvider
//                                               .customSelectModel[i]
//                                               .isSelected
//                                               ? 2
//                                               : 1,
//                                           color: buildCardProvider
//                                               .customSelectModel[i]
//                                               .isSelected
//                                               ? Colors1.green
//                                               : const Color(0xff9D9F9E),
//                                         ),
//                                         borderRadius:
//                                         BorderRadius.circular(7)),
//                                     child: Padding(
//                                       padding: const EdgeInsets.symmetric(
//                                           horizontal: 13),
//                                       child: Row(
//                                         mainAxisAlignment:
//                                         MainAxisAlignment
//                                             .spaceBetween,
//                                         crossAxisAlignment:
//                                         CrossAxisAlignment.center,
//                                         children: [
//                                           Row(
//                                             children: [
//                                               buildCardProvider
//                                                   .customSelectModel[
//                                               i]
//                                                   .isSelected
//                                                   ? const Icon(
//                                                 Icons.check_circle,
//                                                 color:
//                                                 Colors1.green,
//                                                 size: 18,
//                                               )
//                                                   : const Icon(
//                                                 Icons
//                                                     .circle_outlined,
//                                                 color: Colors.grey,
//                                                 size: 18,
//                                               ),
//                                               const SizedBox(
//                                                 width: 11,
//                                               ),
//                                               Text(
//                                                 buildCardProvider
//                                                     .customSelectModel[i]
//                                                     .title,
//                                                 style: TextStyle(
//                                                   fontFamily:
//                                                   FontFamily.nunito,
//                                                   fontWeight:
//                                                   FontWeight.w600,
//                                                   fontSize: 15,
//                                                   color: buildCardProvider
//                                                       .customSelectModel[
//                                                   i]
//                                                       .isSelected
//                                                       ? Colors.green
//                                                       : const Color(
//                                                       0xff9D9F9E),
//                                                 ),
//                                               )
//                                             ],
//                                           ),
//                                           Text(
//                                             "\u{20B9} ${buildCardProvider.customSelectModel[i].price}",
//                                             style: TextStyle(
//                                               fontFamily:
//                                               FontFamily.nunito,
//                                               fontWeight: FontWeight.w600,
//                                               fontSize: 15,
//                                               color: buildCardProvider
//                                                   .customSelectModel[
//                                               i]
//                                                   .isSelected
//                                                   ? Colors.green
//                                                   : const Color(
//                                                   0xff9D9F9E),
//                                             ),
//                                           )
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               );
//                             }),
//                           )),
//                 ),
//                 const SizedBox(
//                   height: 21,
//                 ),
//                 widget.isSelectedLogo
//                     ? Container(
//                   margin: EdgeInsets.zero,
//                   height: 50,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(13),
//                       gradient: const LinearGradient(colors: [
//                         Color(0Xff7EFFD0),
//                         Color(0Xff0BFFA6)
//                       ])),
//                   child: ElevatedButton(
//                     onPressed: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const KobbleBox()));
//                     },
//                     style: ElevatedButton.styleFrom(
//                         primary: Colors.transparent,
//                         shadowColor: Colors.transparent,
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(13))),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         const Text(''),
//                         const Text(
//                           "Next",
//                           style: TextStyle(
//                             fontFamily: FontFamily.nunito,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 20,
//                             color: Color(0Xff1A1A1A),
//                           ),
//                         ),
//                         Image.asset(
//                           'assets/icons/login_assets/m_arrow-right.png',
//                           width: 17,
//                           height: 17,
//                         )
//                       ],
//                     ),
//                   ),
//                 )
//                     : Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     SizedBox(
//                       width: 71,
//                       height: 31,
//                       child: ElevatedButton(
//                         onPressed: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) =>
//                                   const KobbleBox()));
//                         },
//                         style: ElevatedButton.styleFrom(
//                             primary: Colors1.green,
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(27))),
//                         child: const Text(
//                           "Next",
//                           style: TextStyle(
//                               fontFamily: FontFamily.nunito,
//                               fontSize: 15,
//                               fontWeight: FontWeight.w600,
//                               color: Colors.black),
//                         ),
//                       ),
//                     ),
//                   ],
//                 )
             
//                     ],
//                   ),
//                 ),
//               ),
//             );
//           });
//     }
  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _showCustomDialog(context),
//     );
//   }
// }
