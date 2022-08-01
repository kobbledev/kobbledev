import 'dart:html';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kobble_dev/global_widgets/header2.dart';
import 'package:kobble_dev/design_tools/styles.dart';
import 'package:provider/provider.dart';
import '../../../design_tools/colors.dart';
import '../../../design_tools/device_details.dart';
import '../../../models/masterdata_response.dart';
import '../../../models/steps.dart';
import '../../../utils/device/device_utils.dart';
import '../../../utils/local_storage.dart';
import 'customlogo_dialog.dart';
import 'kobblebox.dart';
import 'provider/build_card_provider.dart';
import 'skip_customize.dart';

class BuildCard extends StatefulWidget {
  const BuildCard({Key? key}) : super(key: key);

  @override
  State<BuildCard> createState() => _BuildCardState();
}

class _BuildCardState extends State<BuildCard> {
  late File fileImage;
  String? _imgPath;

  final ImagePicker _picker = ImagePicker();
  bool _isLoading = true;

  var textBtnbg = const Color(0xff252727);

  late MasterDataResponse masterData;

  String title = "Customize with Logo.";

  // Map<int, List<StepCardModel>> map1 = {
  //   //step 1 details
  //   0: [
  //     StepCardModel(
  //       cardImage: 'assets/icons/edit_card/stepCard_1.png',
  //       image: 'assets/icons/edit_card/step1/qrcode1.png',
  //       title: 'Design 1',
  //     ),
  //     StepCardModel(
  //         cardImage: 'assets/icons/edit_card/step1.png',
  //         image: 'assets/icons/edit_card/step1/qrcode2.png',
  //         title: 'Design 2'),
  //     StepCardModel(
  //         cardImage: 'assets/icons/edit_card/step1.png',
  //         image: 'assets/icons/edit_card/step1/qrcode1.png',
  //         title: 'Design 3'),
  //     StepCardModel(
  //         cardImage: 'assets/icons/edit_card/step1.png',
  //         image: 'assets/icons/edit_card/step1/qrcode4.png',
  //         title: 'Design 4')
  //   ],
  //   1: [
  //     StepCardModel(
  //       cardImage: 'assets/icons/edit_card/stepCard_2.png',
  //       image: 'Algerian',
  //       title: '',
  //     ),
  //     StepCardModel(
  //         cardImage: 'assets/icons/edit_card/stepCard_2.png',
  //         image: 'Barlow',
  //         title: ''),
  //     StepCardModel(
  //         cardImage: 'assets/icons/edit_card/stepCard_2.png',
  //         image: 'Cocogoose',
  //         title: ''),
  //     StepCardModel(
  //         cardImage: 'assets/icons/edit_card/stepCard_2.png',
  //         image: 'Proxima',
  //         title: '')
  //   ],
  //   2: [
  //     StepCardModel(
  //         cardImage: 'assets/icons/edit_card/stepCard_3.png',
  //         image: 'assets/icons/edit_card/step3/step3_1.png',
  //         title: ''),
  //     StepCardModel(
  //         cardImage: 'assets/icons/edit_card/stepCard_3.png',
  //         image: 'assets/icons/edit_card/step3/step3_2.png',
  //         title: ''),
  //     StepCardModel(
  //         cardImage: 'assets/icons/edit_card/stepCard_3.png',
  //         image: 'assets/icons/edit_card/step3/step3_3.png',
  //         title: ''),
  //     StepCardModel(
  //         cardImage: 'assets/icons/edit_card/stepCard_3.png',
  //         image: 'assets/icons/edit_card/step3/step3_3.png',
  //         title: '')
  //   ],
  //   3: [
  //     StepCardModel(
  //         cardImage: 'assets/icons/edit_card/stepCard_4.png',
  //         image: 'assets/icons/edit_card/step3/step3_1.png',
  //         title: ''),
  //     StepCardModel(
  //         cardImage: 'assets/icons/edit_card/stepCard_4.png',
  //         image: 'assets/icons/edit_card/step3/step3_2.png',
  //         title: ''),
  //     StepCardModel(
  //         cardImage: 'assets/icons/edit_card/stepCard_4.png',
  //         image: 'assets/icons/edit_card/step3/step3_3.png',
  //         title: ''),
  //     StepCardModel(
  //         cardImage: 'assets/icons/edit_card/stepCard_4.png',
  //         image: 'assets/icons/edit_card/step3/step3_3.png',
  //         title: '')
  //   ],
  // };

