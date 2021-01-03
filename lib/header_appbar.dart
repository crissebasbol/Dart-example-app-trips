import "package:flutter/material.dart";
import 'package:tripss_applicatin/card_image_list.dart';
import 'package:tripss_applicatin/gradient_back.dart';

class HeaderAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [GradientBack("Bienvenido"), CardImageList()],
    );
  }
}
