// import 'package:flutter/material.dart';
// import 'package:kobble_dev/models/stepclass.dart';
// import 'package:kobble_dev/design_tools/styles.dart';
// import '../../../design_tools/colors.dart';
// import '../../../design_tools/device_details.dart';
// import 'kobblebox.dart';
// import 'skip_customize.dart';

// class EditCard extends StatefulWidget {
//   const EditCard({Key? key}) : super(key: key);

//   @override
//   State<EditCard> createState() => _EditCardState();
// }

// class _EditCardState extends State<EditCard> {
//   Map<int, List<StepCardModel>> map1 = {
//     //step 1 details
//     0: [
//       StepCardModel(
//         cardImage: 'assets/icons/edit_card/step1.png',
//         image: 'assets/icons/edit_card/step1/qrcode1.png',
//         title: 'Design 1',
//       ),
//       StepCardModel(
//           cardImage: 'assets/icons/edit_card/step1.png',
//           image: 'assets/icons/edit_card/step1/qrcode2.png',
//           title: 'Design 2'),
//       StepCardModel(
//           cardImage: 'assets/icons/edit_card/step1.png',
//           image: 'assets/icons/edit_card/step1/qrcode1.png',
//           title: 'Design 3'),
//       StepCardModel(
//           cardImage: 'assets/icons/edit_card/step1.png',
//           image: 'assets/icons/edit_card/step1/qrcode3.png',
//           title: 'Design 4')
//     ],
//     1: [
//       StepCardModel(
//         cardImage: 'assets/icons/edit_card/step1.png',
//         image: 'Algerian',
//         title: '',
//       ),
//       StepCardModel(
//           cardImage: 'assets/icons/edit_card/step1.png',
//           image: 'Barlow',
//           title: ''),
//       StepCardModel(
//           cardImage: 'assets/icons/edit_card/step1.png',
//           image: 'Cocogoose',
//           title: ''),
//       StepCardModel(
//           cardImage: 'assets/icons/edit_card/step1.png',
//           image: 'Proxima',
//           title: '')
//     ],
//     2: [
//       StepCardModel(
//           cardImage: 'assets/icons/edit_card/step1.png',
//           image: 'assets/icons/edit_card/step3/step3_1.png',
//           title: 'Left'),
//       StepCardModel(
//           cardImage: 'assets/icons/edit_card/step1.png',
//           image: 'assets/icons/edit_card/step3/step3_2.png',
//           title: 'Center'),
//       StepCardModel(
//           cardImage: 'assets/icons/edit_card/step1.png',
//           image: 'assets/icons/edit_card/step3/step3_3.png',
//           title: 'Right'),
//       StepCardModel(
//           cardImage: 'assets/icons/edit_card/step1.png',
//           image: 'assets/icons/edit_card/step3/step3_4.png',
//           title: 'Left upside')
//     ],
//     3: [
//       StepCardModel(
//           cardImage: 'assets/icons/edit_card/step1.png',
//           image: 'assets/icons/edit_card/step4/step4_1.png',
//           title: ''),
//       StepCardModel(
//           cardImage: 'assets/icons/edit_card/step1.png',
//           image: 'assets/icons/edit_card/step4/step4_2.png',
//           title: ''),
//       StepCardModel(
//           cardImage: 'assets/icons/edit_card/step1.png',
//           image: 'assets/icons/edit_card/step4/step4_3.png',
//           title: ''),
//       StepCardModel(
//           cardImage: 'assets/icons/edit_card/step1.png',
//           image: 'assets/icons/edit_card/step4/step4_4.png',
//           title: '')
//     ],
//     4: [
//       StepCardModel(
//           cardImage: 'assets/icons/edit_card/step1.png',
//           image: 'assets/icons/edit_card/step1/qrcode1.png',
//           title: 'Design 1'),
//       StepCardModel(
//           cardImage: 'assets/icons/edit_card/step1.png',
//           image: 'assets/icons/edit_card/step1/qrcode2.png',
//           title: 'Design 2'),
//       StepCardModel(
//           cardImage: 'assets/icons/edit_card/step1.png',
//           image: 'assets/icons/edit_card/step1/qrcode1.png',
//           title: 'Design 3'),
//       StepCardModel(
//           cardImage: 'assets/icons/edit_card/step1.png',
//           image: 'assets/icons/edit_card/step1/qrcode3.png',
//           title: 'Design 4')
//     ],
//   };
//   late List<StepCardModel> scard = [];
//   int _selectedIndex = 0;

