import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';

import 'design_tools/colors.dart';
import 'design_tools/styles.dart';

class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 33, bottom: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Kobble - Box",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: Fonts.nunito,
                      fontSize: 50,
                      fontWeight: FontWeight.w800,
                      color: Colors1.green),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "All Digital Business Card Products",
                style: TextStyle(
                    fontFamily: Fonts.nunito,
                    fontWeight: FontWeight.w800,
                    fontSize: 40,
                    color: Colors1.iconl),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 43, left: 193, right: 193),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                boxCard("assets/icons/global_icons/boxcard1.png", "Steel card",
                    293, 191),
                boxCard("assets/icons/global_icons/boxcard2.png", "Logo Badges",
                    241, 243),
                boxCard("assets/icons/global_icons/boxcard3.png", "Stickers",
                    230, 231),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 73, right: 133),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              "assets/icons/global_icons/smile.png",
              width: 39,
              height: 39,
            ),
            const SizedBox(width: 31),
            const Text(
              "Happy to go",
              style: TextStyle(
                  fontFamily: Fonts.nunito,
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: Color(0XffD4D4D4)),
            ),
            const SizedBox(width: 117),
            TextButton(
              onPressed: () {},
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 31, vertical: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 21),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Color(0Xff0F1010),
                      ),
                    ),
                    Text(
                      "Back",
                      style: TextStyle(
                          fontFamily: Fonts.nunito,
                          fontWeight: FontWeight.w800,
                          fontSize: 25,
                          color: Color(0Xff0F1010)),
                    ),
                  ],
                ),
              ),
              style: TextButton.styleFrom(
                  primary: Colors1.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
            ),
            const SizedBox(width: 21),
            ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 31, vertical: 18),
                child: Row(
                  children: const [
                    Text(
                      "Next",
                      style: TextStyle(
                          fontFamily: Fonts.nunito,
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
            )
          ],
        ),
      ),
    );
  }

  Column boxCard(String image, String title, double w, double h) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors1.boxbg,
              border: Border.all(
                color: const Color(0XffD7D6D6),
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            width: 400,
            height: 400,
            child: Image.asset(
              image,
              width: w,
              height: h,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 27),
          child: Text(
            title,
            style: const TextStyle(
                fontFamily: Fonts.nunito,
                fontWeight: FontWeight.w800,
                fontSize: 35,
                color: Colors1.iconl),
          ),
        )
      ],
    );
  }
}

/*


      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(150.0),
        child: AppBar(
          backgroundColor: Colors.grey,
          leading: RichText(
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
                      color: Colors.white),
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
                      color: Colors.white),
                ),
              ])),
          actions: [IconButton(onPressed: (() {}), icon: Icon(Icons.person))],
        ),
      ),
      body: Row(
        children: [
          NavigationRail(
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            labelType: NavigationRailLabelType.selected,
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.favorite_border),
                selectedIcon: Icon(Icons.favorite),
                label: Text('First'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.bookmark_border),
                selectedIcon: Icon(Icons.book),
                label: Text('Second'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.star_border),
                selectedIcon: Icon(Icons.star),
                label: Text('Third'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Demo extends StatefulWidget {
  @override
  _Demo createState() => _Demo();
}

class _Demo extends State<Demo> {
  // THE FOLLOWING TWO VARIABLES ARE REQUIRED TO CONTROL THE STEPPER.
  int activeStep = 0; // Initial step set to 5.

  int upperBound = 4; // upperBound MUST BE total number of icons minus 1.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(150.0),
          child: AppBar(
            backgroundColor: Colors.grey,
            leading: RichText(
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
                        color: Colors.white),
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
                        color: Colors.white),
                  ),
                ])),
            actions: [IconButton(onPressed: (() {}), icon: Icon(Icons.person))],
          ),
        ),
        body: Row(
          children: [
            SizedBox(
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

                  // Container(
                  //   width: 140,
                  //   height: double.infinity,
                  //   color: Colors1.editBg,
                  //   child: Text('done'),
                  // ),
                  Container(
                    width: 140,
                    child: IconStepper(
                      enableNextPreviousButtons: false,
                      direction: Axis.vertical,
                      lineColor: Colors.transparent,
                      activeStepBorderColor: Colors.transparent,
                      activeStepColor: Colors1.green,
                      activeStepBorderPadding: 10,
                      stepColor: Colors1.iconBg,
                      icons: const [
                        Icon(Icons.check),
                        Icon(Icons.check),
                        Icon(Icons.check),
                        Icon(Icons.check),
                        Icon(Icons.check),
                      ],

                      // activeStep property set to activeStep variable defined above.
                      activeStep: activeStep,

                      // This ensures step-tapping updates the activeStep.
                      onStepReached: (index) {
                        setState(() {
                          activeStep = index;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            header(),
            Expanded(
              child: FittedBox(
                child: Center(
                  child: Text('$activeStep'),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                previousButton(),
                nextButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Returns the next button.
  Widget nextButton() {
    return ElevatedButton(
      onPressed: () {
        // Increment activeStep, when the next button is tapped. However, check for upper bound.
        if (activeStep < upperBound) {
          setState(() {
            activeStep++;
          });
        }
      },
      child: Text('Next'),
    );
  }

  /// Returns the previous button.
  Widget previousButton() {
    return ElevatedButton(
      onPressed: () {
        // Decrement activeStep, when the previous button is tapped. However, check for lower bound i.e., must be greater than 0.
        if (activeStep > 0) {
          setState(() {
            activeStep--;
          });
        }
      },
      child: Text('Prev'),
    );
  }

  /// Returns the header wrapping the header text.
  Widget header() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              headerText(),
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Returns the header text based on the activeStep.
  String headerText() {
    switch (activeStep) {
      case 1:
        return 'Preface';

      case 2:
        return 'Preface';

      case 3:
        return 'Table of Contents';

      case 4:
        return 'About the Author';

      // case 4:
      //   return 'Publisher Information';

      // case 5:
      //   return 'Reviews';

      // case 6:
      //   return 'Chapters #1';

      default:
        return 'Introduction';
    }
  }
}
*/
