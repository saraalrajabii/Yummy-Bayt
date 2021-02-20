import 'package:client/widgets/checkoutBar.dart';
import 'package:client/widgets/bottomNav.dart';
import 'package:flutter/material.dart';
import 'package:client/widgets/cartBar.dart';
import 'package:flutter/src/material/flat_button.dart';
import 'package:client/screens/Home/carousel.dart';
import 'package:client/screens/Checkout/checkout.dart';

class Cart extends StatefulWidget {
  Cart({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  int navIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CartBar(),
      backgroundColor: Colors.white,
      body: Container(
          // margin: EdgeInsets.all(250),
          child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondRoute()),
                );
              },
              child: Text(
                "Checkout ",
                style: TextStyle(fontSize: 30.0),
              ))),
      bottomNavigationBar: BottomNav(
        ind: 0,
      ),
    );
  }
}
