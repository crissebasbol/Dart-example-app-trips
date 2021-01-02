import 'dart:ffi';

import 'package:flutter/material.dart';

class DesciptionPlace extends StatelessWidget {
  String namePlace;
  double stars;
  String descriptionPlace;

  DesciptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    final titleStars = Row(
      children: [
        Container(
          margin: EdgeInsets.only(top: 320.0, left: 20.0, right: 20.0),
          child: Text(
            namePlace,
            style: TextStyle(
                fontFamily: "Lato",
                fontSize: 30.0,
                fontWeight: FontWeight.w900),
            textAlign: TextAlign.left,
          ),
        ),
        this.showStars(stars)
      ],
    );

    final description = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      child: Text(
        descriptionPlace,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF56575a)),
      ),
    );

    final toReturn = Column(
      children: [titleStars, description],
    );

    return toReturn;
  }

  Widget star(IconData icon) {
    return Container(
      margin: EdgeInsets.only(top: 323.0, right: 3.0),
      child: Icon(
        icon,
        color: Color(0xFFf2C611),
      ),
    );
  }

  Widget showStars(double numberStars) {
    List<Widget> stars = [];
    for (var i = 0; i < 5; i++) {
      if (numberStars >= 1) {
        stars.add(this.star(Icons.star));
      } else if (numberStars > 0.3) {
        stars.add(this.star(Icons.star_half));
      } else {
        stars.add(this.star(Icons.star_border));
      }
      numberStars--;
    }

    return Row(children: stars);
  }
}
