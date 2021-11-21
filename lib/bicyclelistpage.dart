// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/bicycle.dart';
import 'package:flutter_application_1/bicyclebottombar.dart';
import 'package:flutter_application_1/selectedbicyclepage.dart';
import 'package:flutter_application_1/utils.dart';

import 'bicyclecard.dart';
import 'consts.dart';
import 'drawer.dart';

class BicycleListPage extends StatelessWidget {
  List<Bicycle> bicycles = Utils.getMockedBicycles();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Color(0xff72bb90),
        ),
      ),
      drawer: DrawerWidget(),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ListView.builder(
                    padding: EdgeInsets.only(bottom: 100),
                    itemCount: 12,
                    itemBuilder: (BuildContext ctx, int index) {
                      return BicycleCard(
                          bicycle: bicycles[index],
                          onCardClick: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SelectedBicyclePage(
                                          selectedBicycle: bicycles[index],
                                        )));
                          });
                    }),
              ),
            ],
          ),
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