//   List<Widget> stepContainers = [
//     Container(
//       child: Text("step 1"),
//     ),
//     Container(
//       child: Text("step 2"),
//     ),
//     Container(
//       child: Text("step 3"),
//     ),
//     Container(
//       child: Text("step 4"),
//     ),
//     Container(
//       child: Text("step 5"),
//     )
//   ];
//   final List<StepModel> _steps = [
//     StepModel("step 1", false),
//     StepModel("step 2", false),
//     StepModel("step 3", false),
//     StepModel("step 4", false),
//     StepModel("step 5", false)
//   ];
//   int upperBound = 4;
//   @override
//   Widget build(BuildContext context) {
//     double screenwidth = MediaQuery.of(context).size.width;
//     double screenheight = MediaQuery.of(context).size.height;
//     return Scaffold(
//       appBar: stepHeader(screenheight),
//       body: Row(
//         children: [
//           SizedBox(
//             width: 140,
//             height: (MediaQuery.of(context).size.height - 155),
//             child: Stack(
//               children: [
//                 ClipRRect(
//                   borderRadius: const BorderRadius.only(
//                       topRight: Radius.circular(50),
//                       bottomRight: Radius.circular(50)),
//                   child: Container(
//                     decoration: const BoxDecoration(
//                         color: Colors1.editBg,
//                         borderRadius: BorderRadius.only(
//                             topRight: Radius.circular(50),
//                             bottomRight: Radius.circular(50))),
//                     width: 140,
//                   ),
//                 ),
//                 SizedBox(
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
//               ],
//             ),
//           ),
//           Container(
//             alignment: Alignment.topLeft,
//             width: 447,
//             height: (MediaQuery.of(context).size.height - 155),
//             child: header(),
//           ),
//           Expanded(child: LayoutBuilder(builder: ((context, constraints) {
//             return Row(
//               children: [
//                 Container(
//                     alignment: Alignment.center,
//                     width: constraints.maxWidth * 0.25,
//                     child: _selectedIndex == 0
//                         ? const Text("")
//                         : InkWell(
//                             onTap: (() {
//                               if (_selectedIndex > 0) {
//                                 setState(() {
//                                   _selectedIndex--;
//                                 });
//                               }
//                             }),
//                             child: Container(
//                               alignment: Alignment.center,
//                               width: 74,
//                               height: 74,
//                               decoration: BoxDecoration(
//                                 color: Colors1.green,
//                                 border: Border.all(
//                                   color:
//                                       Colors1.green, //const Color(0Xff707070),
//                                   width: 2,
//                                 ),
//                                 shape: BoxShape.circle,
//                               ),
//                               child: const Icon(Icons.arrow_back_ios,
//                                   size: 30, color: Colors.black),
//                             ),
//                           )),
//                 Expanded(
//                   child: IndexedStack(
//                     index: _selectedIndex,
//                     children: [
//                       selectCard(
//                         _selectedIndex,
//                         map1[_selectedIndex] as List<StepCardModel>,
//                       ),
//                       selectCard(
//                         _selectedIndex,
//                         map1[_selectedIndex] as List<StepCardModel>,
//                       ),
//                       selectCard(
//                         _selectedIndex,
//                         map1[_selectedIndex] as List<StepCardModel>,
//                       ),
//                       selectCard(
//                         _selectedIndex,
//                         map1[_selectedIndex] as List<StepCardModel>,
//                       ),
//                       selectCard(
//                         _selectedIndex,
//                         map1[_selectedIndex] as List<StepCardModel>,
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                     alignment: Alignment.center,
//                     width: constraints.maxWidth * 0.25,
//                     child: _selectedIndex == 4
//                         ? SizedBox(
//                             width: 200,
//                             child: ElevatedButton(
//                               onPressed: () {
//                                 Navigator.push(context,
//                                     MaterialPageRoute(builder: ((context) {
//                                   return const KobbleBox();
//                                 })));
//                               },
//                               child: Padding(
//                                 padding: const EdgeInsets.symmetric(
//                                     horizontal: 31, vertical: 18),
//                                 child: Row(
//                                   children: const [
//                                     Text(
//                                       "Next",
//                                       style: TextStyle(
//                                           fontFamily: Fonts.nunito,
//                                           fontWeight: FontWeight.w800,
//                                           fontSize: 25,
//                                           color: Color(0Xff0F1010)),
//                                     ),
//                                     Padding(
//                                       padding: EdgeInsets.only(left: 21),
//                                       child: Icon(
//                                         Icons.arrow_forward_ios,
//                                         color: Color(0Xff0F1010),
//                                       ),
//                                     )
//                                   ],
//                                 ),
//                               ),
//                               style: ElevatedButton.styleFrom(
//                                   primary: Colors1.green,
//                                   shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(50))),
//                             ),
//                           )
//                         : InkWell(
//                             onTap: (() {
//                               setState(() {
//                                 if (_selectedIndex == 3) {
//                                   Navigator.push(context,
//                                       MaterialPageRoute(builder: ((context) {
//                                     return const SkipCustomLogo();
//                                   })));
//                                 }
//                                 _steps[_selectedIndex].isSelected = true;
//                                 if (_selectedIndex < upperBound) {
//                                   _selectedIndex++;
//                                 }
//                               });
//                             }),
//                             child: Container(
//                               alignment: Alignment.center,
//                               width: 74,
//                               height: 74,
//                               decoration: BoxDecoration(
//                                 color: Colors1.green,
//                                 border: Border.all(
//                                   color:
//                                       Colors1.green, //const Color(0Xff707070),
//                                   width: 2,
//                                 ),
//                                 shape: BoxShape.circle,
//                               ),
//                               child: const Icon(Icons.arrow_forward_ios,
//                                   size: 30, color: Colors.black),
//                             ),
//                           )),
//               ],
//             );
//           })))
//         ],
//       ),
//     );
//   }

  
//   Widget selectCard(int index, List<StepCardModel> scard) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 53.0),
//       child: Column(
//         children: [
//           Card(
//             color: const Color(0XffE8E8E8),
//             child: Container(
//               alignment: Alignment.center,
//               width: 601,
//               height: 601,
//               child: Image.asset('assets/icons/edit_card/step1.png'),
//             ),
//           ),
//           const SizedBox(
//             height: 33,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: scard.map((e) {
//               return Column(
//                 children: [
//                   InkWell(
//                     onTap: (() {
//                       setState(() {
//                         e.isSelected = true;
//                       });
//                     }),
//                     child: index == 1
//                         ? Container(
//                             alignment: Alignment.center,
//                             width: 170,
//                             height: 81,
//                             decoration: BoxDecoration(
//                                 color: e.isSelected
//                                     ? Colors1.green
//                                     : const Color(0XffCCCCCC),
//                                 border: Border.all(
//                                   width: 2,
//                                   color: e.isSelected
//                                       ? Colors1.green
//                                       : Colors.transparent,
//                                 ),
//                                 borderRadius: BorderRadius.circular(15)),
//                             child: Text(
//                               e.image,
//                               style: const TextStyle(
//                                 fontFamily: Fonts.nunito,
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 25,
//                                 color: Color(0Xff0F1010),
//                               ),
//                             ),
//                           )
//                         : Container(
//                             width: 101,
//                             height: 103,
//                             decoration: BoxDecoration(
//                               border: Border.all(
//                                 color: e.isSelected
//                                     ? const Color(0Xff0F1010)
//                                     : const Color(0XffCCCCCC),
//                                 width: e.isSelected ? 2 : 1.5,
//                               ),
//                               borderRadius: BorderRadius.circular(20),
//                             ),
//                             child: Padding(
//                               padding: const EdgeInsets.all(25.0),
//                               child: Image.asset(
//                                 e.image,
//                               ),
//                             ),
//                           ),
//                   ),
//                   const SizedBox(
//                     height: 7,
//                   ),
//                   Text(
//                     e.title,
//                     style: const TextStyle(
//                         fontFamily: Fonts.nunito,
//                         fontSize: 15,
//                         color: Color(0Xff0F1010),
//                         fontWeight: FontWeight.bold),
//                   )
//                 ],
//               );
//             }).toList(),
//           )
//         ],
//       ),
//     );
//   }

