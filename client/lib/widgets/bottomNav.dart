import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

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
  int index;
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
        if (index == 0) {
          Navigator.of(context).pushNamed(
            '/',
          );
        }
        if (index == 1) {
          Navigator.of(context).pushNamed(
            '/menu',
            arguments: 'anything you want to pass',
          );
        }
        if (index == 2) {
          Navigator.of(context).pushNamed(
            '/cart',
            arguments: 'anything you want to pass',
          );
        }

        debugPrint("current $widget.ind");
      },
    );
  }
}
