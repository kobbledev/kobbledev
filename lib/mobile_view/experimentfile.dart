import 'dart:async';
import 'package:flutter/material.dart';
import 'package:linear_step_indicator/linear_step_indicator.dart';

const int STEPS = 5;

class ExperimentFile extends StatefulWidget {
  const ExperimentFile({Key? key}) : super(key: key);

  @override
  ExperimentFileState createState() => ExperimentFileState();
}

class ExperimentFileState extends State<ExperimentFile>
    with TickerProviderStateMixin {
  // final pageController = PageController();
  PageController pageController = PageController();
  int initialPage = 2;

  @override
  void initState() {
    super.initState();
    // WidgetsBinding.instance.addPostFrameCallback(
    //   (timeStamp) {
    //     Timer.periodic(
    //       const Duration(milliseconds: 350),
    //       (_) {
    //         if (mounted) {
    //           initialPage += 1;
    //           if (initialPage == STEPS - 1) {
    //           } else {
    //             pageController.jumpToPage(initialPage);
    //           }
    //         }
    //       },
    //     );
    //   },
    // );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.grey,
          child: Center(
            child: Column(
              children: [
                FullLinearStepIndicator(
                  steps: STEPS,
                  lineHeight: 3.5,
                  activeNodeColor: Colors.brown,
                  inActiveNodeColor: const Color(0xffd1d5d8),
                  activeLineColor: Colors.brown,
                  inActiveLineColor: const Color(0xffd1d5d8),
                  controller: pageController,
                  labels: List<String>.generate(
                      STEPS, (index) => "Step ${index + 1}"),
                  complete: () {
                    //typically, you'd want to put logic that returns true when all the steps
                    //are completed here
                    return Future.value(true);
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      initialPage += 1;
                      pageController.jumpToPage(initialPage);
                    });
                  },
                  child: const Text("Click"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class StepIndicatorDemo extends StatelessWidget {
//   const StepIndicatorDemo({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Center(
//         child: LinearStepIndicator(
//           steps: STEPS,
//           controller: PageController(),
//           labels: List<String>.generate(STEPS, (index) => "Step ${index + 1}"),
//           complete: () {
//             //typically, you'd want to put logic that returns true when all the steps
//             //are completed here
//             return Future.value(true);
//           },
//         ),
//       ),
//     );
//   }
// }

// class StepIndicatorPageViewDemo extends StatefulWidget {
//   const StepIndicatorPageViewDemo({Key? key}) : super(key: key);

//   @override
//   _StepIndicatorPageViewDemoState createState() =>
//       _StepIndicatorPageViewDemoState();
// }

// class _StepIndicatorPageViewDemoState extends State<StepIndicatorPageViewDemo> {
//   final _pageController = PageController();
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: StepIndicatorPageView(
//         steps: STEPS,
//         indicatorPosition: IndicatorPosition.top,
//         labels: List<String>.generate(STEPS, (index) => "Step ${index + 1}"),
//         controller: _pageController,
//         complete: () {
//           //typically, you'd want to put logic that returns true when all the steps
//           //are completed here
//           return Future.value(true);
//         },
//         children: List<Widget>.generate(
//           STEPS,
//           (index) => Container(
//             color: Color(0xffffffff),
//             child: Center(
//               child: Text(
//                 "Page ${index + 1}",
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