//   InkWell stepIcon() {
//     return InkWell(
//       onTap: () {
//         setState(() {
//           if (_selectedIndex >= 0 && _selectedIndex < 4) {
//             _selectedIndex += 1;
//           }
//         });
//       },
//       child: Container(
//         width: 60,
//         height: 60,
//         decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
//         child: InkWell(
//           child: Card(
//             color: Colors1.iconBg,
//             margin: EdgeInsets.zero,
//             shape:
//                 RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
//             child: const Center(
//               child: Text(
//                 "!",
//                 style: TextStyle(
//                     fontSize: 30,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black),
//                 textAlign: TextAlign.center,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget header() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Padding(
//           padding: const EdgeInsets.only(top: 73, left: 73, right: 23),
//           child: Text(
//             headerText(),
//             style: const TextStyle(
//                 fontFamily: Fonts.nunito,
//                 color: Color(0xff0F1010),
//                 fontSize: 50,
//                 fontWeight: FontWeight.w800),
//           ),
//         ),
//         const VerticalDivider(
//           thickness: 1,
//           width: 1,
//           color: Color(0Xff9D9F9E),
//         ),
//       ],
//     );
//   }

//   String headerText() {
//     switch (_selectedIndex) {
//       case 1:
//         return 'Selection of\nFont.';

//       case 2:
//         return 'Selection of\nCard.';

//       case 3:
//         return 'Customize with\nLogo.';

//       case 4:
//         return 'Finally the card\nwas done.';

//       default:
//         return 'Selection of\nQR Design.';
//     }
//   }

// }
