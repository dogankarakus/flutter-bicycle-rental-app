import 'package:flutter/material.dart';
import 'package:flutter_application_1/bicycle.dart';
import 'consts.dart';

class Utils {
  static List<Bicycle> getMockedBicycles() {
    return [
      Bicycle(texts[0], images[0], 35, 5.0, "Johanne", 7,
          "California, California, USA"),
      Bicycle(texts[1], images[1], 35, 4.9, "Jack", 7,
          "California, California, USA"),
      Bicycle(texts[2], images[2], 35, 4.9, "Leo", 7,
          "California, California, USA"),
      Bicycle(
          texts[3], images[3], 35, 4.7, "s", 7, "California, California, USA"),
      Bicycle(
          texts[4], images[4], 35, 4.4, "s", 3, "California, California, USA"),
      Bicycle(
          texts[5], images[5], 35, 4.3, "s", 4, "California, California, USA"),
      Bicycle(
          texts[6], images[6], 35, 4.3, "s", 1, "California, California, USA"),
      Bicycle(
          texts[7], images[7], 35, 4.1, "s", 39, "California, California, USA"),
      Bicycle(
          texts[8], images[8], 35, 3.9, "s", 18, "California, California, USA"),
      Bicycle(
          texts[9], images[9], 35, 3.7, "s", 12, "California, California, USA"),
      Bicycle(texts[10], images[10], 35, 3.7, "s", 7,
          "California, California, USA"),
      Bicycle(texts[11], images[11], 35, 3.7, "s", 7,
          "California, California, USA"),
    ];
  }
}
