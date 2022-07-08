/*
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:steps_indicator/steps_indicator.dart';
class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  State<Demo> createState() => _DemoState();
}
class _DemoState extends State<Demo> {
  int selectedStep = 0;
  int nbSteps = 5;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stepper"),
      ),
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          StepsIndicator(
            selectedStep: selectedStep,
            nbSteps: nbSteps,
            doneLineColor: Colors.green,
            doneStepColor: Colors.green,
            undoneLineColor: Colors.red,
            lineLength: screenWidth * 0.9,
            lineLengthCustomStep: [
              StepsIndicatorCustomLine(nbStep: 5, length: 105)
            ],
            enableLineAnimation: true,
            enableStepAnimation: true,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MaterialButton(
                color: Colors.red,
                onPressed: () {
                  if (selectedStep > 0) {
                    setState(() {
                      selectedStep--;
                    });
                  }
                },
                child: const Text('Prev'),
              ),
              MaterialButton(
                color: Colors.green,
                onPressed: () {
                  if (selectedStep < nbSteps) {
                    setState(() {
                      selectedStep++;
                    });
                  }
                },
                child: const Text('Next'),
              )
            ],
          )
        ],
      )),
    );
  }
}


*/






























import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'design_tools/colors.dart';
import 'package:progress_timeline/progress_timeline.dart';

class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  late ProgressTimeline screenProgress;

  List<SingleState> allStages = [
    SingleState(stateTitle: "Step 1"),
    SingleState(stateTitle: "Step 2"),
    SingleState(stateTitle: "Step 3"),
    SingleState(stateTitle: "Step 4"),
    SingleState(stateTitle: "Step 5"),
  ];
  @override
  void initState() {
    screenProgress = ProgressTimeline(
      connectorColor: Colors1.green,
      checkedIcon: const Icon(
        Icons.check_circle_outline,
        color: Colors1.green,
      ),
      uncheckedIcon: const Icon(
        Icons.check_circle_outline,
        color: Colors1.txtGrey,
      ),
      states: allStages,
      iconSize: 19,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            //add the widget
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 19),
              child: Container(
                child: screenProgress,
              ),
            ),
            Expanded(
                child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    screenProgress.gotoPreviousStage();
                  },
                  child: const Text("Prev"),
                ),
                const SizedBox(
                  height: 13,
                ),
                ElevatedButton(
                  onPressed: () {
                    screenProgress.gotoNextStage();
                  },
                  child: const Text("Next"),
                )
              ],
            )),
          ],
        ),
      ),
    );
  }
}
