// import 'package:flutter/material.dart';

// import '../../../../design_tools/colors.dart';
// import '../../../../design_tools/styles.dart';

// class StepperIndex extends StatefulWidget {
//   final constraints;
//   final screenwidth;
//   final screenHeight;
//   final currentIndex;
//   const StepperIndex(this.constraints, this.screenwidth, this.screenHeight, this.currentIndex,
//   );

//   @override
//   State<StepperIndex> createState() => _StepperIndexState();
// }

// class _StepperIndexState extends State<StepperIndex> {
   
  
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: widget.constraints.maxWidth,
//       height: widget.constraints.maxHeight / 5,
//       color: _steps[i].isSelected ? Colors.cyan : null,
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Container(
//             alignment: Alignment.center,
//             width: screenwidth * 0.072,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Card(
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(30)),
//                     color:
//                         _steps[i].isSelected ? Colors1.green : Colors1.iconBg,
//                     child: Container(
//                       alignment: Alignment.center,
//                       width: 60,
//                       height: 60,
//                       child: _steps[i].isSelected
//                           ? const Icon(
//                               Icons.check,
//                               size: 30,
//                               color: Colors.white,
//                             )
//                           : const Text(
//                               '!',
//                               style: TextStyle(
//                                   fontSize: 30,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.black),
//                               textAlign: TextAlign.center,
//                             ),
//                     )),
//                 Text(
//                   _steps[i].label,
//                   style: const TextStyle(
//                       fontFamily: Fonts.nunito,
//                       fontWeight: FontWeight.w600,
//                       fontSize: 17,
//                       color: Colors1.iconl),
//                 )
//               ],
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(top: 19),
//                 child: Text(
//                   _steps[i].isSelected ? ">" : "",
//                   style: const TextStyle(
//                     color: Colors1.green,
//                     fontWeight: FontWeight.w900,
//                     fontSize: 40,
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 width: 23,
//               ),
//               Text(
//                 _steps[i].isSelected ? title : "",
//                 style: const TextStyle(
//                     fontFamily: Fonts.nunito,
//                     color: Color(0xff0F1010),
//                     fontSize: 40,
//                     fontWeight: FontWeight.w800),
//               )
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }

// class StepperIndex {
//   final int currentIndex;
//   StepperIndex(this.currentIndex);



//   Container stepsMethod(BoxConstraints constraints, double screenwidth,
//       double screenHeight, int i, String title) {
//     return Container(
//       width: constraints.maxWidth,
//       height: constraints.maxHeight / 5,
//       color: _steps[i].isSelected ? Colors.cyan : null,
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Container(
//             alignment: Alignment.center,
//             width: screenwidth * 0.072,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Card(
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(30)),
//                     color:
//                         _steps[i].isSelected ? Colors1.green : Colors1.iconBg,
//                     child: Container(
//                       alignment: Alignment.center,
//                       width: 60,
//                       height: 60,
//                       child: _steps[i].isSelected
//                           ? const Icon(
//                               Icons.check,
//                               size: 30,
//                               color: Colors.white,
//                             )
//                           : const Text(
//                               '!',
//                               style: TextStyle(
//                                   fontSize: 30,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.black),
//                               textAlign: TextAlign.center,
//                             ),
//                     )),
//                 Text(
//                   _steps[i].label,
//                   style: const TextStyle(
//                       fontFamily: Fonts.nunito,
//                       fontWeight: FontWeight.w600,
//                       fontSize: 17,
//                       color: Colors1.iconl),
//                 )
//               ],
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(top: 19),
//                 child: Text(
//                   _steps[i].isSelected ? ">" : "",
//                   style: const TextStyle(
//                     color: Colors1.green,
//                     fontWeight: FontWeight.w900,
//                     fontSize: 40,
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 width: 23,
//               ),
//               Text(
//                 _steps[i].isSelected ? title : "",
//                 style: const TextStyle(
//                     fontFamily: Fonts.nunito,
//                     color: Color(0xff0F1010),
//                     fontSize: 40,
//                     fontWeight: FontWeight.w800),
//               )
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
