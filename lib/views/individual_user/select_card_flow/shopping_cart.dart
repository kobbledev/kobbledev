import 'package:flutter/material.dart';
import 'package:kobble_dev/utils/api_controller.dart';

import '../../../design_tools/colors.dart';
import '../../../design_tools/device_details.dart';
import '../../../design_tools/styles.dart';
import '../../../global_widgets/header2.dart';
import '../../../models/card_details_response.dart';
import '../../../models/steps.dart';
import '../../../utils/api_list.dart';
import '../../../utils/constants.dart';
import 'address.dart';

class ShoppingCart extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ShoppingCartState();
}

class ShoppingCartState extends State<ShoppingCart> {
  late CardDetailsResponse cardDetailsResponse;

  @override
  initState() {
    super.initState();
    Map<String, String> headers = {
      Constants.contentType: Constants.applicationJson,
    };
    ApiController.getAPI(Apis.getCardDetails, headers)
        .then((value) => cardDetailsResponse = value);
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

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
      appBar: Header2.stepHeader(screenHeight),
      body: Row(
        children: [
          SizedBox(
            width: screenWidth * 0.596,
            child: Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.068),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 0.070,
                  ),
                  const Text(
                    "Shopping Cart",
                    style: TextStyle(
                        fontFamily: FontFamily.nunito,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors1.iconl),
                  ),
                  const Divider(
                    color: Colors1.hgrey,
                    thickness: 2,
                    height: 43,
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
                        width: screenWidth * 0.16,
                        height: screenHeight * 0.300,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: Image.asset(
                            "assets/icons/global_icons/boxcard1.png",
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: screenWidth * 0.029), // screenwidth * 0.318),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  "Set of Metal card, Stickers, Badge",
                                  style: TextStyle(
                                    fontFamily: FontFamily.nunito,
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                    color: Colors1.iconl,
                                  ),
                                ),
                                const SizedBox(
                                  width: 13,
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.delete,
                                      color: Colors.grey,
                                      size: 36,
                                    ))
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "Style - With Kobble Logo",
                              style: TextStyle(
                                  fontFamily: FontFamily.nunito,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0Xff9D9F9E)),
                            ),
                            SizedBox(
                              height: screenHeight * 0.029,
                            ),
                            const Text(
                              "\u{20B9} 599",
                              style: TextStyle(
                                  fontFamily: FontFamily.nunito,
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0Xff9D9F9E)),
                            ),
                            SizedBox(
                              height: screenHeight * 0.017,
                            ),
                            Container(
                              width: screenWidth * 0.073,
                              height: screenHeight * 0.039,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6)),
                              child: Row(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    color: const Color(0XffD3D3D3),
                                    width: screenWidth * 0.073 / 3,
                                    height: 38,
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
                                    width: screenWidth * 0.073 / 3,
                                    height: 38,
                                    child: const Text(
                                      "+",
                                      style: TextStyle(fontSize: 25),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: screenHeight * 0.036,
                            ),
                            const Text(
                              "Total",
                              style: TextStyle(
                                  fontFamily: FontFamily.nunito,
                                  fontSize: 27,
                                  fontWeight: FontWeight.bold,
                                  color: Colors1.iconl),
                            ),
                            SizedBox(
                              height: screenHeight * 0.010,
                            ),
                            const Text(
                              "\u{20B9} 599",
                              style: TextStyle(
                                  fontFamily: FontFamily.nunito,
                                  fontSize: 27,
                                  fontWeight: FontWeight.bold,
                                  color: Colors1.iconl),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Divider(
                    color: Colors1.hgrey,
                    thickness: 2,
                    height: screenHeight * 0.03,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 25),
                    child: Text(
                      "Add-ons",
                      style: TextStyle(
                          fontFamily: FontFamily.nunito,
                          fontSize: 27,
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
                height: screenHeight - DeviceDetails.appbarHeight,
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
                        height: screenHeight * 0.127,
                        child: Padding(
                          padding: EdgeInsets.only(left: screenWidth * 0.048),
                          child: const Text(
                            "Subtotal",
                            style: TextStyle(
                                fontFamily: FontFamily.nunito,
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                                color: Colors1.iconl),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: screenWidth * 0.048),
                      child: Container(
                        child: Column(children: [
                          Expanded(
                            child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: screenHeight * 0.027),
                                child: Column(
                                  children: [
                                    Column(
                                        children: _cartText.map((e) {
                                      return Padding(
                                        padding: EdgeInsets.only(
                                            bottom: screenHeight * 0.020),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              e.title,
                                              style: const TextStyle(
                                                  fontFamily: FontFamily.nunito,
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors1.iconl),
                                            ),
                                            Text(
                                              e.rate,
                                              style: const TextStyle(
                                                  fontFamily: FontFamily.nunito,
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors1.iconl),
                                            )
                                          ],
                                        ),
                                      );
                                    }).toList()),
                                    Divider(
                                      color: Colors1.hgrey,
                                      thickness: 2,
                                      height: screenHeight * 0.012,
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
                                                fontFamily: FontFamily.nunito,
                                                fontSize: 23,
                                                fontWeight: FontWeight.bold,
                                                color: Colors1.iconl),
                                          ),
                                          Text(
                                            "\u{20B9} 599.00",
                                            style: TextStyle(
                                                fontFamily: FontFamily.nunito,
                                                fontSize: 23,
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
                                          height: screenHeight * 0.074,
                                          child: Card(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            color: Colors1.borderGrey,
                                            child: Row(
                                              children: [
                                                const Expanded(
                                                    child: SizedBox(
                                                  child: TextField(
                                                    decoration: InputDecoration(
                                                      contentPadding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 30),
                                                      border: InputBorder.none,
                                                    ),
                                                    cursorHeight: 40,
                                                    cursorColor: Colors.black,
                                                    style: TextStyle(
                                                        fontFamily:
                                                            FontFamily.nunito,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 27,
                                                        color: Colors.black),
                                                  ),
                                                )),
                                                Container(
                                                  width: screenWidth * 0.095,
                                                  height: screenHeight * 0.074,
                                                  child: ElevatedButton(
                                                    onPressed: () {},
                                                    child: const Text(
                                                      "Apply",
                                                      style: TextStyle(
                                                          fontFamily:
                                                              FontFamily.nunito,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 24,
                                                          color: Colors.white),
                                                    ),
                                                    style: ElevatedButton.styleFrom(
                                                        elevation: 1,
                                                        primary: const Color(
                                                            0Xff46BDF9),
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10))),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(bottom: screenHeight * 0.05),
                            child: SizedBox(
                              height: screenHeight * 0.074,
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
                                        fontFamily: FontFamily.nunito,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 22,
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

  double getFinalPrice(
      List<double> itemsPriceList, double discountPercent, double gstPercent) {
    double combinedPrice = 0;
    double priceAfterDiscount = 0;
    double finalPriceWithGst = 0;

    for (double element in itemsPriceList) {
      combinedPrice = combinedPrice + element;
    }
    print('combinedPrice: $combinedPrice');

    if (discountPercent != 0) {
      priceAfterDiscount =
          combinedPrice - (combinedPrice * (discountPercent / 100));
    } else {
      priceAfterDiscount = combinedPrice;
    }
    print('priceAfterDiscount: $priceAfterDiscount');
    if (gstPercent != 0) {
      finalPriceWithGst =
          priceAfterDiscount + (priceAfterDiscount * (gstPercent / 100));
    }
    return finalPriceWithGst;
  }
}
