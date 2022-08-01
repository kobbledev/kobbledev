// import 'package:flutter/material.dart';

// import '../../../design_tools/colors.dart';
// import '../../../design_tools/styles.dart';
// import '../../../global_widgets/header1.dart';
// import '../../../models/stepclass.dart';
// import 'kobblebox.dart';

// class SkipCustomLogo extends StatefulWidget {
//   const SkipCustomLogo({Key? key}) : super(key: key);

//   @override
//   State<SkipCustomLogo> createState() => _SkipCustomLogoState();
// }

// class _SkipCustomLogoState extends State<SkipCustomLogo> {
//   @override
//   Widget build(BuildContext context) {
//     List<CustomSelectModel> _customSelectModel = [
//       CustomSelectModel("Metal Card", 499),
//       CustomSelectModel("Regular Card", 299)
//     ];
    

//     return Scaffold(
//       backgroundColor: Colors1.bg,
//       body: Row(
//         children: [
//           SizedBox(
//             width: MediaQuery.of(context).size.width * 0.45,
//             height: MediaQuery.of(context).size.height,
//             child: Padding(
//               padding: const EdgeInsets.only(left: 139, top: 81),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Header(),
//                   const SizedBox(
//                     height: 80,
//                   ),
//                   const Text(
//                     "Want to customize\nyour card with logo ?",
//                     style: TextStyle(
//                         fontFamily: FontFamily.nunito,
//                         color: Color(0XffF0F0F0),
//                         fontSize: 45,
//                         fontWeight: FontWeight.bold),
//                   ),
//                   const SizedBox(
//                     height: 57,
//                   ),
//                   Row(
//                     children: [
//                       Container(
//                         margin: EdgeInsets.zero,
//                         height: 67.3,
//                         width: 293,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(40),
//                             gradient: const LinearGradient(
//                                 colors: [Colors1.lightgreen, Colors1.hgrad2])),
//                         child: ElevatedButton(
//                           onPressed: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => const KobbleBox()));
//                           },
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               const Text("Happy to go",
//                                   style: TextStyle(
//                                       fontFamily: FontFamily.nunito,
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 27,
//                                       color: Color(0Xff0F1010))),
//                               const SizedBox(
//                                 width: 27,
//                               ),
//                               Image.asset(
//                                 "assets/icons/global_icons/arrow-right.png",
//                                 width: 23,
//                                 height: 21,
//                               ),
//                             ],
//                           ),
//                           style: ElevatedButton.styleFrom(
//                               primary: Colors.transparent,
//                               shadowColor: Colors.transparent,
//                               shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(40))),
//                         ),
//                       ),
//                       const SizedBox(
//                         width: 26.11,
//                       ),
//                       SizedBox(
//                         height: 67.3,
//                         width: 150,
//                         child: OutlinedButton(
//                           onPressed: () {
//                             _showCustomDialog(context);
//                           },
//                           child: const Text(
//                             "Skip",
//                             style: TextStyle(
//                                 fontFamily: FontFamily.nunito,
//                                 color: Colors1.borderGrey,
//                                 fontSize: 27,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                           style: OutlinedButton.styleFrom(
//                               primary: Colors1.green,
//                               side: const BorderSide(
//                                   color: Colors1.borderGrey, width: 1.3),
//                               shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(40))),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Expanded(
//             child: Image.asset(
//               "assets/icons/global_icons/customCard.png",
//               width: 560,
//               height: 620.67,
//             ),
//           ),
//         ],
//       ),
//     );
 
 
//   }
// }

// //  RichText(
// //               text: TextSpan(
// //                   style: const TextStyle(
// //                     fontFamily: Fonts.nunito,
// //                     fontSize: 31,
// //                     fontWeight: FontWeight.bold,
// //                     color: Colors1.borderGrey,

// //                   ),
// //                   children: [
// //                 const TextSpan(
// //                   text: 'Yes..!!\nI Want this\n', // Premium Metal Card
// //                 ),
// //                 const TextSpan(
// //                   text: 'Premium Metal Card',
// //                   style: TextStyle(
// //                     color: Colors1.iconl,
// //                     backgroundColor: Colors.amber,
// //                   )
// //                 ),
// //                 WidgetSpan(
// //                     child: SizedBox(
// //                   width: 50,
// //                   height: 62,
// //                   child: Column(
// //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                     crossAxisAlignment: CrossAxisAlignment.center,
// //                     children: [
// //                       Row(
// //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                         children: [
// //                           const Text(''),
// //                           Image.asset(
// //                             "assets/icons/global_icons/op.png",
// //                             width: 10,
// //                             height: 10,
// //                           ),
// //                         ],
// //                       ),
// //                       Image.asset(
// //                         "assets/icons/global_icons/o.png",
// //                         width: 40,
// //                         height: 46,
// //                       ),
// //                     ],
// //                   ),
// //                 )),
// //                 const TextSpan(
// //                   text: 'BBLE',
// //                   style: TextStyle(
// //                       fontFamily: Fonts.nunito,
// //                       fontWeight: FontWeight.bold,
// //                       fontSize: 38,
// //                       color: Colors.white),
// //                 ),
// //               ])),
