// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/bicyclelistpage.dart';
import 'package:flutter_application_1/trips.dart';

class BicycleBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(30), topLeft: Radius.circular(30)),
        color: Color(0xff72bb90),
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            color: Colors.black.withOpacity(0.2),
            offset: Offset.zero,
          ),
        ],
      ),
      height: 60,
      padding: EdgeInsets.only(bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ClipOval(
            child: Material(
              color: Color(0xff72bb90),
              child: IconButton(
                icon: Icon(Icons.pedal_bike, color: Colors.white),
                onPressed: () {},
              ),
            ),
          ),
          ClipOval(
            child: Material(
              color: Color(0xff72bb90),
              child: IconButton(
                icon: Icon(Icons.pin_drop, color: Colors.white),
                onPressed: () {},
              ),
            ),
          ),
          ClipOval(
            child: Material(
              color: Color(0xff72bb90),
              child: IconButton(
                icon: Icon(Icons.settings, color: Colors.white),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
