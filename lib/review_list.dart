import "package:flutter/material.dart";
import 'package:tripss_applicatin/review.dart';

class ReviewList extends StatelessWidget {
  final String pathImage = "assets/images/people.jpg";
  final String name = "Varuna Yasas";
  final String details = "1 review 5 photos";
  final String comments = "There is an amazing place in Sri Lanka";
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Review(pathImage, name, details, comments),
        Review(pathImage, name, details, comments),
        Review(pathImage, name, details, comments),
        Review(pathImage, name, details, comments),
      ],
    );
  }
}
