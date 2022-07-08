import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kobble_dev/mobile_view/design_tools/styles.dart';

import '../../../design_tools/colors.dart';
import '../../../models/steps.dart';
import 'thanks.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  List<String> cartItems = [""];

  final List<CartTextModel> _cartText = [
    CartTextModel("Amount", "\u{20B9} 599.00"),
    CartTextModel("Basic", "0.00"),
    CartTextModel("Customization", "0.00"),
    CartTextModel("Discount", "0.00"),
    CartTextModel("Total", "0.00"),
    CartTextModel("GST", "0.00"),
    CartTextModel("Delivery(GST)", "0.00"),
  ];
  @override
  Widget build(BuildContext context) {
    var appBar = PreferredSize(
      preferredSize: const Size.fromHeight(67.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppBar(
            elevation: 2,
            backgroundColor: Colors.white,
            leading: Padding(
              padding: const EdgeInsets.only(left: 7.0),
              child: IconButton(
                  onPressed: (() {
                    Navigator.pop(context);
                  }),
                  icon: const Icon(
                    Icons.arrow_back_ios_rounded,
                    size: 22,
                    color: Colors.black,
                  )),
            ),
            title: const Text(
              "Shopping Cart",
              style: TextStyle(
                  fontFamily: FontFamily.nunito,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
        ],
      ),
    );
    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Column(
              children: cartItems.map((e) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 19, vertical: 19),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors1.boxbg,
                          border: Border.all(
                            color: const Color(0XffD7D6D6),
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.circular(9),
                        ),
                        width: 100,
                        height: 100,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 7),
                          child: Image.asset(
                            "assets/icons/global_icons/boxcard1.png",
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  "Set of Metal card, Stickers, Badge",
                                  style: TextStyle(
                                    fontFamily: FontFamily.nunito,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Colors1.iconl,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: const Padding(
                                    padding: EdgeInsets.all(3.0),
                                    child: Icon(
                                      Icons.delete,
                                      color: Colors.grey,
                                      size: 17,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const Text(
                              "Style - With Kobble Logo",
                              style: TextStyle(
                                  fontFamily: FontFamily.nunito,
                                  fontSize: 11,
                                  fontWeight: FontWeight.normal,
                                  color: Color(0Xff9D9F9E)),
                            ),
                            const SizedBox(
                              height: 9,
                            ),
                            const Text(
                              "\u{20B9} 599",
                              style: TextStyle(
                                  fontFamily: FontFamily.nunito,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0Xff9D9F9E)),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                border: Border.all(
                                  color: const Color(0XffD3D3D3),
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              width: 67,
                              height: 27,
                              child: Row(children: [
                                Expanded(
                                    child: Container(
                                  alignment: Alignment.center,
                                  child: InkWell(
                                    onTap: () {},
                                    child: const Icon(
                                      Icons.remove,
                                      size: 13,
                                    ),
                                  ),
                                )),
                                Container(
                                  alignment: Alignment.center,
                                  width: 67 / 3,
                                  height: 26,
                                  color: Colors.white,
                                  child: const Text(
                                    "1",
                                    style: TextStyle(
                                        fontFamily: FontFamily.nunito,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                        fontSize: 12),
                                  ),
                                ),
                                Expanded(
                                    child: Container(
                                  alignment: Alignment.center,
                                  child: InkWell(
                                      onTap: () {},
                                      child: const Icon(
                                        Icons.add,
                                        size: 13,
                                      )),
                                )),
                              ]),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const Text(
                              "Total",
                              style: TextStyle(
                                  fontFamily: FontFamily.nunito,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors1.iconl),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              "\u{20B9} 599",
                              style: TextStyle(
                                  fontFamily: FontFamily.nunito,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors1.iconl),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              }).toList(),
            ),
            Container(
              color: const Color(0xffF0F9F4),
              child: Padding(
                padding: const EdgeInsets.all(21.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/icons/global_icons/icon_address.png",
                      width: 24,
                      height: 27,
                    ),
                    const SizedBox(
                      width: 9,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "A shiva kumar",
                            maxLines: 1,
                            style: TextStyle(
                                fontFamily: FontFamily.nunito,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Flat no 102, Megha hills, Madhapur Hyderabad.",
                            maxLines: 2,
                            style: TextStyle(
                                fontFamily: FontFamily.nunito,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.black38),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                        child: Container(
                      alignment: Alignment.topRight,
                      child: SizedBox(
                        width: 80,
                        height: 27,
                        child: OutlinedButton(
                          onPressed: () {
                            //_showCustomDialog(context);
                          },
                          style: OutlinedButton.styleFrom(
                              // primary: const Color(0Xff006432),
                              // backgroundColor: const Color(0XffBCFCE5),
                              side: const BorderSide(
                                  color: Colors1.green, width: 1),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          child: const Text(
                            "Change",
                            maxLines: 1,
                            style: TextStyle(
                                fontFamily: FontFamily.nunito,
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            Container(
              height: 55,
              alignment: Alignment.center,
              color: const Color(0xffEAEAEA),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 21),
                child: Row(children: [
                  Image.asset(
                    "assets/icons/global_icons/shopping_bag.png",
                    width: 16,
                    height: 18,
                  ),
                  const SizedBox(
                    width: 21,
                  ),
                  const Text(
                    "You may also like",
                    style: TextStyle(
                        fontFamily: FontFamily.nunito,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )
                ]),
              ),
            ),
            const SizedBox(
              width: double.infinity,
              height: 284,
              child: Text(""),
            ),
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 96,
              color: const Color(0xffDDFDF2),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 21),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/icons/global_icons/pricetag.png",
                      width: 27,
                      height: 26,
                    ),
                    const SizedBox(
                      width: 15,
                    )
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(21.0),
              child: Text(
                "Price Details",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontFamily: FontFamily.nunito,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            Container(
              color: const Color(0xffF5F5F5),
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(21),
                child: Column(
                  children: [
                    Column(
                        children: _cartText.map((e) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 11),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              e.title,
                              style: const TextStyle(
                                  fontFamily: FontFamily.nunito,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors1.iconl),
                            ),
                            Text(
                              e.rate,
                              style: const TextStyle(
                                  fontFamily: FontFamily.nunito,
                                  fontSize: 14,
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
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Total Amount",
                            style: TextStyle(
                                fontFamily: FontFamily.nunito,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors1.iconl),
                          ),
                          Text(
                            "\u{20B9} 599.00",
                            style: TextStyle(
                                fontFamily: FontFamily.nunito,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors1.iconl),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.zero,
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          gradient: const LinearGradient(
                              colors: [Color(0Xff7EFFD0), Color(0Xff0BFFA6)])),
                      child: ElevatedButton(
                        onPressed: () {
                          //return onSubmit(signupkey);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ThanksPage()));
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            shadowColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(11))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(''),
                            Text(
                              "Place Order",
                              style: TextStyle(
                                fontFamily: FontFamily.nunito,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color(0Xff1A1A1A),
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 22,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
