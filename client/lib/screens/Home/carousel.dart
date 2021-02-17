import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageCarousel extends StatelessWidget {
  // const ImageCarusel({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/test.png'),
          // AssetImage('assets/test5.png'),
          AssetImage('assets/test4.jpg'),
          AssetImage('assets/test3.png'),
          // AssetImage('assets/pattie2.jpg'),
          // AssetImage('assets/home.jpg'),
          // AssetImage('assets/pattie4.jpg'),
        ],
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        // showIndicator: false,
        dotSize: 6,
        showIndicator: false,
        dotBgColor: Colors.transparent);
  }
}
