import 'package:flutter/material.dart';

// -- This widget allows us to have a  reusable appBar across different screens  --//

class IAppBar extends PreferredSize {
  @override
  Size get preferredSize => Size.fromHeight(55);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("YUMMY BAYT",
          style: TextStyle(
              fontSize: 25,
              letterSpacing: 4,
              color: Colors.white,
              fontFamily: 'Lalezar')),
      centerTitle: true,
      backgroundColor: Colors.yellow[800],
    );
  }
}