  late List<StepCardModel> scard = [];
  int _selectedIndex = 0;

  List<Widget> stepContainers = [
    Container(
      child: Text("step 1"),
    ),
    Container(
      child: Text("step 2"),
    ),
    Container(
      child: Text("step 3"),
    ),
    Container(
      child: Text("step 4"),
    ),
    Container(
      child: Text("step 5"),
    )
  ];
  final List<StepModel> _steps = [
    StepModel("step 1", false),
    StepModel("step 2", false),
    StepModel("step 3", false),
    StepModel("step 4", false),
    StepModel("step 5", false)
  ];
  int upperBound = 4;

//CustomLogo Dialog
  void _showCustomDialog(BuildContext context) {
    showGeneralDialog(
        context: context,
        pageBuilder: (BuildContext buildContext, Animation animation,
            Animation secondaryAnimation) {
          return const CustomLogoDialog();
        });
  }

  //Image Picker method
  Future<void> selectImage(sourceFrom) async {
    final image = await _picker.pickImage(source: sourceFrom);
    if (image != null) {
      setState(() {
        LocalStorage.setStringData(LocalStorage.imagePath, image.path)
            .then((value) {
          imageUploaded = true;
          Navigator.pop(context);
        });
      });

      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => UploadPage(fileImage)),
      // );
    } else {
      return;
    }
  }

  @override
  void didChangeDependencies() {
    Provider.of<BuildCardProvider>(context, listen: false)
        .fetchMasterData()
        .then((value) => {
              setState(() {
                _isLoading = false;
              })
            });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: Header2.stepHeader(screenheight),
      body: Row(
        children: [
          SizedBox(
              width: screenwidth * 0.305,
              height: screenheight - DeviceDetails.appbarHeight,
              child: Stack(children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors1.editBg,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            bottomRight: Radius.circular(50))),
                    width: screenwidth * 0.072,
                  ),
                ),
                Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: screenheight * 0.083),
                    child: LayoutBuilder(builder: ((context, constraints) {
                      return Column(
                        children: [
                          stepsMethod(
                              constraints,
                              screenwidth,
                              screenheight,
                              0,
                              _selectedIndex == 0
                                  ? "Selection of\nQR Design."
                                  : "",
                              _selectedIndex == 0 ? ">>" : ""),
                          stepsMethod(
                              constraints,
                              screenwidth,
                              screenheight,
                              1,
                              _selectedIndex == 1 ? "Selection of\nFont." : "",
                              _selectedIndex == 1 ? ">>" : ""),
                          stepsMethod(
                              constraints,
                              screenwidth,
                              screenheight,
                              2,
                              _selectedIndex == 2 ? "Style your\ncard" : "",
                              _selectedIndex == 2 ? ">>" : ""),
                          stepsMethod(
                              constraints,
                              screenwidth,
                              screenheight,
                              3,
                              _selectedIndex == 3
                                  ? "Customize with\nLogo."
                                  : "",
                              _selectedIndex == 3 ? ">>" : ""),
                          stepsMethod(
                              constraints,
                              screenwidth,
                              screenheight,
                              4,
                              _selectedIndex == 4
                                  ? "Finally the card\nwas done."
                                  : "",
                              _selectedIndex == 4 ? ">>" : ""),
                        ],
                      );
                    }))),
              ])),
          const VerticalDivider(
            thickness: 1,
            width: 1,
            color: Color(0Xff9D9F9E),
          ),
          Expanded(child: LayoutBuilder(builder: ((context, constraints) {
            return Row(
              children: [
                Container(
                    alignment: Alignment.center,
                    width: constraints.maxWidth * 0.21,
                    child: _selectedIndex == 0
                        ? const Text("")
                        : InkWell(
                            onTap: (() {
                              if (_selectedIndex > 0) {
                                setState(() {
                                  _selectedIndex--;
                                });
                              }
                            }),
                            child: Container(
                              alignment: Alignment.center,
                              width: 64,
                              height: 64,
                              decoration: BoxDecoration(
                                color: Colors1.green,
                                border: Border.all(
                                  color:
                                      Colors1.green, //const Color(0Xff707070),
                                  width: 2,
                                ),
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(Icons.arrow_back_ios,
                                  size: 30, color: Colors.black),
                            ),
                          )),
                Expanded(
                  child: _isLoading
                      ? const Center(child: CircularProgressIndicator())
                      : Consumer<BuildCardProvider>(
                          builder: (context, buildCardProvider, child) =>
                              IndexedStack(
                                index: _selectedIndex,
                                children: [
                                  selectCard(
                                      _selectedIndex,
                                      buildCardProvider.map1[_selectedIndex]
                                          as List<StepCardModel>,
                                      screenheight,
                                      screenwidth),
                                  selectCard(
                                      _selectedIndex,
                                      buildCardProvider.map1[_selectedIndex]
                                          as List<StepCardModel>,
                                      screenheight,
                                      screenwidth),
                                  selectCard(
                                      _selectedIndex,
                                      buildCardProvider.map1[_selectedIndex]
                                          as List<StepCardModel>,
                                      screenheight,
                                      screenwidth),
                                  selectCard(
                                      _selectedIndex,
                                      buildCardProvider.map1[_selectedIndex]
                                          as List<StepCardModel>,
                                      screenheight,
                                      screenwidth),
                                  selectCard(
                                      _selectedIndex,
                                      buildCardProvider.map1[_selectedIndex]
                                          as List<StepCardModel>,
                                      screenheight,
                                      screenwidth),
                                ],
                              )),

                  //  Image.asset(
                  //   "assets/icons/edit_card/step_1.png",
                  //   // width: screenWidth * 0.78,
                  //   // height: screenHeight * 0.248,
                  // ),
                ),

                // Expanded(
                //   child: Container(
                //     alignment: Alignment.center,
                //     child: IndexedStack(
                //       index: _selectedIndex,
                //       children: [
                //         selectCard(
                //             _selectedIndex,
                //             map1[_selectedIndex] as List<StepCardModel>,
                //             screenheight,
                //             screenwidth),
                //         selectCard(
                //             _selectedIndex,
                //             map1[_selectedIndex] as List<StepCardModel>,
                //             screenheight,
                //             screenwidth),
                //         selectCard(
                //             _selectedIndex,
                //             map1[_selectedIndex] as List<StepCardModel>,
                //             screenheight,
                //             screenwidth),
                //         selectCard(
                //             _selectedIndex,
                //             map1[_selectedIndex] as List<StepCardModel>,
                //             screenheight,
                //             screenwidth),
                //         selectCard(
                //             _selectedIndex,
                //             map1[_selectedIndex] as List<StepCardModel>,
                //             screenheight,
                //             screenwidth),
                //       ],
                //     ),
                //   ),
                // ),
                Container(
                    alignment: Alignment.center,
                    width: constraints.maxWidth * 0.21,
                    child: _selectedIndex == 4
                        ? SizedBox(
                            width: 200,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: ((context) {
                                  return const KobbleBox();
                                })));
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 31, vertical: 18),
                                child: Row(
                                  children: const [
                                    Text(
                                      "Next",
                                      style: TextStyle(
                                          fontFamily: FontFamily.nunito,
                                          fontWeight: FontWeight.w800,
                                          fontSize: 25,
                                          color: Color(0Xff0F1010)),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 21),
                                      child: Icon(
                                        Icons.arrow_forward_ios,
                                        color: Color(0Xff0F1010),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors1.green,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50))),
                            ),
                          )
                        : InkWell(
                            onTap: (() {
                              setState(() {
                                if (_selectedIndex == 2) {
                                  _showCustomDialog(context);
                                  setState(() {
                                    _selectedIndex++;
                                  });
                                } else {
                                  if (_selectedIndex < upperBound) {
                                    _steps[_selectedIndex].isSelected = true;
                                    _selectedIndex++;
                                  }
                                }
                              });
                            }),
                            child: Container(
                              alignment: Alignment.center,
                              width: 64,
                              height: 64,
                              decoration: BoxDecoration(
                                color: Colors1.green,
                                border: Border.all(
                                  color:
                                      Colors1.green, //const Color(0Xff707070),
                                  width: 2,
                                ),
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(Icons.arrow_forward_ios,
                                  size: 30, color: Colors.black),
                            ),
                          )),
              ],
            );
          })))
        ],
      ),
    );
  }

  Widget selectCard(int index, List<StepCardModel> scard, double h, double w) {
    return Padding(
      padding: const EdgeInsets.only(top: 43.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Card(
            color: const Color(0XffE8E8E8),
            child: Container(
              alignment: Alignment.center,
              width: w * 0.291,
              height: h * 0.49,
              child: Image.asset('assets/icons/edit_card/step1.png'),
            ),
          ),
          const SizedBox(
            height: 28,
          ),
          Container(
            alignment: Alignment.center,
            height: 120,
            width: double.infinity,
            child: Center(child: listviewHorizontal(scard, index)),
          )
          // scard.map((e) {
          //   return Column(
          //     children: [
          //       InkWell(
          //         onTap: (() {
          //           setState(() {
          //             e.isSelected = true;
          //           });
          //         }),
          //         child: index == 1
          //             ? Container(
          //                 alignment: Alignment.center,
          //                 width: 120,
          //                 height: 60,
          //                 decoration: BoxDecoration(
          //                     color: e.isSelected
          //                         ? Colors1.green
          //                         : const Color(0XffCCCCCC),
          //                     border: Border.all(
          //                       width: 2,
          //                       color: e.isSelected
          //                           ? Colors1.green
          //                           : Colors.transparent,
          //                     ),
          //                     borderRadius: BorderRadius.circular(13)),
          //                 child: Text(
          //                   e.image,
          //                   style: const TextStyle(
          //                     fontFamily: FontFamily.nunito,
          //                     fontWeight: FontWeight.bold,
          //                     fontSize: 22,
          //                     color: Color(0Xff0F1010),
          //                   ),
          //                 ),
          //               )
          //             : Container(
          //                 width: 90,
          //                 height: 90,
          //                 decoration: BoxDecoration(
          //                   border: Border.all(
          //                     color: e.isSelected
          //                         ? const Color(0Xff0F1010)
          //                         : const Color(0XffCCCCCC),
          //                     width: e.isSelected ? 2 : 1.5,
          //                   ),
          //                   borderRadius: BorderRadius.circular(18),
          //                 ),
          //                 child: Padding(
          //                   padding: const EdgeInsets.all(25.0),
          //                   child: Image.asset(
          //                     e.image,
          //                   ),
          //                 ),
          //               ),
          //       ),
          //       const SizedBox(
          //         height: 7,
          //       ),
          //       Text(
          //         e.title,
          //         style: const TextStyle(
          //             fontFamily: FontFamily.nunito,
          //             fontSize: 12,
          //             color: Color(0Xff0F1010),
          //             fontWeight: FontWeight.bold),
          //       )
          //     ],
          //   );
          // }).toList(),
        ],
      ),
    );
  }

  InkWell stepIcon() {
    return InkWell(
      onTap: () {
        setState(() {
          if (_selectedIndex >= 0 && _selectedIndex < 4) {
            _selectedIndex += 1;
          }
        });
      },
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
        child: InkWell(
          child: Card(
            color: Colors1.iconBg,
            margin: EdgeInsets.zero,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            child: const Center(
              child: Text(
                "!",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 73, left: 73, right: 23),
          child: Text(
            headerText(),
            style: const TextStyle(
                fontFamily: FontFamily.nunito,
                color: Color(0xff0F1010),
                fontSize: 50,
                fontWeight: FontWeight.w800),
          ),
        ),
        const VerticalDivider(
          thickness: 1,
          width: 1,
          color: Color(0Xff9D9F9E),
        ),
      ],
    );
  }

  Container stepsMethod(BoxConstraints constraints, double screenwidth,
      double screenHeight, int i, String title, String marker) {
    return Container(
      width: constraints.maxWidth,
      height: constraints.maxHeight / 5,
      //color: _steps[i].isSelected ? Colors.cyan : null,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            width: screenwidth * 0.072,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color:
                        _steps[i].isSelected ? Colors1.green : Colors1.iconBg,
                    child: Container(
                      alignment: Alignment.center,
                      width: 60,
                      height: 60,
                      child: _steps[i].isSelected
                          ? const Icon(
                              Icons.check,
                              size: 30,
                              color: Colors.white,
                            )
                          : const Text(
                              '!',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                    )),
                Text(
                  _steps[i].label,
                  style: const TextStyle(
                      fontFamily: FontFamily.nunito,
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                      color: Colors1.iconl),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 19),
                child: Text(
                  marker,
                  style: const TextStyle(
                    color: Colors1.green,
                    fontWeight: FontWeight.w900,
                    fontSize: 35,
                  ),
                ),
              ),
              const SizedBox(
                width: 23,
              ),
              Text(
                title,
                style: const TextStyle(
                    fontFamily: FontFamily.nunito,
                    color: Color(0xff0F1010),
                    fontSize: 30,
                    fontWeight: FontWeight.w800),
              )
            ],
          )
        ],
      ),
    );
  }

  ListView listviewHorizontal(List<StepCardModel> scard, int index) {
    return ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: scard.length,
        itemBuilder: ((context, i) {
          return InkWell(
            splashFactory: NoSplash.splashFactory,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            onTap: (() {
              setState(() {
                //scard[i].isSelected = true;
                for (int j = 0; j < scard.length; j++) {
                  //print("$j object");
                  if (i == j) {
                    // print("$j == $i");
                    //Step1Card(qrImage: scard[j].image);
                    scard[j].isSelected = true;
                  } else {
                    scard[j].isSelected = false;
                  }
                }
              });
            }),
            child: Padding(
              padding: i == (scard.length - 1)
                  ? EdgeInsets.zero
                  : const EdgeInsets.only(right: 30),
              child: Column(
                children: [
                  index == 1
                      ? Container(
                          alignment: Alignment.center,
                          width: 120,
                          height: 60,
                          decoration: BoxDecoration(
                              color: scard[i].isSelected
                                  ? Colors1.green
                                  : const Color(0XffCCCCCC),
                              border: Border.all(
                                width: 2,
                                color: scard[i].isSelected
                                    ? Colors1.green
                                    : Colors.transparent,
                              ),
                              borderRadius: BorderRadius.circular(13)),
                          child: Text(
                            scard[i].image,
                            style: const TextStyle(
                              fontFamily: FontFamily.nunito,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: Color(0Xff0F1010),
                            ),
                          ),
                        )
                      : Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: scard[i].isSelected
                                  ? const Color(0Xff0F1010)
                                  : const Color(0XffCCCCCC),
                              width: scard[i].isSelected ? 2 : 1.5,
                            ),
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: Image.asset(
                              scard[i].image,
                            ),
                          ),
                        ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    scard[i].title,
                    style: const TextStyle(
                        fontFamily: FontFamily.nunito,
                        fontSize: 12,
                        color: Color(0Xff0F1010),
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          );
        }));
  }

  String headerText() {
    switch (_selectedIndex) {
      case 1:
        return 'Selection of\nFont.';

      case 2:
        return 'Selection of\nCard.';

      case 3:
        return 'Customize with\nLogo.';

      case 4:
        return 'Finally the card\nwas done.';

      default:
        return 'Selection of\nQR Design.';
    }
  }
}

