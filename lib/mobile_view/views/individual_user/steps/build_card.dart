import 'package:flutter/material.dart';

import 'package:kobble_dev/mobile_view/utils/device/device_details.dart';
import 'package:kobble_dev/mobile_view/views/individual_user/kobble_box/kobble_box.dart';
import 'package:steps_indicator/steps_indicator.dart';
import 'package:kobble_dev/mobile_view/design_tools/styles.dart';
import '../../../design_tools/colors.dart';
import '../../../models/steps.dart';
import '../login_flow/user_detail.dart';
import 'customlogo_dialog.dart';

class BuildCard extends StatefulWidget {
  const BuildCard({Key? key}) : super(key: key);

  @override
  State<BuildCard> createState() => _BuildCardState();
}

class _BuildCardState extends State<BuildCard> {
  var textBtnbg = const Color(0xff252727);

  Map<int, List<StepCardModel>> map1 = {
    //step 1 details
    0: [
      StepCardModel(
        cardImage: 'assets/icons/edit_card/stepCard_1.png',
        image: 'assets/icons/edit_card/step1/qrcode1.png',
        title: 'Design 1',
      ),
      StepCardModel(
          cardImage: 'assets/icons/edit_card/step1.png',
          image: 'assets/icons/edit_card/step1/qrcode2.png',
          title: 'Design 2'),
      StepCardModel(
          cardImage: 'assets/icons/edit_card/step1.png',
          image: 'assets/icons/edit_card/step1/qrcode1.png',
          title: 'Design 3'),
      StepCardModel(
          cardImage: 'assets/icons/edit_card/step1.png',
          image: 'assets/icons/edit_card/step1/qrcode4.png',
          title: 'Design 4')
    ],
    1: [
      StepCardModel(
        cardImage: 'assets/icons/edit_card/stepCard_2.png',
        image: 'Algerian',
        title: '',
      ),
      StepCardModel(
          cardImage: 'assets/icons/edit_card/stepCard_2.png',
          image: 'Barlow',
          title: ''),
      StepCardModel(
          cardImage: 'assets/icons/edit_card/stepCard_2.png',
          image: 'Cocogoose',
          title: ''),
      StepCardModel(
          cardImage: 'assets/icons/edit_card/stepCard_2.png',
          image: 'Proxima',
          title: '')
    ],
    2: [
      StepCardModel(
          cardImage: 'assets/icons/edit_card/stepCard_3.png',
          image: 'assets/icons/edit_card/step3/step3_1.png',
          title: ''),
      StepCardModel(
          cardImage: 'assets/icons/edit_card/stepCard_3.png',
          image: 'assets/icons/edit_card/step3/step3_2.png',
          title: ''),
      StepCardModel(
          cardImage: 'assets/icons/edit_card/stepCard_3.png',
          image: 'assets/icons/edit_card/step3/step3_3.png',
          title: ''),
      StepCardModel(
          cardImage: 'assets/icons/edit_card/stepCard_3.png',
          image: 'assets/icons/edit_card/step3/step3_3.png',
          title: '')
    ],
    3: [
      StepCardModel(
          cardImage: 'assets/icons/edit_card/stepCard_4.png',
          image: 'assets/icons/edit_card/step3/step3_1.png',
          title: ''),
      StepCardModel(
          cardImage: 'assets/icons/edit_card/stepCard_4.png',
          image: 'assets/icons/edit_card/step3/step3_2.png',
          title: ''),
      StepCardModel(
          cardImage: 'assets/icons/edit_card/stepCard_4.png',
          image: 'assets/icons/edit_card/step3/step3_3.png',
          title: ''),
      StepCardModel(
          cardImage: 'assets/icons/edit_card/stepCard_4.png',
          image: 'assets/icons/edit_card/step3/step3_3.png',
          title: '')
    ],
    // 4: [
    //   StepCardModel(
    //       cardImage: 'assets/icons/edit_card/step1.png',
    //       image: 'assets/icons/edit_card/step1/qrcode1.png',
    //       title: 'Design 1'),
    //   StepCardModel(
    //       cardImage: 'assets/icons/edit_card/step1.png',
    //       image: 'assets/icons/edit_card/step1/qrcode2.png',
    //       title: 'Design 2'),
    //   StepCardModel(
    //       cardImage: 'assets/icons/edit_card/step1.png',
    //       image: 'assets/icons/edit_card/step1/qrcode1.png',
    //       title: 'Design 3'),
    //   StepCardModel(
    //       cardImage: 'assets/icons/edit_card/step1.png',
    //       image: 'assets/icons/edit_card/step1/qrcode3.png',
    //       title: 'Design 4')
    // ],
  };
  late List<StepCardModel> scard = [];
  //int _selectedIndex = 0;
  int selectedStep = 0;
  int nbSteps = 4;

  // customLogoIsSelected? selectedStep++ : null;

  void _showUserDialog(BuildContext context) {
    showGeneralDialog(
        context: context,
        pageBuilder: (BuildContext buildContext, Animation animation,
            Animation secondaryAnimation) {
          return const FillUserDetails();
        });
  }

