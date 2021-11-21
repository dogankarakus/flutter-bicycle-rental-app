import 'package:flutter/material.dart';

import 'bicyclebottombar.dart';

class Trips extends StatelessWidget {
  const Trips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: BicycleBottomBar(),
          ),
        ],
      ),
    );
  }
}
