import 'package:flutter/material.dart';

import '../../../../design_tools/styles.dart';
import '../../../../models/stepclass.dart';


class SelectCard extends StatefulWidget {
  //required this.selectedIndex
  final int selectedIndex;
  const SelectCard({
    Key? key,
    required this.selectedIndex,
  }) : super(key: key);

  @override
  State<SelectCard> createState() => _SelectCardState();
}

class _SelectCardState extends State<SelectCard> {
  Map<int, List<StepCardModel>> map1 = {
    //step 1 details
    0: [
      StepCardModel(
        cardImage: 'assets/icons/edit_card/step1.png',
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
          image: 'assets/icons/edit_card/step1/qrcode3.png',
          title: 'Design 4')
    ],
    1: [
      StepCardModel(
        cardImage: 'assets/icons/edit_card/step1.png',
        image: 'Algerian',
        title: '',
      ),
      StepCardModel(
          cardImage: 'assets/icons/edit_card/step1.png',
          image: 'Barlow',
          title: ''),
      StepCardModel(
          cardImage: 'assets/icons/edit_card/step1.png',
          image: 'Cocogoose',
          title: ''),
      StepCardModel(
          cardImage: 'assets/icons/edit_card/step1.png',
          image: 'Proxima',
          title: '')
    ],
    2: [
      StepCardModel(
          cardImage: 'assets/icons/edit_card/step1.png',
          image: 'assets/icons/edit_card/step3/step3_1.png',
          title: 'Left'),
      StepCardModel(
          cardImage: 'assets/icons/edit_card/step1.png',
          image: 'assets/icons/edit_card/step3/step3_2.png',
          title: 'Center'),
      StepCardModel(
          cardImage: 'assets/icons/edit_card/step1.png',
          image: 'assets/icons/edit_card/step3/step3_3.png',
          title: 'Right'),
      StepCardModel(
          cardImage: 'assets/icons/edit_card/step1.png',
          image: 'assets/icons/edit_card/step3/step3_4.png',
          title: 'Left upside')
    ],
    3: [
      StepCardModel(
          cardImage: 'assets/icons/edit_card/step1.png',
          image: 'assets/icons/edit_card/step4/step4_1.png',
          title: ''),
      StepCardModel(
          cardImage: 'assets/icons/edit_card/step1.png',
          image: 'assets/icons/edit_card/step4/step4_2',
          title: ''),
      StepCardModel(
          cardImage: 'assets/icons/edit_card/step1.png',
          image: 'assets/icons/edit_card/step4/step4_3.png',
          title: ''),
      StepCardModel(
          cardImage: 'assets/icons/edit_card/step1.png',
          image: 'assets/icons/edit_card/step4/step4_4.png',
          title: '')
    ],
    4: [
      StepCardModel(
          cardImage: 'assets/icons/edit_card/step1.png',
          image: 'assets/icons/edit_card/step1/qrcode1.png',
          title: 'Design 1'),
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
          image: 'assets/icons/edit_card/step1/qrcode3.png',
          title: 'Design 4')
    ],
  };
  late List<StepCardModel> scard = [];
  @override
  void initState() {
    // TODO: implement initState
    print("Constructor called index${widget.selectedIndex}");
    scard = (map1[widget.selectedIndex] as List<StepCardModel>);
    scard[0].isSelected = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return selectCard();
  }

  Padding selectCard() {
    return Padding(
    padding: const EdgeInsets.only(top: 53.0),
    child: Column(
      children: [
        Card(
          color: const Color(0XffE8E8E8),
          child: Container(
            alignment: Alignment.center,
            width: 601,
            height: 601,
            child: Image.asset('assets/icons/edit_card/step1.png'),
          ),
        ),
        const SizedBox(
          height: 33,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: scard.map((e) {
            return Column(
              children: [
                InkWell(
                  onTap: (() {
                    setState(() {
                      e.isSelected = true;
                    });
                  }),
                  child: Container(
                    width: 101,
                    height: 103,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: e.isSelected
                            ? const Color(0Xff0F1010)
                            : const Color(0XffCCCCCC),
                        width: e.isSelected ? 2 : 1.5,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Image.asset(
                        e.image,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                Text(
                  e.title,
                  style: const TextStyle(
                      fontFamily: Fonts.nunito,
                      fontSize: 15,
                      color: Color(0Xff0F1010),
                      fontWeight: FontWeight.bold),
                )
              ],
            );
          }).toList(),
        )
        // Row(
        //   children: [
        //     Column(
        //       children: [
        //         ListView.builder(
        //             scrollDirection: Axis.horizontal,
        //             itemCount: scard.length,
        //             itemBuilder: ((context, i) {
        //               return Column(
        //                 children: [
        //                   InkWell(
        //                     onTap: (() {}),
        //                     child: Container(
        //                       width: 101,
        //                       height: 103,
        //                       decoration: BoxDecoration(
        //                         border: Border.all(
        //                           color: const Color(0Xff0F1010),
        //                           width: 2,
        //                         ),
        //                         borderRadius: BorderRadius.circular(20),
        //                       ),
        //                       child: Padding(
        //                         padding: const EdgeInsets.all(25.0),
        //                         child: Image.asset(
        //                           scard[i].image,
        //                         ),
        //                       ),
        //                     ),
        //                   ),
        //                   const SizedBox(
        //                     height: 7,
        //                   ),
        //                   Text(
        //                     scard[i].title,
        //                     style: const TextStyle(
        //                         fontFamily: Fonts.nunito,
        //                         fontSize: 15,
        //                         color: Color(0Xff0F1010),
        //                         fontWeight: FontWeight.bold),
        //                   )
        //                 ],
        //               );
        //             }))
        //       ],
        //     ),
        //   ],
        // )
      ],
    ),
  );
  }
}