  void _showCustomDialog(BuildContext context) {
    showGeneralDialog(
        context: context,
        pageBuilder: (BuildContext buildContext, Animation animation,
            Animation secondaryAnimation) {
          return const CustomLogoDialog();
        });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    var preferredSize2 = PreferredSize(
      preferredSize: const Size.fromHeight(67.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: Padding(
              padding: const EdgeInsets.only(left: 7.0),
              child: IconButton(
                onPressed: (() {
                  Navigator.pop(context);
                }),
                icon: Image.asset(
                  "assets/icons/login_assets/back-arrow.png",
                  width: 18,
                  height: 16.5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff111212),
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: preferredSize2,
        body: Padding(
          padding: const EdgeInsets.only(top: 67),
          child: Center(
              child: Column(
            children: <Widget>[
              SizedBox(
                height: screenHeight * 0.1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 23),
                      child: StepsIndicator(
                        selectedStep: selectedStep,
                        nbSteps: nbSteps,
                        doneLineColor: Colors1.green,
                        //doneStepColor: Colors1.green,
                        undoneLineColor: Colors.grey,
                        lineLength: screenWidth / 5.5,
                        // lineLengthCustomStep: [
                        //   StepsIndicatorCustomLine(nbStep: 5, length: 105)
                        // ],
                        doneStepWidget: const Icon(
                          Icons.check_circle_outline,
                          color: Colors1.green,
                        ), // Custom Widget
                        unselectedStepWidget: const Icon(
                          Icons.check_circle_outline,
                          color: Colors.grey,
                        ), // Custom Widget
                        selectedStepWidget: const Icon(
                          Icons.check_circle_outline,
                          color: Colors.grey,
                        ),
                        enableLineAnimation: true,
                        enableStepAnimation: true,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: IndexedStack(
                  index: selectedStep,
                  children: [
                    selectCard(
                        selectedStep,
                        map1[selectedStep] as List<StepCardModel>,
                        screenHeight,
                        screenWidth),
                    selectCard(
                        selectedStep,
                        map1[selectedStep] as List<StepCardModel>,
                        screenHeight,
                        screenWidth),
                    selectCard(
                        selectedStep,
                        map1[selectedStep] as List<StepCardModel>,
                        screenHeight,
                        screenWidth),
                    selectCard(
                        selectedStep,
                        map1[selectedStep] as List<StepCardModel>,
                        screenHeight,
                        screenWidth),
                    // selectCard(
                    //     selectedStep,
                    //     map1[selectedStep] as List<StepCardModel>,
                    //     screenHeight,
                    //     screenWidth),
                  ],
                ),

                //  Image.asset(
                //   "assets/icons/edit_card/step_1.png",
                //   // width: screenWidth * 0.78,
                //   // height: screenHeight * 0.248,
                // ),
              ),
              // SizedBox(
              //     child: Padding(
              //   padding: const EdgeInsets.only(left: 31, right: 26),
              //   child: Container(
              //     color: Colors.black54,
              //     child: Column(
              //       children: [
              //         Text(
              //           selectedStep == 0
              //               ? "Select QR Design."
              //               : selectedStep == 1
              //                   ? "Selection of Font."
              //                   : selectedStep == 2
              //                       ? "Style your card."
              //                       : selectedStep == 3
              //                           ? "Customize with Logo."
              //                           : selectedStep == 4
              //                               ? "Finally the card was done."
              //                               : "",
              //           style: const TextStyle(
              //               fontFamily: FontFamily.nunito,
              //               fontSize: 17,
              //               fontWeight: FontWeight.w600,
              //               color: Colors.white),
              //         ),
              //       ],
              //     ),
              //   ),
              // )),
            ],
          )),
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.only(right: 23, bottom: 23),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                selectedStep == 0
                    ? const Text("")
                    : SizedBox(
                        width: 71,
                        height: 31,
                        child: OutlinedButton(
                          onPressed: () {
                            if (selectedStep > 0) {
                              setState(() {
                                selectedStep--;
                              });
                            }
                          },
                          style: OutlinedButton.styleFrom(
                              primary: Colors1.green,
                              side: const BorderSide(
                                  color: Colors1.borderGrey, width: 1),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(27))),
                          child: const Text(
                            "Prev",
                            style: TextStyle(
                                fontFamily: FontFamily.nunito,
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                      ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 71,
                  height: 31,
                  child: OutlinedButton(
                    onPressed: () {
                      //For checking user details r filled or not.
                      if (selectedStep == 1 && filledDetails == false) {
                        _showUserDialog(context);
                      } else if (selectedStep == 2) {
                        _showCustomDialog(context);
                        setState(() {
                          selectedStep++;
                        });
                      } else if (selectedStep == 3) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const KobbleBox()));
                      } else {
                        if (selectedStep < nbSteps) {
                          setState(() {
                            selectedStep++;
                          });
                          // if (selectedStep == 2) {
                          //   setState(() async {
                          //     var result = await _showCustomDialog(context);
                          //     if (result == true) {
                          //       selectedStep++;
                          //     }
                          //     //customLogoIsSelected ? selectedStep++ : null;
                          //     print(selectedStep);
                          //   });
                          // } else {
                          //   setState(() {
                          //     selectedStep++;
                          //   });
                          // }
                        }
                      }
                    },
                    style: OutlinedButton.styleFrom(
                        primary: Colors1.green,
                        side: const BorderSide(
                            color: Colors1.borderGrey, width: 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27))),
                    child: const Text(
                      "Next",
                      style: TextStyle(
                          fontFamily: FontFamily.nunito,
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget selectCard(
      int index, List<StepCardModel> scard, double scrh, double scrw) {
    return Padding(
      padding: const EdgeInsets.only(top: 19.0),
      child: Column(
        children: [
          Container(
            color: const Color(0Xff39403C),
            height: scrh * 0.47,
            width: double.infinity,
            child: Container(
              alignment: Alignment.center,
              child: Image.asset(
                scard[index].cardImage,
                width: 345,
                height: 227,
              ),
            ),
          ),
          const SizedBox(
            height: 23,
          ),
          Expanded(
            child: Container(
              color: const Color(0xff111212),
              child: Padding(
                padding: const EdgeInsets.only(left: 31, right: 26),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: Colors.black54,
                      child: Column(
                        children: [
                          Text(
                            selectedStep == 0
                                ? "Select QR Design."
                                : selectedStep == 1
                                    ? "Selection of Font."
                                    : selectedStep == 2
                                        ? "Style your card."
                                        : selectedStep == 3
                                            ? "Customize with Logo."
                                            // : selectedStep == 4
                                            //     ? "Finally the card was done."
                                            : "",
                            style: const TextStyle(
                                fontFamily: FontFamily.nunito,
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: scard.length,
                          itemBuilder: ((context, i) {
                            return Padding(
                              padding: EdgeInsets.only(
                                  top: 23,
                                  right: index == 0
                                      ? 23
                                      : index == 1
                                          ? 10
                                          : index == 2
                                              ? 23
                                              : index == 3
                                                  ? 10
                                                  : 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InkWell(
                                      onTap: (() {
                                        setState(() {
                                          //scard[i].isSelected = true;
                                          for (int j = 0;
                                              j < scard.length;
                                              j++) {
                                            //print("$j object");
                                            if (i == j) {
                                              // print("$j == $i");
                                              scard[j].isSelected = true;
                                            } else {
                                              scard[j].isSelected = false;
                                            }
                                          }
                                        });
                                      }),
                                      child: index == 0
                                          ? Column(
                                              children: [
                                                Container(
                                                  width: 61,
                                                  height: 61,
                                                  decoration: BoxDecoration(
                                                    color: textBtnbg,
                                                    border: Border.all(
                                                      color: scard[i].isSelected
                                                          ? Colors1.green
                                                          : Colors.transparent,
                                                      width: scard[i].isSelected
                                                          ? 1.3
                                                          : 0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            13.0),
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
                                                  style: TextStyle(
                                                      fontFamily:
                                                          FontFamily.nunito,
                                                      fontSize: 11,
                                                      color: scard[i].isSelected
                                                          ? Colors.white
                                                          : const Color(
                                                              0xff9D9F9E),
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            )
                                          : index == 1
                                              ? Container(
                                                  alignment: Alignment.center,
                                                  width: 112,
                                                  height: 53,
                                                  decoration: BoxDecoration(
                                                      color: textBtnbg,
                                                      border: Border.all(
                                                        width: 1.3,
                                                        color: scard[i]
                                                                .isSelected
                                                            ? Colors1.green
                                                            : Colors
                                                                .transparent,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              13)),
                                                  child: Text(
                                                    scard[i]
                                                        .image, // title of text
                                                    style: TextStyle(
                                                      fontFamily:
                                                          FontFamily.nunito,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 15,
                                                      color: scard[i].isSelected
                                                          ? Colors.green
                                                          : const Color(
                                                              0Xff9D9F9E),
                                                    ),
                                                  ),
                                                )
                                              : index == 2
                                                  ? Container(
                                                      width: 121,
                                                      height: 91,
                                                      decoration: BoxDecoration(
                                                          color: textBtnbg,
                                                          border: Border.all(
                                                            width: 1.3,
                                                            color: scard[i]
                                                                    .isSelected
                                                                ? Colors1.green
                                                                : Colors
                                                                    .transparent,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8)),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(17.0),
                                                        child: Image.asset(
                                                            scard[i].image),
                                                      ),
                                                    )
                                                  : index == 3
                                                      ? customLogo(scard, i)
                                                      : const Text("")),
                                ],
                              ),
                            );
                          })),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget customLogo(List<StepCardModel> scard, int i) {
    return Container(
      width: 121,
      height: 91,
      decoration: BoxDecoration(
          color: textBtnbg,
          border: Border.all(
            width: 1.3,
            color: scard[i].isSelected ? Colors1.green : Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(17.0),
        child: Image.asset(scard[i].image),
      ),
    );
  }
}
