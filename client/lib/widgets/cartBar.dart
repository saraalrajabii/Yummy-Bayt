import 'package:flutter/material.dart';

class CartBar extends PreferredSize {
  @override
  Size get preferredSize => Size.fromHeight(55);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // Here we take the value from the MyHomePage object that was created by
      // the App.build method, and use it to set our appbar title.
      title: Text("Cart ",
          style: TextStyle(
              // fontWeight: FontWeight.bold,
              fontSize: 25,
              letterSpacing: 4,
              color: Colors.white,
              fontFamily: 'Lalezar')),
      centerTitle: true,
      backgroundColor: Colors.yellow[800],
    );
  }
}
