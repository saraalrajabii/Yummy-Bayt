import 'package:flutter/material.dart';

class IAppBar extends PreferredSize {
  // final Widget child;
  // final double height;
  // IAppBar({
  //   // @required this.height = kToolbarHeight,
  //   // // this.child,
  // });

  @override
  Size get preferredSize => Size.fromHeight(55);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // Here we take the value from the MyHomePage object that was created by
      // the App.build method, and use it to set our appbar title.
      title: Text("Yummy Bayt",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              letterSpacing: 2,
              color: Colors.white,
              fontFamily: 'BungeeInline')),
      centerTitle: true,
      backgroundColor: Colors.yellow[800],
    );
  }
}
