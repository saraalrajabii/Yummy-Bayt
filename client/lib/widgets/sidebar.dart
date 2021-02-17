import 'package:flutter/material.dart';

class Sidenav extends StatelessWidget {
  final Function setIndex;
  final int selectedIndex;

  Sidenav(this.selectedIndex, this.setIndex);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            height: 150,
            child: DrawerHeader(
                child: Container(
                    child: Column(children: <Widget>[
                  Image(
                    image: AssetImage('assets/PatDrawer.png'),
                    height: 70,
                    width: 200,
                  ),
                  Text('YUMMY BAYT',
                      style: TextStyle(
                          color: Colors.yellow[800],
                          fontSize: 25,
                          letterSpacing: 4,
                          fontFamily: 'Lalezar'),
                      textAlign: TextAlign.center),
                ])),
                decoration: BoxDecoration(color: Colors.white),
                padding: const EdgeInsets.fromLTRB(16.0, 5.0, 60.0, 8.0)),
          ),
          // Divider(color: Colors.grey.shade400),
          _navItem(context, Icons.account_circle, 'Profile', onTap: () {
            _navItemClicked(context, 0);
          }, selected: selectedIndex == 0),
          Divider(color: Colors.grey.shade400),
          _navItem(context, Icons.info, 'About us ', onTap: () {
            _navItemClicked(context, 1);
          }, selected: selectedIndex == 1),
          _navItem(context, Icons.perm_phone_msg, 'Contact us', onTap: () {
            _navItemClicked(context, 2);
          }, selected: selectedIndex == 2),
          _navItem(context, Icons.local_offer, 'Promotions', onTap: () {
            _navItemClicked(context, 3);
            Navigator.of(context).pushNamed(
              '/',
              arguments: 'Hello there from the first page!',
            );
          }, selected: selectedIndex == 3),
        ],
      ),
    );
  }

  _navItem(BuildContext context, IconData icon, String text,
          {Text suffix, Function onTap, bool selected = false}) =>
      Container(
        height: selected ? 60 : 60,
        color: selected ? Colors.yellow[800] : Colors.transparent,
        child: ListTile(
          leading: Icon(icon,
              size: 30, color: selected ? Colors.white : Colors.black),
          trailing: suffix,
          title: Text(text,
              style: TextStyle(
                  fontSize: 18, color: selected ? Colors.white : Colors.black)),
          selected: selected,
          onTap: onTap,
        ),
      );

  _navItemClicked(BuildContext context, int index) {
    setIndex(index);
    Navigator.of(context).pop();
  }
}
