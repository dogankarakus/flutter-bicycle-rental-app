// ignore_for_file: prefer_const_declarations, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/consts.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color(0xff72bb90),
        child: ListView(
          children: <Widget>[
            const SizedBox(height: 64),
            buildMenuItem(text: 'Profile', icon: Icons.people),
            const SizedBox(height: 16),
            buildMenuItem(text: 'Favourites', icon: Icons.favorite),
            const SizedBox(height: 16),
            buildMenuItem(text: 'My Trips', icon: Icons.location_pin),
            const SizedBox(height: 16),
            buildMenuItem(text: 'Notifications', icon: Icons.notifications),
            const SizedBox(height: 24),
            Divider(color: Colors.white),
            const SizedBox(height: 24),
            buildMenuItem(text: 'Settings', icon: Icons.settings),
            const SizedBox(height: 16),
            buildMenuItem(text: 'Logout', icon: Icons.logout),
          ],
        ),
      ),
    );
  }
}

Widget buildMenuItem({
  required String text,
  required IconData icon,
}) {
  final color = Colors.white;
  final hoverColor = Colors.grey;

  return ListTile(
    leading: Icon(icon, color: color),
    title: Text(text, style: TextStyle(color: color)),
    hoverColor: hoverColor,
    onTap: () {},
  );
}