/*
SizedBox(
            width: 140,
            height: (MediaQuery.of(context).size.height - 155),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors1.editBg,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            bottomRight: Radius.circular(50))),
                    width: 140,
                  ),
                ),
                SizedBox(
                  width: 140,
                  height: (MediaQuery.of(context).size.height - 155),
                  child: Center(
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: _steps.length,
                        itemBuilder: ((context, i) {
                          return InkWell(
                            onTap: () {
                              // print(constraints.maxWidth);
                              setState(() {
                                _steps[i].isSelected = true;

                                if (i >= 0 && i < 5) {
                                  _selectedIndex = i;
                                }
                              });
                            },
                            child: Padding(
                              padding: i == 4
                                  ? const EdgeInsets.only(bottom: 1)
                                  : const EdgeInsets.only(bottom: 47.0),
                              child: Column(
                                children: [
                                  Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      color: _steps[i].isSelected
                                          ? Colors1.green
                                          : Colors1.iconBg,
                                      child: Container(
                                        alignment: Alignment.center,
                                        width: 60,
                                        height: 60,
                                        child: _steps[i].isSelected
                                            ? const Icon(
                                                Icons.check,
                                                size: 30,
                                                color: Colors.white,
                                              )
                                            : const Text(
                                                '!',
                                                style: TextStyle(
                                                    fontSize: 30,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black),
                                                textAlign: TextAlign.center,
                                              ),
                                      )),
                                  Text(
                                    _steps[i].label,
                                    style: const TextStyle(
                                        fontFamily: Fonts.nunito,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17,
                                        color: Colors1.iconl),
                                  )
                                ],
                              ),
                            ),
                          );
                        })),
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            width: 447,
            height: (MediaQuery.of(context).size.height - 155),
            child: header(),
          ),
 */