import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../../../design_tools/colors.dart';
import '../../../design_tools/styles.dart';
import '../../../global_widgets/header1.dart';
import '../../../utils/device/device_utils.dart';
import 'kobblebox.dart';
import 'provider/build_card_provider.dart';
import 'select_type.dart';

class CustomLogoDialog extends StatefulWidget {
  const CustomLogoDialog({Key? key}) : super(key: key);

  @override
  State<CustomLogoDialog> createState() => _CustomLogoDialogState();
}

class _CustomLogoDialogState extends State<CustomLogoDialog> {
  //late final isSelectedLogo;

  void _showSelectTypeDialog(BuildContext context, isSelectedLogo) {
    showGeneralDialog(
        context: context,
        barrierDismissible: true,
        barrierLabel:
            MaterialLocalizations.of(context).modalBarrierDismissLabel,
        barrierColor: const Color.fromARGB(202, 59, 56, 56),
        transitionDuration: const Duration(milliseconds: 200),
        pageBuilder: (BuildContext buildContext, Animation animation,
            Animation secondaryAnimation) {
          return Material(
            color: Colors.transparent,
            child: Padding(
              padding:
                  EdgeInsets.only(left: MediaQuery.of(context).size.width / 2),
              child: Container(
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.height,
                padding:
                    const EdgeInsets.symmetric(horizontal: 71, vertical: 27),
                color: const Color(0Xff121313),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          textAlign: TextAlign.left,
                          text: const TextSpan(
                              style: TextStyle(
                                fontFamily: FontFamily.nunito,
                                fontSize: 27,
                                fontWeight: FontWeight.bold,
                                color: Colors1.borderGrey,
                              ),
                              children: [
                                TextSpan(
                                  text:
                                      'Yes..!!\nI Want this\n', // Premium Metal Card
                                ),
                                WidgetSpan(
                                  child: Card(
                                    color: Colors.amber,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 11, vertical: 3),
                                      child: Text("Premium Metal Card",
                                          style: TextStyle(
                                            fontFamily: FontFamily.nunito,
                                            fontSize: 27,
                                            fontWeight: FontWeight.bold,
                                            color: Colors1.iconl,
                                          )),
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7.0, top: 3),
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Colors1.borderGrey,
                                  style: BorderStyle.solid,
                                  width: 2.3),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: const Icon(
                                    Icons.close,
                                    color: Colors.white,
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Image.asset(
                          "assets/icons/global_icons/selectCard.png",
                          // width: 390,
                          // height: 400,
                          width: 290,
                          height: 300,
                        ),
                      ),
                    ),
                    isSelectedLogo
                        ? const Text("")
                        : SizedBox(
                            height: 170,
                            child: Consumer<BuildCardProvider>(
                                builder: (context, buildCardProvider, child) =>
                                    ListView.builder(
                                      itemCount: buildCardProvider
                                          .customSelectModel.length,
                                      itemBuilder: ((context, i) {
                                        return Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 13),
                                          child: InkWell(
                                            onTap: () {
                                              setState(() {
                                                //scard[i].isSelected = true;
                                                for (int j = 0;
                                                    j <
                                                        buildCardProvider
                                                            .customSelectModel
                                                            .length;
                                                    j++) {
                                                  //print("$j object");
                                                  if (i == j) {
                                                    // print("$j == $i");
                                                    buildCardProvider
                                                        .customSelectModel[j]
                                                        .isSelected = true;
                                                  } else {
                                                    buildCardProvider
                                                        .customSelectModel[j]
                                                        .isSelected = false;
                                                  }
                                                }
                                              });
                                            },
                                            child: Container(
                                              height: 60,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                    width: buildCardProvider
                                                            .customSelectModel[
                                                                i]
                                                            .isSelected
                                                        ? 2
                                                        : 1,
                                                    color: buildCardProvider
                                                            .customSelectModel[
                                                                i]
                                                            .isSelected
                                                        ? Colors1.green
                                                        : const Color(
                                                            0xff9D9F9E),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(7)),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 13),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        buildCardProvider
                                                                .customSelectModel[
                                                                    i]
                                                                .isSelected
                                                            ? const Icon(
                                                                Icons
                                                                    .check_circle,
                                                                color: Colors1
                                                                    .green,
                                                                size: 18,
                                                              )
                                                            : const Icon(
                                                                Icons
                                                                    .circle_outlined,
                                                                color:
                                                                    Colors.grey,
                                                                size: 18,
                                                              ),
                                                        const SizedBox(
                                                          width: 11,
                                                        ),
                                                        Text(
                                                          buildCardProvider
                                                              .customSelectModel[
                                                                  i]
                                                              .title,
                                                          style: TextStyle(
                                                            fontFamily:
                                                                FontFamily
                                                                    .nunito,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 18,
                                                            color: buildCardProvider
                                                                    .customSelectModel[
                                                                        i]
                                                                    .isSelected
                                                                ? Colors.green
                                                                : const Color(
                                                                    0xff9D9F9E),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    Text(
                                                      "\u{20B9} ${buildCardProvider.customSelectModel[i].price}",
                                                      style: TextStyle(
                                                        fontFamily:
                                                            FontFamily.nunito,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 18,
                                                        color: buildCardProvider
                                                                .customSelectModel[
                                                                    i]
                                                                .isSelected
                                                            ? Colors.green
                                                            : const Color(
                                                                0xff9D9F9E),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      }),
                                    )),
                          ),
                    const SizedBox(
                      height: 21,
                    ),
                    isSelectedLogo
                        ? Container(
                            margin: EdgeInsets.zero,
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13),
                                gradient: const LinearGradient(colors: [
                                  Color(0Xff7EFFD0),
                                  Color(0Xff0BFFA6)
                                ])),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const KobbleBox()));
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.transparent,
                                  shadowColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(13))),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(''),
                                  const Text(
                                    "Next",
                                    style: TextStyle(
                                      fontFamily: FontFamily.nunito,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Color(0Xff1A1A1A),
                                    ),
                                  ),
                                  Image.asset(
                                    'assets/icons/login_assets/m_arrow-right.png',
                                    width: 17,
                                    height: 17,
                                  )
                                ],
                              ),
                            ),
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(
                                width: 71,
                                height: 31,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const KobbleBox()));
                                  },
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors1.green,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(27))),
                                  child: const Text(
                                    "Next",
                                    style: TextStyle(
                                        fontFamily: FontFamily.nunito,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                  ),
                                ),
                              ),
                            ],
                          )
                  ],
                ),
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors1.bg,
      body: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.45,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.only(left: 139, top: 81),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Header(),
                  const SizedBox(
                    height: 80,
                  ),
                  const Text(
                    "Want to customize\nyour card with logo ?",
                    style: TextStyle(
                        fontFamily: FontFamily.nunito,
                        color: Color(0XffF0F0F0),
                        fontSize: 45,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 57,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.zero,
                        height: 67.3,
                        width: 293,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            gradient: const LinearGradient(
                                colors: [Colors1.lightgreen, Colors1.hgrad2])),
                        child: ElevatedButton(
                          onPressed: () {
                            customLogoIsSelected = true;
                            //BuildCard.isTruecall();
                            print("In Custom $customLogoIsSelected");
                            Navigator.pop(context, true);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Happy to go",
                                  style: TextStyle(
                                      fontFamily: FontFamily.nunito,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 27,
                                      color: Color(0Xff0F1010))),
                              const SizedBox(
                                width: 27,
                              ),
                              Image.asset(
                                "assets/icons/global_icons/arrow-right.png",
                                width: 23,
                                height: 21,
                              ),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              shadowColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40))),
                        ),
                      ),
                      const SizedBox(
                        width: 26.11,
                      ),
                      SizedBox(
                        height: 67.3,
                        width: 150,
                        child: OutlinedButton(
                          onPressed: () {
                            _showSelectTypeDialog(context, false);
                            //     Navigator.push(
                            // context,
                            // MaterialPageRoute(
                            //     builder: (context) => const SelectType(false)));
                          },
                          child: const Text(
                            "Skip",
                            style: TextStyle(
                                fontFamily: FontFamily.nunito,
                                color: Colors1.borderGrey,
                                fontSize: 27,
                                fontWeight: FontWeight.bold),
                          ),
                          style: OutlinedButton.styleFrom(
                              primary: Colors1.green,
                              side: const BorderSide(
                                  color: Colors1.borderGrey, width: 1.3),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40))),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Image.asset(
              "assets/icons/global_icons/customCard.png",
              width: 560,
              height: 620.67,
            ),
          ),
        ],
      ),
    );
  }
}
