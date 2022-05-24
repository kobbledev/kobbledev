import 'dart:html';

import 'package:flutter/material.dart';
import 'package:kobble_dev/models/stepclass.dart';
import 'package:kobble_dev/design_tools/styles.dart';

import 'design_tools/colors.dart';
import 'widgets/header_text.dart';
import 'widgets/profile_icon.dart';

class EditCard extends StatefulWidget {
  const EditCard({Key? key}) : super(key: key);

  @override
  State<EditCard> createState() => _EditCardState();
}

class _EditCardState extends State<EditCard> {
  int _selectedIndex = 0;

  List<Widget> stepContainers = [
    Container(
      child: Text("step 1"),
    ),
    Container(
      child: Text("step 2"),
    ),
    Container(
      child: Text("step 3"),
    ),
    Container(
      child: Text("step 4"),
    ),
    Container(
      child: Text("step 5"),
    )
  ];
  final List<StepModel> _steps = [
    StepModel("step 1", false),
    StepModel("step 2", false),
    StepModel("step 3", false),
    StepModel("step 4", false),
    StepModel("step 5", false)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(150.0),
          child: AppBar(
            backgroundColor: Colors1.bg,
            title: const KobbleHeader(),
            actions: const [ProfileIcon()],
          ),
        ),
        body: Row(
          children: [
            Material(
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(43),
                  bottomRight: Radius.circular(43)),
              elevation: 5,
              child: Container(
                  decoration: const BoxDecoration(
                    color: Colors1.editBg,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(43),
                        bottomRight: Radius.circular(43)),
                  ),
                  width: 140,
                  child: LayoutBuilder(builder: ((context, constraints) {
                    return Flexible(
                      child: Center(
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: _steps.length,
                            itemBuilder: ((context, i) {
                              return InkWell(
                                onTap: () {
                                  setState(() {
                                    _steps[i].isSelected = true;
                                    i == 0
                                        ? _selectedIndex = 0
                                        : i == 1
                                            ? _selectedIndex = 1
                                            : i == 2
                                                ? _selectedIndex = 2
                                                : i == 3
                                                    ? _selectedIndex = 3
                                                    : i == 4
                                                        ? _selectedIndex = 4
                                                        : null;
                                  });
                                },
                                child: Padding(
                                  padding: i == 4
                                      ? const EdgeInsets.only(bottom: 1)
                                      : const EdgeInsets.only(bottom: 47.0),
                                  child: Column(
                                    children: [
                                      Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          color: _steps[i].isSelected
                                              ? Colors1.green
                                              : Colors1.iconBg,
                                          child: Container(
                                            alignment: Alignment.center,
                                            width: 60,
                                            height: 60,
                                            child: _steps[i].isSelected
                                                ? const Icon(
                                                    Icons.check,
                                                    size: 30,
                                                    color: Colors.white,
                                                  )
                                                : const Text(
                                                    '!',
                                                    style: TextStyle(
                                                        fontSize: 30,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black),
                                                    textAlign: TextAlign.center,
                                                  ),
                                          )),
                                      Text(
                                        _steps[i].label,
                                        style: const TextStyle(
                                            fontFamily: Fonts.nunito,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 17,
                                            color: Colors1.iconl),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            })),
                      ),
                    );
                  }))),
            ),
            Expanded(
              child: IndexedStack(
                index: _selectedIndex,
                children: const [
                  Text("step 1"),
                  Text("step 2"),
                  Text("step 3"),
                  Text("step 4"),
                  Text("step 5")
                ],
              ),
            )
          ],
        ));
  }

  InkWell stepIcon() {
    return InkWell(
      onTap: () {
        setState(() {
          if (_selectedIndex >= 0 && _selectedIndex < 4) {
            _selectedIndex += 1;
          }
        });
      },
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
        child: InkWell(
          child: Card(
            color: Colors1.iconBg,
            margin: EdgeInsets.zero,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            child: const Center(
              child: Text(
                "!",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
/*
Padding(
                  padding: const EdgeInsets.only(top: 150, bottom: 100),
                  child: ClipRRect(
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
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                // if (_steps == 0) {
                                //   _steps = _steps + 1;
                                // } else {
                                //   _steps = _steps - 1;
                                // }
                              });
                            },
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30)),
                              child: InkWell(
                                child: Card(
                                  color: Colors1.iconBg,
                                  margin: EdgeInsets.zero,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)),
                                  child: const Center(
                                    child: Text(
                                      "!",
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                  Padding(
                  padding: const EdgeInsets.only(top: 73),
                  child: Row(
                    children: [
                      Container(
                        width: 447,
                        child: Text('something'),
                      ),
                      Container(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: 140,
                            height: 929,
                            child: TabBar(
                                isScrollable: false,
                                controller: _tabController,
                                indicatorColor: Colors1.green,
                                indicatorWeight: 5,
                                tabs: [
                                  Tab(
                                      child: Column(
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                            Icons.home_mini_outlined),
                                      ),
                                      const Text("Step 01")
                                    ],
                                  )),
                                  Tab(
                                      child: Column(
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                            Icons.home_mini_outlined),
                                      ),
                                      const Text("Step 02")
                                    ],
                                  )),
                                ]),
                          ))
                    ],
                  ),
                )
              
 */
