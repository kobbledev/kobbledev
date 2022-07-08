import 'package:flutter/material.dart';
import 'package:kobble_dev/mobile_view/design_tools/styles.dart';
import 'package:kobble_dev/mobile_view/views/individual_user/kobble_box/kobble_box.dart';

import '../../../design_tools/colors.dart';
import '../../../models/steps.dart';

class SelectType extends StatefulWidget {
  const SelectType({Key? key}) : super(key: key);

  @override
  State<SelectType> createState() => _SelectTypeState();
}

class _SelectTypeState extends State<SelectType> {
  final List<CustomSelectModel> _customSelectModel = [
    CustomSelectModel("Metal Card", 499, true),
    CustomSelectModel("Regular Card", 299, false)
  ];
  @override
  Widget build(BuildContext context) {
    //selectType
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    var appbar = PreferredSize(
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

    return Scaffold(
        resizeToAvoidBottomInset: false,
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: appbar,
        body: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "icons/global_icons/selectType.png",
                ),
                fit: BoxFit.cover),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.only(left: 41, right: 41, bottom: 21),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  textAlign: TextAlign.left,
                  text: const TextSpan(
                      style: TextStyle(
                        fontFamily: FontFamily.nunito,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors1.borderGrey,
                      ),
                      children: [
                        TextSpan(
                          text: 'Yes..!!\nI Want this\n', // Premium Metal Card
                        ),
                        WidgetSpan(
                          child: Card(
                            color: Colors.amber,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 3),
                              child: Text("Premium Metal Card",
                                  style: TextStyle(
                                    fontFamily: FontFamily.nunito,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors1.iconl,
                                  )),
                            ),
                          ),
                        ),
                      ]),
                ),
                const SizedBox(
                  height: 39,
                ),
                Container(
                  height: 110,
                  child: ListView.builder(
                    itemCount: _customSelectModel.length,
                    itemBuilder: ((context, i) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 13),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              //scard[i].isSelected = true;
                              for (int j = 0;
                                  j < _customSelectModel.length;
                                  j++) {
                                //print("$j object");
                                if (i == j) {
                                  // print("$j == $i");
                                  _customSelectModel[j].isSelected = true;
                                } else {
                                  _customSelectModel[j].isSelected = false;
                                }
                              }
                            });
                          },
                          child: Container(
                            height: 47,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  width:
                                      _customSelectModel[i].isSelected ? 2 : 1,
                                  color: _customSelectModel[i].isSelected
                                      ? Colors1.green
                                      : const Color(0xff9D9F9E),
                                ),
                                borderRadius: BorderRadius.circular(7)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 13),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      _customSelectModel[i].isSelected
                                          ? const Icon(
                                              Icons.check_circle,
                                              color: Colors1.green,
                                              size: 18,
                                            )
                                          : const Icon(
                                              Icons.circle_outlined,
                                              color: Colors.grey,
                                              size: 18,
                                            ),
                                      const SizedBox(
                                        width: 11,
                                      ),
                                      Text(
                                        _customSelectModel[i].title,
                                        style: TextStyle(
                                          fontFamily: FontFamily.nunito,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 15,
                                          color:
                                              _customSelectModel[i].isSelected
                                                  ? Colors.green
                                                  : const Color(0xff9D9F9E),
                                        ),
                                      )
                                    ],
                                  ),
                                  Text(
                                    "\u{20B9} ${_customSelectModel[i].price}",
                                    style: TextStyle(
                                      fontFamily: FontFamily.nunito,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                      color: _customSelectModel[i].isSelected
                                          ? Colors.green
                                          : const Color(0xff9D9F9E),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                const SizedBox(
                  height: 21,
                ),
                Row(
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
                                  builder: (context) => const KobbleBox()));
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors1.green,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(27))),
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
        ));
  }
}
