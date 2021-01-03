import "package:flutter/material.dart";
import 'package:tripss_applicatin/card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: [
          CardImage("assets/images/beach_palm.jpeg"),
          CardImage("assets/images/mountain.jpeg"),
          CardImage("assets/images/river.jpeg"),
        ],
      ),
    );
  }
}
