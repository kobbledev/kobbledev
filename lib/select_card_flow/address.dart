import 'package:flutter/material.dart';

import '../design_tools/colors.dart';
import '../design_tools/styles.dart';

class Address extends StatelessWidget {
  const Address({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(150.0),
        child: Stack(
          children: [
            Container(
              color: const Color(0XffF1F1F1),
              width: MediaQuery.of(context).size.width * 0.60,
              height: 150,
            ),
            Center(
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
          ],
        ),
      ),
      body: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            height: MediaQuery.of(context).size.height - 150,
            child: Image.asset("assets/icons/global_icons/addressPage.png"),
          ),
          Expanded(
            child: Padding(
                padding: const EdgeInsets.all(69),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("Select Delivery Address",
                                  style: TextStyle(
                                      fontFamily: Fonts.nunito,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Color(0Xff0F1010))),
                              SizedBox(
                                height: 58.3,
                                width: 176.1,
                                child: OutlinedButton(
                                  onPressed: () {
                                    //_showCustomDialog(context);
                                  },
                                  child: const Text(
                                    "Add New",
                                    style: TextStyle(
                                        fontFamily: Fonts.nunito,
                                        color: Color(0Xff006432),
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  style: OutlinedButton.styleFrom(
                                      primary: const Color(0Xff006432),
                                      backgroundColor: const Color(0XffBCFCE5),
                                      side: const BorderSide(
                                          color: Colors1.green, width: 2.1),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(29.1))),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 33,
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 107,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0XffDDDDDD),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(14)),
                            child: ListTile(
                              leading: SizedBox(
                                width: 105,
                                height: 89,
                                child: Image.asset(
                                  "assets/icons/global_icons/boxcard2.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              title: const Padding(
                                padding: EdgeInsets.only(left: 47),
                                child: Text("Get your kobble box delivered..!",
                                    style: TextStyle(
                                        fontFamily: Fonts.nunito,
                                        //To Do: add font Elephant Regular
                                        fontWeight: FontWeight.bold,
                                        fontSize: 23,
                                        color: Color(0Xff0F1010))),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 41,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors1.green,
                                  width: 1.1,
                                ),
                                borderRadius: BorderRadius.circular(14.0)),
                            child: Padding(
                                padding: const EdgeInsets.all(27),
                                child: ListTile(
                                  title: const Text("John williams",
                                      style: TextStyle(
                                          fontFamily: Fonts.nunito,
                                          //To Do: add font Elephant Regular
                                          fontWeight: FontWeight.bold,
                                          fontSize: 23,
                                          color: Color(0Xff0F1010))),
                                  trailing: const Icon(
                                    Icons.check_circle_outline,
                                    color: Colors1.green,
                                    size: 30,
                                  ),
                                  subtitle: Padding(
                                    padding: const EdgeInsets.only(top: 13),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                            "2-9-46/7,Bondada Street, Near Perlvari jn vizag - 500400",
                                            maxLines: 2,
                                            style: TextStyle(
                                                fontFamily: Fonts.nunito,
                                                //To Do: add font Elephant Regular
                                                fontWeight: FontWeight.normal,
                                                fontSize: 23,
                                                color: Color(0Xff0F1010))),
                                        Padding(
                                          padding: EdgeInsets.only(top: 7.0),
                                          child: Text("Mobile - 99 234 45 789",
                                              style: TextStyle(
                                                  fontFamily: Fonts.nunito,
                                                  //To Do: add font Elephant Regular
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 23,
                                                  color: Color(0Xff0F1010))),
                                        )
                                      ],
                                    ),
                                  ),
                                )

                                //  Column(
                                //    children: [
                                //      Row(
                                //        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                //        children: [
                                //          Text("John williams",
                                //          style: TextStyle(
                                //             fontFamily: Fonts.nunito,
                                //             //To Do: add font Elephant Regular
                                //             fontWeight: FontWeight.bold,
                                //             fontSize: 23,
                                //             color: Color(0Xff0F1010))),

                                //        ],
                                //      )
                                //    ],
                                //  ),

                                ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 81,
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: ((context) {
                          //   return const TypeOfCard();
                          // })));
                        },
                        child: const Center(
                          child: Text(
                            "Deliver Here",
                            style: TextStyle(
                                fontFamily: Fonts.nunito,
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.white),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0Xff0F1010),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
