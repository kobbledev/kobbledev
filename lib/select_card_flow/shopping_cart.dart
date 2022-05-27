import 'package:flutter/material.dart';
import 'package:kobble_dev/select_card_flow/address.dart';

import '../design_tools/colors.dart';
import '../design_tools/styles.dart';
import '../models/stepclass.dart';

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<CartTextModel> _cartText = [
      CartTextModel("Amount", "\u{20B9} 599.00"),
      CartTextModel("Basic", "0.00"),
      CartTextModel("Customization", "0.00"),
      CartTextModel("Discount", "0.00"),
      CartTextModel("Total", "0.00"),
      CartTextModel("GST", "0.00"),
      CartTextModel("Delivery(GST)", "0.00"),
    ];
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(150.0),
        child: Center(
          child: AppBar(
            toolbarHeight: 145,
            elevation: 7,
            backgroundColor: Colors.white,
            leading: const Text(''),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RichText(
                    text: const TextSpan(
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                        ),
                        children: [
                      TextSpan(
                        text: 'K',
                        style: TextStyle(
                            fontFamily: Fonts.nunito,
                            fontWeight: FontWeight.bold,
                            fontSize: 38,
                            color: Color(0Xff0F1010)),
                      ),
                      TextSpan(
                          text: 'O',
                          style: TextStyle(
                            fontFamily: Fonts.nunito,
                            fontWeight: FontWeight.w900,
                            fontSize: 45,
                            color: Colors1.green,
                          )),
                      TextSpan(
                        text: 'BBLE',
                        style: TextStyle(
                            fontFamily: Fonts.nunito,
                            fontWeight: FontWeight.bold,
                            fontSize: 38,
                            color: Color(0Xff0F1010)),
                      ),
                    ])),
                Padding(
                  padding: const EdgeInsets.only(right: 103.0),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: Colors1.hgrad2,
                          style: BorderStyle.solid,
                          width: 2.3),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/icons/global_icons/profile.png',
                            width: 23,
                            height: 25,
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.61,
            height: MediaQuery.of(context).size.height - 150,
            child: Padding(
              padding: const EdgeInsets.only(left: 131),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 33,
                  ),
                  const Text(
                    "Shopping Cart",
                    style: TextStyle(
                        fontFamily: Fonts.nunito,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors1.iconl),
                  ),
                  const Divider(
                    color: Colors1.hgrey,
                    thickness: 2,
                    height: 53,
                  ),
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors1.boxbg,
                          border: Border.all(
                            color: const Color(0XffD7D6D6),
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        width: 309,
                        height: 344,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Image.asset(
                            "assets/icons/global_icons/boxcard1.png",
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 57),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  "Set of Metal card, Stickers, Badge",
                                  style: TextStyle(
                                    fontFamily: Fonts.nunito,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors1.iconl,
                                  ),
                                ),
                                const SizedBox(
                                  width: 25,
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.delete))
                              ],
                            ),
                            const Text(
                              "Style - With Kobble Logo",
                              style: TextStyle(
                                  fontFamily: Fonts.nunito,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0Xff9D9F9E)),
                            ),
                            const Text(
                              "\u{20B9} 599",
                              style: TextStyle(
                                  fontFamily: Fonts.nunito,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0Xff9D9F9E)),
                            ),
                            Container(
                              width: 143,
                              height: 43,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6)),
                              child: Row(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    color: const Color(0XffD3D3D3),
                                    width: 143 / 3,
                                    height: 43,
                                    child: const Text(
                                      "-",
                                      style: TextStyle(fontSize: 25),
                                    ),
                                  ),
                                  const Expanded(
                                    child: Center(
                                      child: Text(
                                        "1",
                                        style: TextStyle(fontSize: 25),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    color: const Color(0XffD3D3D3),
                                    width: 143 / 3,
                                    height: 43,
                                    child: const Text(
                                      "+",
                                      style: TextStyle(fontSize: 25),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 39,
                            ),
                            const Text(
                              "Total",
                              style: TextStyle(
                                  fontFamily: Fonts.nunito,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors1.iconl),
                            ),
                            const SizedBox(
                              height: 11,
                            ),
                            const Text(
                              "\u{20B9} 599",
                              style: TextStyle(
                                  fontFamily: Fonts.nunito,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors1.iconl),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const Divider(
                    color: Colors1.hgrey,
                    thickness: 2,
                    height: 53,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 25),
                    child: Text(
                      "Add-ons",
                      style: TextStyle(
                          fontFamily: Fonts.nunito,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors1.iconl),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
                height: MediaQuery.of(context).size.height - 150,
                color: const Color(0XffF5F5F5),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(30)),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        color: const Color(0XffE9F6F0),
                        height: 113,
                        child: const Padding(
                          padding: EdgeInsets.only(left: 95),
                          child: Text(
                            "Subtotal",
                            style: TextStyle(
                                fontFamily: Fonts.nunito,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors1.iconl),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 95, right: 95),
                      child: Container(
                        child: Column(children: [
                          Expanded(
                            child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 23),
                                child: Column(
                                  children: [
                                    Column(
                                        children: _cartText.map((e) {
                                      return Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 17),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              e.title,
                                              style: const TextStyle(
                                                  fontFamily: Fonts.nunito,
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors1.iconl),
                                            ),
                                            Text(
                                              e.rate,
                                              style: const TextStyle(
                                                  fontFamily: Fonts.nunito,
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors1.iconl),
                                            )
                                          ],
                                        ),
                                      );
                                    }).toList()),
                                    const Divider(
                                      color: Colors1.hgrey,
                                      thickness: 2,
                                      height: 13,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 11),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            "Total",
                                            style: TextStyle(
                                                fontFamily: Fonts.nunito,
                                                fontSize: 30,
                                                fontWeight: FontWeight.bold,
                                                color: Colors1.iconl),
                                          ),
                                          Text(
                                            "\u{20B9} 599.00",
                                            style: TextStyle(
                                                fontFamily: Fonts.nunito,
                                                fontSize: 30,
                                                fontWeight: FontWeight.bold,
                                                color: Colors1.iconl),
                                          )
                                        ],
                                      ),
                                    ),
                                    Stack(
                                      children: [
                                        SizedBox(
                                          width: double.infinity,
                                          height: 81,
                                          child: Card(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            color: Colors1.borderGrey,
                                          ),
                                        ),
                                        Positioned(
                                          right: 3,
                                          top: 5,
                                          bottom: 5,
                                          child: SizedBox(
                                            width: 183,
                                            height: 81,
                                            child: ElevatedButton(
                                              onPressed: () {},
                                              child: const Text(
                                                "Apply",
                                                style: TextStyle(
                                                    fontFamily: Fonts.nunito,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 26,
                                                    color: Colors.white),
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                  elevation: 1,
                                                  primary:
                                                      const Color(0Xff46BDF9),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10))),
                                            ),
                                          ),
                                        ),
                                        const Positioned(
                                            child: TextField(
                                                decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                        )))

                                        // SizedBox(
                                        //     height: 81,
                                        //     child: TextField(
                                        //       decoration: InputDecoration(

                                        //         border: const OutlineInputBorder(),
                                        //         focusedBorder:
                                        //             const OutlineInputBorder(),
                                        //         contentPadding:
                                        //             const EdgeInsets.only(left: 41),
                                        //         hintText: 'Apply Coupon Code',
                                        //         hintStyle: const TextStyle(
                                        //             fontFamily: Fonts.nunito,
                                        //             fontWeight: FontWeight.w600,
                                        //             fontSize: 24,
                                        //             color: Colors1.formgrey),
                                        //       ),
                                        //     ),
                                        //   ),
                                      ],
                                    ),
                                  ],
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 61),
                            child: SizedBox(
                              height: 81,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: ((context) {
                                    return const Address();
                                  })));
                                },
                                child: const Center(
                                  child: Text(
                                    "Proceed",
                                    style: TextStyle(
                                        fontFamily: Fonts.nunito,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 25,
                                        color: Color(0Xff0F1010)),
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors1.green,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                              ),
                            ),
                          ),
                        ]),
                      ),
                    )),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
