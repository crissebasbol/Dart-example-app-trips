import 'package:flutter/material.dart';
import 'package:tripss_applicatin/utils.dart';

class Review extends StatelessWidget {
  final String pathImage;
  final String name;
  final String details;
  final String comments;

  Review(this.pathImage, this.name, this.details, this.comments);

  @override
  Widget build(BuildContext context) {
    final userName = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(fontFamily: "Lato", fontSize: 17.0),
      ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato", fontSize: 13.0, color: Color(0xFFa3a5a7)),
      ),
    );

    final userStars = Utils.showStars(3.5);

    final userInfoStars = Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 20.0),
          child: Text(
            details,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontFamily: "Lato", fontSize: 13.0, color: Color(0xFFa3a5a7)),
          ),
        ),
        Utils.showStars(1, topMargin: 0.0)
      ],
    );

    final userComment = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        comments,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato", fontSize: 13.0, fontWeight: FontWeight.w900),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [userName, userInfoStars, userComment],
    );

    final photo = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
    );
    return Row(
      children: [photo, userDetails],
    );
  }
}
