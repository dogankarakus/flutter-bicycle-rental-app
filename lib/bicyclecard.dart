import 'package:flutter/material.dart';
import 'package:flutter_application_1/bicycle.dart';
import 'bicycle.dart';
import 'consts.dart';

class BicycleCard extends StatelessWidget {
  Bicycle bicycle;
  Function onCardClick;
  BicycleCard({required this.bicycle, required this.onCardClick});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        height: 240,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.0)),
            elevation: 20.0,
            child: Stack(
              children: [
                Ink.image(
                  image: NetworkImage(bicycle.posterPath),
                  child: InkWell(
                    onTap: () {
                      onCardClick();
                    },
                  ),
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Text(
                          this.bicycle.name,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
