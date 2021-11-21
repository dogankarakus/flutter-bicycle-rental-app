// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/bicycle.dart';
import 'package:flutter_application_1/bicyclelistpage.dart';
import 'package:flutter_application_1/selectedbicyclepage.dart';
import 'consts.dart';
import 'detailedPage.dart';
import 'utils.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: SplashScreen(duration: 3, goToPage: HomeScreen()),
    );
  }
}

class SplashScreen extends StatelessWidget {
  int duration = 0;
  Widget goToPage;

  SplashScreen({required this.duration, required this.goToPage});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: this.duration), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => this.goToPage));
    });
    return Scaffold(
      backgroundColor: Color(0xff72bb90),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Image.asset(
          "lib/assets/splashscreengif.gif",
          gaplessPlayback: true,
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: BicycleListPage(),
        backgroundColor: Colors.teal[100],
      ),
    );
  }
}
