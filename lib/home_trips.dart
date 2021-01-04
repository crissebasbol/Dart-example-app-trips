import "package:flutter/material.dart";
import 'package:tripss_applicatin/review_list.dart';
import 'description_place.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget {
  final String descriptionDummy =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque dictum diam ut molestie lobortis. Maecenas sed mollis felis. Phasellus egestas eleifend commodo. Suspendisse potenti. Vestibulum a sagittis nisl, quis tempus enim. Sed vitae lectus tincidunt, maximus nunc a, faucibus nulla. Aliquam euismod, eros at scelerisque mattis, diam lectus volutpat metus, sed sodales tortor odio ut nunc. Proin et elit pulvinar, pharetra elit eget, vestibulum erat. Ut ornare efficitur massa, in sodales neque tempus vitae.";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
            DesciptionPlace("Bahamas", 3.5, descriptionDummy),
            ReviewList()
          ],
        ),
        HeaderAppbar()
      ],
    );
  }
}
