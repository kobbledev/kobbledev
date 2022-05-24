import 'package:flutter/material.dart';

import '../design_tools/colors.dart';

class ProfileIcon extends StatelessWidget {
  const ProfileIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
            color: Colors1.hgrad2, style: BorderStyle.solid, width: 2.3),
      ),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person_outlined,
              color: Colors.white,
            )),
      ),
    );
  }
}