// child:
                        //  Column(
                        //   children: [
                        //     Container(
                        //       alignment: Alignment.centerLeft,
                        //       height: 138,
                        //       decoration:
                        //           const BoxDecoration(color: Color(0XffE9F6F0)),
                        //       child: const Padding(
                        //         padding: EdgeInsets.only(left: 95),
                        //         child: Text(
                        //           "Subtotal",
                        //           style: TextStyle(
                        //               fontFamily: Fonts.nunito,
                        //               fontSize: 30,
                        //               fontWeight: FontWeight.bold,
                        //               color: Colors1.iconl),
                        //         ),
                        //       ),
                        //     ),
                        //     Padding(
                        //       padding: const EdgeInsets.only(left: 95),
                        //       child: Column(
                        //         children: [
                        //           Expanded(
                        //               child: Padding(
                        //             padding: const EdgeInsets.symmetric(vertical: 30),
                        //             child: ListView.builder(
                        //                 itemCount: _cartText.length,
                        //                 itemBuilder: ((context, i) {
                        //                   return Row(
                        //                     mainAxisAlignment:
                        //                         MainAxisAlignment.spaceBetween,
                        //                     children: [
                        //                       Text(
                        //                         _cartText[i].title,
                        //                         style: const TextStyle(
                        //                             fontFamily: Fonts.nunito,
                        //                             fontSize: 25,
                        //                             fontWeight: FontWeight.w600,
                        //                             color: Colors1.iconl),
                        //                       ),
                        //                       Text(
                        //                         _cartText[i].rate,
                        //                         style: const TextStyle(
                        //                             fontFamily: Fonts.nunito,
                        //                             fontSize: 25,
                        //                             fontWeight: FontWeight.w600,
                        //                             color: Colors1.iconl),
                        //                       )
                        //                     ],
                        //                   );
                        //                 })),
                        //           ))
                        //         ],
                        //       ),
                        //     )
                        //   ],
                        // ),