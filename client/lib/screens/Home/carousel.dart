import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/* this widget is to diplay a carousel of images on the Home Page
           to inform user about our options for patties */

class ImageCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Carousel(
        boxFit: BoxFit.fill,
        images: [
          AssetImage('assets/test.png'),
          AssetImage('assets/test4.jpg'),
          AssetImage('assets/test3.png'),
        ],
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        // showIndicator: false,
        dotSize: 6,
        showIndicator: false,
        dotBgColor: Colors.transparent);
  }
}
