import 'package:flutter/material.dart';

class Utils {
  static Widget star(IconData icon, double topMargin, double rightMargin) {
    return Container(
      margin: EdgeInsets.only(top: topMargin, right: rightMargin),
      child: Icon(
        icon,
        color: Color(0xFFf2C611),
      ),
    );
  }

  static Widget showStars(double numberStars,
      {double topMargin = 323.0, double rightMargin = 3.0}) {
    List<Widget> stars = [];
    for (var i = 0; i < 5; i++) {
      if (numberStars >= 1) {
        stars.add(star(Icons.star, topMargin, rightMargin));
      } else if (numberStars > 0.3) {
        stars.add(star(Icons.star_half, topMargin, rightMargin));
      } else {
        stars.add(star(Icons.star_border, topMargin, rightMargin));
      }
      numberStars--;
    }

    return Row(children: stars);
  }
}
