// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/bicycle.dart';

import 'drawer.dart';

class SelectedBicyclePage extends StatefulWidget {
  Bicycle selectedBicycle;

  SelectedBicyclePage({required this.selectedBicycle});

  @override
  SelectedBicyclePageState createState() => SelectedBicyclePageState();
}

class SelectedBicyclePageState extends State<SelectedBicyclePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)),
              child: Stack(
                children: [
                  Container(
                    height: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(widget.selectedBicycle.posterPath),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  AppBar(
                    backgroundColor: Colors.transparent,
                    iconTheme: IconThemeData(
                      color: Colors.black,
                    ),
                    elevation: 0.0,
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 30, top: 20),
                        child: Text(
                          widget.selectedBicycle.name,
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 30, top: 20),
                  child: Row(
                    children: [
                      Icon(Icons.star, color: Color(0xff72bb90)),
                      SizedBox(width: 8),
                      Text(
                        widget.selectedBicycle.rating.toString(),
                        style: TextStyle(fontWeight: FontWeight.normal),
                      ),
                      Text(
                        " (" +
                            widget.selectedBicycle.ratingCount.toString() +
                            " reviews)",
                        style: TextStyle(fontWeight: FontWeight.normal),
                      ),
                      Text("  ${String.fromCharCode(0x00B7)}  "),
                      Text(widget.selectedBicycle.adress),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: Colors.grey[800],
              height: 20,
              thickness: .5,
              indent: 30,
              endIndent: 30,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 30, top: 15),
                child: Column(
                  children: [
                    Text(
                      "Professional Bicycle  ${String.fromCharCode(0x00B7)} Bicycle Owner: " +
                          " " +
                          widget.selectedBicycle.owner,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: Colors.grey[800],
              height: 20,
              thickness: .5,
              indent: 30,
              endIndent: 30,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 30, top: 15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.pedal_bike_sharp, color: Colors.black),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Professional Equipments",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Text(
                                  "Uniquely designed for smoot & comfortable rides"),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Icon(Icons.location_on, color: Colors.black),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Easy Location ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Text("Find your dream bicycle in few minutes"),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Icon(Icons.attach_money, color: Colors.black),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Fair Price",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Text(
                                  "Most of the users found this renting fairly cheap"),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Icon(Icons.handyman, color: Colors.black),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Weekly Maintenance",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Text("Periodically oiled components"),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Divider(
                      color: Colors.grey[800],
                      height: 20,
                      thickness: .5,
                      indent: 30,
                      endIndent: 30,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20.0, left: 5.0),
          child: FloatingActionButton.extended(
            extendedPadding: const EdgeInsets.all(60),
            onPressed: () {},
            backgroundColor: Color(0xff72bb90),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(18.0)),
            ),
            label: Text(
              "RENT",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0),
            ),
            elevation: 12.0,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
