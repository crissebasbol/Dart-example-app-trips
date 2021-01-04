import "package:flutter/material.dart";

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  bool btnPressed = false;

  void onPressedFav() {
    setState(() {
      btnPressed = !btnPressed;
    });
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text("Favorito"),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(btnPressed ? Icons.favorite_border : Icons.favorite),
    );
  }
}
