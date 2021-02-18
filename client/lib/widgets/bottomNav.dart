import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

//--  This widget allow us to have a reusable bottom navbar across different screens  --//

class BottomNav extends StatefulWidget {
  final int ind;

  BottomNav({
    Key key,
    @required this.ind,
  }) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int indexx;
  // int ind;
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      color: Colors.yellow[800],
      backgroundColor: Colors.white,
      buttonBackgroundColor: Colors.yellow[800],
      height: 50,
      items: <Widget>[
        Icon(
          Icons.home,
          size: 30,
          color: Colors.white,
        ),
        Icon(
          Icons.list,
          size: 30,
          color: Colors.white,
        ),
        Icon(
          Icons.add_shopping_cart_rounded,
          size: 30,
          color: Colors.white,
        ),
      ],
      animationDuration: Duration(milliseconds: 350),
      index: widget.ind,
      onTap: (index) {
//-- here we'r specifying the route of the screen depending on the choice of the user  --//
        if (index == 0) {
          //Home Screen

          Navigator.of(context).pushNamed('/');
        }
        if (index == 1) {
          //Menu Screen

          Navigator.of(context)
              .pushNamed('/menu', arguments: 'anything you want to pass');
        }
        if (index == 2) {
          //cart Screen
          Navigator.of(context)
              .pushNamed('/cart', arguments: 'anything you want to pass');
        }
      },
    );
  }
}
